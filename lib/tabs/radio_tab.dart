import 'package:flutter/material.dart';
import 'package:islami_project/darkMode/dark_theme_provider.dart';
import 'package:provider/provider.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Image(image: AssetImage("assets/images/radio_image.png")),
        const SizedBox(
          height: 50,
        ),
        Text(
          "إذاعة القرآن الكريم",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {},
              child: Icon(
                Icons.skip_previous,
                color: Provider.of<ThemeProvider>(context).isDarkMode
                    ? const Color(0xffFACC1D)
                    : const Color(0xffB7935F),
                size: 50,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Icon(
                Icons.play_arrow,
                color: Provider.of<ThemeProvider>(context).isDarkMode
                    ? const Color(0xffFACC1D)
                    : const Color(0xffB7935F),
                size: 60,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Icon(
                Icons.skip_next,
                color: Provider.of<ThemeProvider>(context).isDarkMode
                    ? const Color(0xffFACC1D)
                    : const Color(0xffB7935F),
                size: 50,
              ),
            ),
          ],
        )
      ],
    );
  }
}
