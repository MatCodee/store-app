import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListFolderIcon extends StatelessWidget {
  const ListFolderIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget> [
        Icon(Icons.folder,color: Colors.blue,),
        SizedBox(width: 10.0,),
        Icon(Icons.folder_delete_outlined,color: Color.fromARGB(255, 204, 204, 204),),
        SizedBox(width: 10.0,),
        Icon(Icons.folder_shared_sharp),
        SizedBox(width: 10.0,),
        Icon(Icons.snippet_folder)
      ],
    );
  }
}