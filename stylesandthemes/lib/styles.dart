import 'package:flutter/material.dart';
import 'package:stylesandthemes/ui_helper/util.dart';

class StylesAndThemes extends StatelessWidget {
  const StylesAndThemes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Theme and Styles"),
        ),
        body: Center(
          child: Container(
            color: Colors.grey,
            height: 400,
            width: 400,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Gloomy Monday",
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    "Super Saturday!!",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium,
                  ),
                  Text(
                    "Epic Sunday!!",
                    style: myTextStyle21B(),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
