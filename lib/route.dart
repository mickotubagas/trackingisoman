import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:trackingisoman/card.dart';
import 'drawer.dart';
import 'card.dart';
import 'map.dart';

class MainRoute extends StatefulWidget {
  const MainRoute({Key? key}) : super(key: key);

  @override
  State<MainRoute> createState() => _MainRouteState();
}

class _MainRouteState extends State<MainRoute> {

  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 1;
  }

  void changePage(int? index) {
    setState(() {
      currentIndex = index!;
    });
  }

  Widget _getPage() {
    if(currentIndex == 0) {
      return const CurrentLocationScreen();
    } return const CardRegional();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0,
      iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: _getPage(),
      bottomNavigationBar: BubbleBottomBar(
        opacity: .2,
        currentIndex: currentIndex,
        onTap: changePage,
        elevation: 0,
        tilesPadding: const EdgeInsets.symmetric(
          vertical: 8.0,
        ),
        items: const <BubbleBottomBarItem>[
          BubbleBottomBarItem(backgroundColor: Colors.indigo,
            icon: Icon(Icons.location_on,  color: Colors.black,),
            activeIcon: Icon(Icons.location_on, color: Colors.indigo,),
            title: Text("Tracking"),),
          BubbleBottomBarItem(backgroundColor: Colors.indigo,
            icon: Icon(Icons.home, color: Colors.black,),
            activeIcon: Icon(Icons.home, color: Colors.indigo,),
            title: Text("Home"))
        ],
      ),
    );
  }
}