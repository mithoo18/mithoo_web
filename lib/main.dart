import 'package:flutter/material.dart';
import 'package:mithoo_web/pages/home_page.dart';
import 'package:mithoo_web/widgets/theme_inherited_widget.dart';
import 'config/themes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: false,
      child: Devadroid(),
    );
  }
}

class Devadroid extends StatelessWidget {
  const Devadroid({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Devanshu Gupta',
      theme: ThemeSwitcher.of(context).isDarkModeOn
          ? darkTheme(context)
          : lightTheme(context),
      home: HomePage(),
    );
  }
}
