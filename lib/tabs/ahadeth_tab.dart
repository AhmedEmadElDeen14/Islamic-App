import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_project/hadeth_details.dart';
import 'package:islami_project/hadeth_model.dart';

class AhadethTab extends StatefulWidget {
  const AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allAhadeth = [];
  List<String> ahadethTitle = [];

  @override
  void initState() {
    super.initState();
    loadHadeth();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          "assets/images/hadeth_logo.png",
          width: 205,
          height: 227,
        ),
        Divider(
          thickness: 3,
          color: Theme.of(context).dividerTheme.color,
        ),
        Text(
          "الأحاديث",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Divider(
          thickness: 3,
          color: Theme.of(context).dividerTheme.color,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              thickness: 1,
              color: Theme.of(context).dividerTheme.color,
              endIndent: 40,
              indent: 40,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadethDetails.routeName,
                      arguments: allAhadeth[index]);
                },
                child: Center(
                  child: Text(
                    allAhadeth[index].title,
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            },
            itemCount: allAhadeth.length,
          ),
        )
      ],
    );
  }

  Future<void> loadHadeth() async {
    var ahadeth = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> ahadethList = ahadeth.split("#");

    for (int i = 0; i < ahadethList.length; i++) {
      List<String> hadethLines = ahadethList[i].trim().split("\n");
      String hadethTitle = hadethLines[0];
      ahadethTitle.add(hadethTitle);
      hadethLines.removeAt(0);
      List<String> hadethContent = hadethLines;

      HadethModel hadethModel =
          HadethModel(title: hadethTitle, content: hadethContent);
      allAhadeth.add(hadethModel);
      setState(() {});
    }
  }
}
