import 'package:flutter/material.dart';
import 'package:store_app/models/target.dart';
import 'package:store_app/widget/folders_element.dart';

class DetailStore extends StatefulWidget {
  DetailStore({super.key, this.target});
  Target? target;

  @override
  State<DetailStore> createState() => _DetailStoreState();
}

class _DetailStoreState extends State<DetailStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 240, 240),
        foregroundColor: Colors.black54,
        toolbarHeight: 80.0,
        elevation: 0.0,
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage('assets/images/james.jpg'),
            ),
          ),
        ],
      ),
      body: Column(
          children: [
            _detail_user(context),
            Expanded(
              child: Folder(),
            ),

          ],
      ),
    );
  }

  Widget _detail_user(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120.0,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 240, 240, 240),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 70.0,
              height: 70.0,
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              margin: const EdgeInsets.only(bottom: 5.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 215, 215, 215)
                        .withOpacity(0.4),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Image.asset(
                '${widget.target?.imageUrl}',
                height: 40.0,
                width: 40.0,
                fit: BoxFit.fill, //change image fill type
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${widget.target?.title}",
                  style: const TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "storage",
                  style: TextStyle(fontSize: 12.0, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
