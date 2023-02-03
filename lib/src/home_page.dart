import 'package:flutter/material.dart';
import 'package:store_app/widget/user_title.dart';
import 'package:store_app/widget/card_element.dart';
import 'package:store_app/widget/components_loaded.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> names_store = ['Drobox'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 240, 240),
        toolbarHeight: 80.0,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Color.fromARGB(255, 1, 77, 199),
          ),
          tooltip: 'Menu',
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_chart_outlined,
                color: Color.fromARGB(255, 1, 77, 199),
              )),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 310.0,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 240, 240, 240),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
              )
            ),
            child: Column(
              children: const <Widget> [
                UserTitle(),
                CardElement(),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.4,
            margin: const EdgeInsets.only(top: 20.0),
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const  <Widget> [
                Text("Last File",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white),),
                ComponentsLoaded(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
