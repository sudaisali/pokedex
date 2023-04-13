import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String? title;
  final String? value;
  const CustomRow({Key? key,
  required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width *0.3,
             child: Text(title!, style: TextStyle(
               color: Colors.blueGrey,
               fontSize: 20
             ),),
          ),
          Container(
            width: MediaQuery.of(context).size.width *0.3,
            child: Text(value! , style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
          )
        ],

      ),
    );
  }
}
