import 'package:flutter/material.dart';
import 'package:islami_project/darkMode/dark_theme_provider.dart';
import 'package:islami_project/hadeth_model.dart';
import 'package:islami_project/style.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HadethDetails extends StatefulWidget {
  static const String routeName = "HadethDetails";

  const HadethDetails({super.key});

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
  @override
  Widget build(BuildContext context) {
    var hadethModel = ModalRoute.of(context)!.settings.arguments as HadethModel;
    List<String> content = hadethModel.content;
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
            AppLocalizations.of(context)!.app_name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Provider.of<ThemeProvider>(context).isDarkMode
                ? const Color(0xff141A2E)
                : Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Text(hadethModel.title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge),
              Divider(
                thickness: 3,
                endIndent: 50,
                indent: 50,
                color: Theme.of(context).dividerTheme.color,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Text(
                      content[index],
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.bodyMedium,
                    );
                  },
                  itemCount: hadethModel.content.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
