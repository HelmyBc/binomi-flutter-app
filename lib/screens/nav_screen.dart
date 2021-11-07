import 'package:binomi/screens/screens.dart';
import 'package:binomi/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    PeopleScreen(),
    CurrentProfileScreen(),
    Scaffold(),
    Scaffold(),
  ];
  int _selectedIndex = 0;
  final List<IconData> _icons = [
    Icons.home,
    MdiIcons.accountGroupOutline,
    MdiIcons.accountCircleOutline,
    MdiIcons.bellOutline,
    Icons.menu
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        body: TabBarView(
          // index: _selectedIndex,
          children: _screens,
        ),
        ////Ican use indexedStack instead it maintain screens positions and avoid rendering
        // body: TabBarView(
        //   // physics: const NeverScrollableScrollPhysics(),
        //   children: _screens,
        // ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: CustomTabBar(
            icons: _icons,
            selectedIndex: _selectedIndex,
            onTap: (index) => setState(() => _selectedIndex = index),
          ),
        ),
      ),
    );
  }
}
