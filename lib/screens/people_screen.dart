import 'package:binomi/config/palette.dart';
import 'package:binomi/data/data.dart';
import 'package:binomi/models/models.dart';
import 'package:binomi/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PeopleScreen extends StatelessWidget {
  const PeopleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.scaffold,
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
            leading: GestureDetector(
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                iconSize: 30.0,
                color: Colors.black,
                onPressed: () => Navigator.pop(context),
              ),
            ),
            backgroundColor: Colors.white,
            // ignore: prefer_const_constructors
            title: Text(
              'People',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
            centerTitle: false,
            pinned: true,
            floating: true,
            actions: [
              ClipOval(
                child: Material(
                  color: Colors.transparent, // Button color
                  child: InkWell(
                    splashColor: Colors.grey[200], // Splash color
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const PeopleScreen(),
                      ),
                    ),
                    child: const SizedBox(
                        width: 56,
                        height: 56,
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                        )),
                  ),
                ),
              ),
              ClipOval(
                child: Material(
                  color: Colors.transparent, // Button color
                  child: InkWell(
                    splashColor: Colors.grey[200], // Splash color
                    onTap: () => null,
                    child: const SizedBox(
                        width: 56,
                        height: 56,
                        child: Icon(
                          MdiIcons.facebookMessenger,
                          color: Colors.black,
                        )),
                  ),
                ),
              ),
            ],
            // systemOverlayStyle: SystemUiOverlayStyle.dark,
          ),
          // SliverToBoxAdapter(
          //   child: CreatePostContainer(currentUser: currentUser),
          // ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Rooms(onlineUsers: onlineUsers),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final User user = onlineUsers[index];
                return UserCardContainer(user: user);
              },
              childCount: onlineUsers.length,
            ),
          ),
        ],
      ),
    );
  }
}
