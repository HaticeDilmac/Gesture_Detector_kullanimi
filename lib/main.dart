
import 'package:flutter/material.dart';

import 'mycontainerr.dart';

void main() {
  runApp(uygulamam());
}

class uygulamam extends StatelessWidget {
  const uygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
        backgroundColor: Colors.teal,
          title: Text('GestureDedector Kullanımı'),
        centerTitle: true,
      ),
           body: iskelet(),
    ));
  }
}

class iskelet extends StatefulWidget {
  const iskelet({Key? key}) : super(key: key);

  @override
  State<iskelet> createState() => _iskeletState();
}

class _iskeletState extends State<iskelet> {
String SeciliCinsiyet='random';
  @override
  Widget build(BuildContext context) {
    return Column(
     mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                       SeciliCinsiyet='Kadın';
                    });
                  },
                 child:mycontainerr(
                   icon: SeciliCinsiyet=='Kadın'?Icons.girl:Icons.person,
                   cinsiyet: 'Kadın',
                 ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                     SeciliCinsiyet='Erkek';
                  },
                  child:mycontainerr(
                    icon: SeciliCinsiyet=='Erkek'?Icons.man:Icons.person,
                    cinsiyet: 'Erkek',
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

}


