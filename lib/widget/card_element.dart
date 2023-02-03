import 'package:flutter/material.dart';
import 'package:store_app/models/target.dart';
import 'package:store_app/src/detail_store.dart';
import 'package:store_app/widget/list_folder.dart';

class CardElement extends StatelessWidget {
  const CardElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      width: MediaQuery.of(context).size.width,
      height: 200.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: targets.length,
          itemBuilder: (BuildContext context, int index) {
            final Target target = targets[index];

            return GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => DetailStore(target: target))),
              child: Container(
                height: 200.0,
                width: 200.0,
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      margin: const EdgeInsets.only(bottom: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 233, 233, 233)
                                .withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Image.asset(
                        '${targets[index].imageUrl}',
                        height: 50.0,
                        width: 50.0,
                        fit: BoxFit.fill, //change image fill type
                      ),
                    ),
                    const ListFolderIcon(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '${targets[index].title}',
                      style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
