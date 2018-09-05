import 'package:emergency_nav_lights_sim/page/light-page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 28.0),
              child: Text("Tap a color to activate the corresponding lights",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28.0)),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 16.0),
              child: Text(
                "Select the color",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                    height: 80.0,
                    color: Colors.red,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LightPage(Colors.red)),
                      );
                    }),
                MaterialButton(
                    height: 80.0,
                    color: Colors.blue,
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LightPage(Colors.white)),
                      );
                    }),
                MaterialButton(
                    height: 80.0,
                    color: Colors.green,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LightPage(Colors.green)),
                      );
                    }),
              ],
            ),
             Container(
                    margin: EdgeInsets.only(top: 60.0),
                    child: Text("This app is not a replacement for real physical certified navigation lights. You should always check your running nav lights on aircraft, ships, and spacecraft, and always carry spares.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0)),
                     )
          ],
        ),
      ),
    );
  }
}
