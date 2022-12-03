import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;
  List<Widget> tabWidgets = <Widget>[AboutTab(), BlogTab(), ProjectsTab()];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar : AppBar(
            actions: <Widget>[
              IconButton(
                onPressed: () => ThemeSwitcher.of(context).switchDarkMode(),
                icon: ThemeSwitcher.of(context).isDarkModeOn?Icon(Icons.web_sunny): Image.asset(Assets.moon,height: 20,width: 20,),)
            ],
          ),
          body: Center(
            child: tabWidgets.elementAt(_selectIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'About'
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.chrome_reader_mode),
                label: 'Blog'),

              BottomNavigationBarItem(
                icon: Icon(Icons.work),
                label : 'Projects'
                )
            ]
            currentIndex: _selectIndex,
            onTap: (index) => setState(() => _selectIndex = index),
            selectedItemColor: Theme.of(context).colorScheme.secondary,            
            ),
    );
  }
}
