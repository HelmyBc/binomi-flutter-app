import 'package:binomi/config/palette.dart';
import 'package:binomi/data/data.dart';
import 'package:binomi/models/models.dart';
import 'package:binomi/screens/people_screen.dart';
import 'package:binomi/widgets/rooms.dart';
import 'package:binomi/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//         backgroundColor: Color(0xFFF3F5F7),
//         child: CustomScrollView(
//           slivers: [
//             const CupertinoSliverNavigationBar(
//               // leading: Text(
//               //   "menu",
//               //   // style: TextStyle(color: CupertinoColors.activeBlue),
//               // ),
//               stretch: true,

//               trailing: CupertinoButton(
//                   child: Icon(
//                     CupertinoIcons.settings,
//                     color: CupertinoColors.black,
//                   ),
//                   onPressed: null),
//               largeTitle: Text(
//                 "Binomi",
//                 // style: TextStyle(
//                 //   // color: Palette.facebookBlue,
//                 //   fontSize: 40.0,
//                 // ),
//               ),
//             ),
//             SliverPadding(
//                 padding: EdgeInsets.all(10.0),
//                 sliver: CreatePostContainer(currentUser: currentUser)),
//             const SizedBox(
//               height: 10.0,
//             ),
//             SliverList(
//               delegate: SliverChildBuilderDelegate((context, index) {
//                 final Post post = posts[index];
//                 return PostContainer(post: post);
//               }, childCount: posts.length),
//               // child: Column(
//               //   children: [
//               // CreatePostContainer(currentUser: currentUser),
//               // const SizedBox(
//               //   height: 10.0,
//               // ),
//               //     Container(
//               //       height: 120.0,
//               //       color: Colors.red,
//               //     ),

//               //   ],
//               // ),
//             ),
//           ],
//         ));
//   }
// }

//  navigationBar: CupertinoNavigationBar(
//         backgroundColor: CupertinoColors.white,
//         leading: Icon(Icons.menu),
//         middle: Text("Binomi"),
//         trailing: Icon(CupertinoIcons.settings),
//       ),
class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.scaffold,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              // ignore: prefer_const_constructors
              title: Text(
                'Binomi',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2,
                ),
              ),
              centerTitle: false,
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
                // ElevatedButton(
                // onPressed: () {},
                // child: const Icon(
                //   Icons.search,
                //   color: Colors.grey,
                // ),
                //   style: ButtonStyle(
                //     shadowColor: null,
                //     shape: MaterialStateProperty.all(const CircleBorder()),
                //     padding:
                //         MaterialStateProperty.all(const EdgeInsets.all(5.0)),
                //     backgroundColor: MaterialStateProperty.all(
                //         Colors.white), // <-- Button color
                //     overlayColor:
                //         MaterialStateProperty.resolveWith<Color?>((states) {
                //       if (states.contains(MaterialState.pressed))
                //         return Colors.blue; // <-- Splash color
                //     }),
                //   ),
                // ),
                // ElevatedButton(

                // CircleButton(
                //     icon: Icons.search,
                //     iconSize: 30.0,
                //     // ignore: avoid_print
                //     onPressed: () => null),
                // CircleButton(
                //   icon: MdiIcons.facebookMessenger,
                //   iconSize: 30.0,
                //   // ignore: avoid_print
                //   onPressed: () => print('Messenger'),
                // ),
              ],
              // systemOverlayStyle: SystemUiOverlayStyle.dark,
            ),
            SliverToBoxAdapter(
              child: CreatePostContainer(currentUser: currentUser),
            ),
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
              sliver: SliverToBoxAdapter(
                child: Rooms(onlineUsers: onlineUsers),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final Post post = posts[index];
                  return PostContainer(post: post);
                },
                childCount: posts.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
