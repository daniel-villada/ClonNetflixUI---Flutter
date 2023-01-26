import 'package:flutter/material.dart';
import 'package:myapp/components/hero/main_cartel.dart';
import 'package:myapp/components/listRounded/item_rounded.dart';
import 'package:myapp/components/list_squared/ListSquared.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      body: ListView(
        children: <Widget>[
          MainCartel(),
          this.horizontalList("Newest", ItemRounded(), 8),
          SizedBox(
            height: 10.0,
          ),
          this.horizontalList("Trendind Now", listSquared(), 8),
        ],
      ),
      bottomNavigationBar: this.ButtonNav(),
    );
  }

  BottomNavigationBar ButtonNav() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white30,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.library_music), label: "in comming"),
        BottomNavigationBarItem(icon: Icon(Icons.download_rounded), label: "Downloads"),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz_rounded), label: "More"),
      ],
    );
  }

  Widget horizontalList(String title, Widget item, int quanty) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 16.0),
            child: Text(title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold))),
        Container(
            height: 120.0,
            child: ListView.builder(
                itemCount: quanty,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return item;
                }))
      ],
    );
  }
}
