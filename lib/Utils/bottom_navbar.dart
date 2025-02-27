import 'package:blumo_app/Screens/Buyer%20Screens/buyer_dashboard_screen.dart';
import 'package:blumo_app/Screens/Buyer%20Screens/main_dashboard_screen.dart';
import 'package:blumo_app/Screens/chat_screen.dart';
import 'package:blumo_app/Utils/detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:blumo_app/Screens/Seller%20Screens/owner_dashboard_screen.dart';
import 'package:blumo_app/Screens/Questions/question_screen.dart';
import '../Screens/home_screen.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key, required this.userType}) : super(key: key);

  final String userType;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller = PersistentTabController(initialIndex: 0);

    return PersistentTabView(
      onItemSelected: (val) {
        setState(() {
          index = val;
        });
      },
      context,
      controller: _controller,
      screens: _buildScreens(widget.userType),
      items: [
        PersistentBottomNavBarItem(
          icon:Icon(Icons.map, color: index == 0 ? Colors.black: Color(0xff1D6F9D),size: 35),
          activeColorPrimary: Color(0xff1D6F9D),
          inactiveColorPrimary: CupertinoColors.black,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.chat_outlined, color: index == 1 ?  Colors.black:Color(0xff1D6F9D),size: 35),
          activeColorPrimary: Color(0xff1D6F9D),
          inactiveColorPrimary: CupertinoColors.black,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.home_filled, color: index == 2 ? Color(0xff1D6F9D) : Colors.white,size: 35,),
          activeColorPrimary: Color(0xff1D6F9D),
          inactiveColorPrimary: Colors.white,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.bar_chart, color: index == 3 ?  Colors.black:Color(0xff1D6F9D),size: 35),
          activeColorPrimary: Color(0xff1D6F9D),
          inactiveColorPrimary: Color(0xff1D6F9D),
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.person, color: index == 4 ?  Colors.black:Color(0xff1D6F9D)),
          activeColorPrimary: Color(0xff1D6F9D),
          inactiveColorPrimary: CupertinoColors.black,
        ),
      ],
      confineInSafeArea: true,
      backgroundColor: Color(0xffffffff),
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.black,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style15,
    );
  }

  List<Widget> _buildScreens(String userType) {
    if (userType == 'buyer') {
      return [
        HomeScreen(),
        ChatScreen(),
        MainDashboardScreen(),
        BuyerDashboard(),
        OwnerDashboard()
        // Example screen, replace it with the actual notifications screen
      ];
    } else if (userType == 'seller') {
      return [
        HomeScreen(),
        ChatScreen(),
        DetailScreen(),
        OwnerDashboard(),
        BuyerDashboard(),
        // Example ,screen, replace it with the actual notifications screen
      ];
    } else {
      return []; // Return an empty list or handle the case where userType is neither buyer nor seller
    }
  }
}
