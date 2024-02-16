import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_project/darkMode/dark_theme_provider.dart';
import 'package:islami_project/sura_model.dart';
import 'package:islami_project/style.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "SuraDetails";

  const SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var suraModel = ModalRoute.of(context)!.settings.arguments as SuraModel;

    if (verses.isEmpty) {
      readSuraFile(suraModel.index);
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: Provider.of<ThemeProvider>(context).isDarkMode
                  ? MyThemeData.darkBgProvider
                  : MyThemeData.lightBgProvider,
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Theme.of(context).iconTheme.color,
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            suraModel.name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: verses.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Provider.of<ThemeProvider>(context).isDarkMode
                      ? const Color(0xff141A2E)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    thickness: 1,
                    endIndent: 50,
                    indent: 50,
                    color: Theme.of(context).dividerTheme.color,
                  ),
                  itemBuilder: (context, index) {
                    return Text(
                      "${verses[index]} (${index + 1})",
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.bodyMedium,
                    );
                  },
                  itemCount: verses.length,
                ),
              ),
      ),
    );
  }

  void readSuraFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");

    List<String> suraLines = sura.split("\n");
    verses = suraLines;
    setState(() {});
  }
}
