import 'package:flutter/material.dart';
import 'package:myapp/components/navbar/nav_bar.dart';

class MainCartel extends StatelessWidget {
  const MainCartel({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[this.Hero(), this.infoSerie(), this.CtaButtons()],
    );
  }

  Widget Hero() {
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/images/the_witcher.jpeg',
          height: 350.0,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 350.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                Colors.black38,
                Colors.black,
              ])),
        ),
        SafeArea(child: Navbar()),
      ],
    );
  }

  Widget infoSerie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Fantasy TV Shows',
            style: TextStyle(color: Colors.white, fontSize: 12.0)),
        SizedBox(width: 5.0),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 8.0,
        ),
        SizedBox(width: 5.0),
        Text('TV Shows Based on Books',
            style: TextStyle(color: Colors.white, fontSize: 12.0)),
        SizedBox(width: 5.0),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 8.0,
        ),
        SizedBox(width: 5.0),
        Text('TV Dramas',
            style: TextStyle(color: Colors.white, fontSize: 12.0)),
      ],
    );
  }

  Widget CtaButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      // child:row
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(children: <Widget>[
          Icon(
            Icons.check,
            color: Colors.white,
            size: 25.0,
          ),
          Text(
            "My List",
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          )
        ]),
        
        TextButton.icon(
          onPressed: (){},
          style: TextButton.styleFrom(
            primary: Colors.black,
            alignment: Alignment.center,
            padding: EdgeInsets.all(8.0),
            backgroundColor: Colors.white
          ), 
          icon: Icon(Icons.play_arrow, size: 20.0,), 
          label: Text("Watch Now")
          ),

        Column(children: <Widget>[
          Icon(
            Icons.info_outline,
            color: Colors.white,
            size: 25.0,
          ),
          Text(
            "Info",
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          )
        ]),
      ],
    ),
    );
  }
}
