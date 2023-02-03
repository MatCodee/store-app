import 'package:flutter/material.dart';
import 'package:store_app/models/target.dart';
import 'package:fl_chart/fl_chart.dart';


class Folder extends StatelessWidget {
  const Folder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10.0, top: 40.0),
      width: MediaQuery.of(context).size.width,
      height: double.infinity,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 1, 77, 199),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.0), topRight: Radius.circular(50.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              "Folders",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          _listFiles(context),
        ],
      ),
    );
  }

  _listFiles(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: files.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.only(left: 10.0, right: 20.0, top: 20.0),
              padding: const EdgeInsets.all(20.0),
              width: 230.0,
              height: 150.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: Color.fromARGB(255, 8, 94, 233),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: const <Widget> [
                      Icon(
                        Icons.folder,
                        color: Colors.white,
                        size: 40.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "My Drive",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40.0,),
                  Row(
                    children: [
                      _icon_card("assets/icons/word.png"),
                      const SizedBox(width: 10.0,),
                      _icon_card("assets/icons/pdf.png")
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }

  _icon_card(String text) {
    return Container(
      width: 50.0,
      height: 50.0,
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      margin: const EdgeInsets.only(bottom: 5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 215, 215, 215).withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Image.asset(
        '${text}',
        height: 40.0,
        width: 40.0,
        fit: BoxFit.fill, //change image fill type
      ),
    );
  }
}
