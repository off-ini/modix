import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modix/constants.dart';
import 'package:modix/screens/home/ModelScreen.dart';
import 'package:modix/screens/home/components/body.dart';
import 'package:modix/size_config.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }

}

class HomeScreenState extends State<HomeScreen> {
  int currentIndex;

  var screens = [Body(), ModelScreen(), ModelScreen(), ModelScreen(),];

  @override
  void initState() { 
    super.initState();
    currentIndex = 0;
  }

  void changePage(int index)
  {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg", height: SizeConfig.defaultSize * 2,),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/scan.svg", height: SizeConfig.defaultSize * 2.4,),
            onPressed: () {},
          ),
          Center(
            child:Text("Scan", style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),)
          ),
          SizedBox(width: SizeConfig.defaultSize,)
        ],
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BubbleBottomBar(
        opacity: 0.2,
        backgroundColor: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
        currentIndex: currentIndex,
        hasNotch: true, 
        hasInk: true, 
        inkColor: Colors.black12,
        elevation: 6,
        onTap: changePage,
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
            backgroundColor: Colors.deepPurple, 
            icon: Icon(Icons.home, color: Colors.black,), 
            activeIcon: Icon(Icons.home, color: Colors.deepPurple,), 
            title: Text("Home")
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.deepPurple, 
            icon: Icon(Icons.list, color: Colors.black,), 
            activeIcon: Icon(Icons.list, color: Colors.deepPurple,), 
            title: Text("Models")
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.deepPurple, 
            icon: Icon(Icons.chat, color: Colors.black,), 
            activeIcon: Icon(Icons.chat, color: Colors.deepPurple,), 
            title: Text("Chat")
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.deepPurple, 
            icon: Icon(Icons.settings, color: Colors.black,), 
            activeIcon: Icon(Icons.settings, color: Colors.deepPurple,), 
            title: Text("Profil")
          )
        ],
      ),
    );
  }

}