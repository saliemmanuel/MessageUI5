import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messageui/utils/couleurEtStyle.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int nombreMess = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _zoneEntete(nombreMess),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: _zoneDeuxMessagerie(),
          ),
          _zoneTroisMessagerie("Contract amendment", "Nadine Muller", "2:32pm",
              "DEMANDE STAGES", "EMAIL", true, 1),
          _zoneTroisMessagerie("Cancellation", "Sali Emmanuel dotDev ",
              "2:32pm", "SOLVED", "EMAIL", false, 2),
          _zoneTroisMessagerie("Contract amendment", "Nadine Muller", "2:32pm",
              "DEMANDE STAGES", "EMAIL", true, 1),
          _zoneTroisMessagerie("Cancellation", "Sali Emmanuel dotDev ",
              "2:32pm", "SOLVED", "EMAIL", false, 2),
          _zoneTroisMessagerie("Contract amendment", "Nadine Muller", "2:32pm",
              "DEMANDE STAGES", "EMAIL", true, 1),
          _zoneTroisMessagerie("Cancellation", "Sali Emmanuel dotDev ",
              "2:32pm", "SOLVED", "EMAIL", false, 2),
        ],
      ),
    );
  }
}

_zoneEntete(int nombreMessage) {
  return Container(
    child: ListTile(
      title: Stack(
        children: <Widget>[
          Text(
            "Messages",
            style: styleTextMessages,
          ),
          Positioned(
            top: 5.0,
            left: 150.0,
            child: Container(
              alignment: Alignment.center,
              height: 25.0,
              width: 40.0,
              decoration: BoxDecoration(
                color: couleurBoxNombreMessagerie,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(
                "$nombreMessage",
                style: styleNombreMessage,
              ),
            ),
          ),
        ],
      ),
      trailing: Container(
        alignment: Alignment.center,
        height: 32.0,
        width: 32.0,
        decoration: BoxDecoration(
          color: couleurContainerAjout,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Icon(
          Icons.add,
          color: colorBouttonAjout,
          size: 25.0,
        ),
      ),
    ),
  );
}

_zoneDeuxMessagerie() {
  return Container(
    height: 55.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.0),
      border: Border.all(),
    ),
    child: ListTile(
      title: Text("All messages"),
      trailing: Icon(Icons.expand_more),
    ),
  );
}

_zoneTroisMessagerie(
    String libeletMessage,
    String auteurMessage,
    String dateMessage,
    String typeMessage,
    String canalMessage,
    bool confirmationLecture,
    int vallCouleur) {
  return Container(
    child: Column(
      children: <Widget>[
        Divider(),
        Row(
          children: <Widget>[
            SizedBox(
              width: 25.0,
            ),
            confirmationLecture == false
                ? Container(
                    height: 12.0,
                    width: 12.0,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                  )
                : Icon(Icons.reply),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "$libeletMessage",
              style: styleLibeletMessage,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 5.0),
          child: ListTile(
            title: Text(
              "Ruhralle 17,1 OG, recents\n$auteurMessage",
              style: styleCorpsMessagaries,
            ),
            trailing: Text(
              "$dateMessage",
              style: styleCorpsMessagaries,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35.0),
          child: Row(
            children: <Widget>[
              Chip(
                label: Text(
                  "$typeMessage",
                  style: vallCouleur == 1
                      ? styleTextTypeMessage
                      : styleTextTypeMessage2,
                ),
                backgroundColor: vallCouleur == 1
                    ? couleurChipTypeMessage
                    : couleurChipTypeMessage2,
              ),
              SizedBox(
                width: 10.0,
              ),
              Chip(
                label: Text(
                  "$canalMessage",
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
