import 'package:binomi/config/palette.dart';
import 'package:binomi/data/data.dart';
import 'package:binomi/widgets/appbar_widget.dart';
import 'package:binomi/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'screens.dart';

class CurrentProfileScreen extends StatefulWidget {
  const CurrentProfileScreen({Key? key}) : super(key: key);

  @override
  _CurrentProfileScreenState createState() => _CurrentProfileScreenState();
}

class _CurrentProfileScreenState extends State<CurrentProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final user = currentUser;
    return Scaffold(
      backgroundColor: Palette.scaffold,
      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            letterSpacing: -1.2,
          ),
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark),
        leading: GestureDetector(
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            iconSize: 30.0,
            color: Colors.black,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => NavScreen(),
              ),
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Palette.mainWhite,
        actions: [
          // CircleButton(
          //   icon: Icons.done,
          //   iconColor: Palette.mainBlack,
          //   toScreen: const NavScreen(),
          // )
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
            decoration: BoxDecoration(
              color: Palette.facebookBlue,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const EditProfileScreen())),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: const [
                      Icon(
                        Icons.edit,
                        size: 20.0,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        "Modifier",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            ProfileImage(
              imageUrl: currentUser.imageUrl,
              onClicked: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EditProfileScreen()));
              },
            ),
            const SizedBox(
              height: 24.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  currentUser.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text("Etudiant à : ${currentUser.university}"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
