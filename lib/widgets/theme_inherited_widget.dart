import 'package:flutter/cupertino.dart';

class TemeSwitcher extends InheritedWidget {
  final _ThemeSwitcherWidgetState data;

  const TemeSwitcher({
    Key key,
    @required this.data,
    @required Widget child,
    }) : assert(child! = null),
    super(key: key,child: child);

    static _ThemeSwitcherWidgetState of(BuildContext context) { //This method returns the current state of the ThemeSwitcherWidget. This will be used down the tree
    return context.dependOnInheritedWidgetOfExactType<ThemeSwitcher>().data;
  }  

  @override
  bool updateShouldNotify(ThemeSwitcher old){
    return this != old;
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}