import 'package:flutter/material.dart';

class UserTitle extends StatelessWidget {
  const UserTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 25.0,
            backgroundImage: AssetImage('assets/images/james.jpg'),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const  <Widget>[
              Text(
                "Hello,",
                style: TextStyle(fontSize: 18.0, color: Colors.grey),
              ),
              Text(
                "James Eduart",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
