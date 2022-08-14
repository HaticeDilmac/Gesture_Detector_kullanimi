import 'package:flutter/material.dart';

class mycontainerr extends StatelessWidget {
  final String cinsiyet;
  final IconData icon;
  final Color renk;

  mycontainerr({
    this.cinsiyet = 'Defualt',
    this.icon = Icons.girl,
    this.renk=Colors.white,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 50.0,
            ),
            Icon(
              icon,
              size: 80.0,
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                cinsiyet,
                style: TextStyle(fontSize: 30.0),
              ),
            ),
          ],
        ));
  }
}

class ogeler {
  String icon;
  String cinsiyet;

  ogeler({required this.cinsiyet, required this.icon});
}
