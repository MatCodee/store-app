import 'package:flutter/material.dart';
import 'package:store_app/models/target.dart';

class ComponentsLoaded extends StatelessWidget {
  const ComponentsLoaded({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: targets.length,
        itemBuilder: (BuildContext context,int index) {
          return Container(
            margin: const EdgeInsets.only(top: 12.0),
            padding: const EdgeInsets.all(20.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: Color.fromARGB(255, 8, 88, 216),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                      Image.network('https://cdn-icons-png.flaticon.com/512/281/281760.png',width: 30.0,height: 30.0,),
                      const SizedBox(width: 10.0,),
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget> [
                        Text("Nuevo",style: TextStyle(color: Colors.white,fontSize: 12),),
                        Text("data",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 10),),
                      ],
                    ),
                  ],
                ),
                IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert,color: Colors.white,))
              ],
            ),
          );
        }
      ),
    );
  }
}