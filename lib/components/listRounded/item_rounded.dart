import 'package:flutter/material.dart';

class ItemRounded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(110.0),
                border: Border.all(width: 2.0, color: Colors.lightBlueAccent),
              ),
              child: ClipOval(
                  child: Image.network(
                      'https://crops.giga.de/7b/95/2f/cb4bee352116bd567ecaabecf1_YyAyNzQzeDE1NDMrMTMrMTMyMAJyZSAxNjAwIDEyMDADNzVjYjMxYjZjYmY=.jpg',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover)),
            ),
            Text("Extraction",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ))
          ],
        ),
        SizedBox(width: 15.0,)
      ],
    );
  }
}
