import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_application_1/screens/feedback.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
// import 'package:flutter_application_1/screens/kritik.dart';
import 'package:flutter_application_1/screens/signin_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// class HomeBottomBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return CurvedNavigationBar(
//       backgroundColor: Colors.transparent,
//       index: 2,
//       items: [
//         Icon(Icons.person_outline, size: 30),
//         // Navigator.push(
//         //   context,
//         //   MaterialPageRoute(builder: (context)=> ProfilePage())),
//          //index 0
//         Icon(Icons.favorite_outline, size: 30), //index 1
//         Icon(
//           Icons.home,
//           size: 30,
//           color: Color(0xff8f294f),
//         ), //index 2
//         Icon(Icons.location_on_outlined, size: 30), //index 3
//         Icon(Icons.logout_rounded, size: 30), //index 4
//       ],
//     );
//   }
// }
class HomeBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GNav(
      gap: 8,
      padding: EdgeInsets.all(16),
      backgroundColor: Colors.transparent,
      color: Color(0xFF00212C),
      activeColor: Color(0xFF00212C),
      // tabBackgroundColor: Colors.grey.shade800,
      tabs: [
        GButton(
          icon: Icons.home,
          iconSize: 30,
          text: 'Home',
          onPressed: () {
            Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
          },
          iconColor: Color(0xFF00212C),
        ),
        // GButton(
        //   icon: Icons.favorite,
        //   iconSize: 30,
        //   text: 'Favorite',
        //   iconColor: Color(0xFF00212C),
        // ),
        GButton(
          icon: Icons.person,
          iconSize: 30,
          text: 'Profile',
          onPressed: () {
            Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(),
                        ));
          },
          iconColor: Color(0xFF00212C),
        ),
        GButton(
          icon: Icons.email,
          iconSize: 30,
          text: 'FAQ',
          onPressed: () {
            Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatPage(),
                        ));
          },
          iconColor: Color(0xFF00212C),
          // iconColor: Color(0xff8f294f),
        ),
        GButton(
          icon: Icons.logout_rounded,
          iconSize: 30,
          text: 'Log Out',
          onPressed: () {
            Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInScreen(),
                        ));
          },
          iconColor: Color(0xFF00212C),
          // iconColor: Color(0xff8f294f),
        ),
      ],
    );
  }
}