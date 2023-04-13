import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {
 final String? image;
 final String ? type;
 final String? name;
  const CustomCard({Key? key,
    required this.image,
   required this.type,
  required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
       color:  type == "Grass" ? Colors.greenAccent : type == "Fire" ? Colors.redAccent:type == "Water"? Colors.blueAccent: type == "Electric"?Colors.yellowAccent:
       type == "Rock"?Colors.grey:type == "Ground"?Colors.brown: type =="phychic"? Colors.indigo:
       type == "Fighting"?Colors.orange:type == "Bug" ? Colors.lightGreenAccent :
       type == "Ghost" ?Colors.deepPurple: type == "Normal" ?Colors.black26:type == "Poison" ?
       Colors.deepPurpleAccent:Colors.pink
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20,
              left: 10,
              child: Text(name!  , style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),)),
          Positioned(
            top: 40,
              left: 18,
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4)
                    )
                  ]
                ),
                child: Text(type!  , style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              )),
          Positioned(
            bottom: -20,
            right: -20,
            child: Container(
              width: 140,
                height: 140,

                child:Image.asset("assets/pokeball.png"),
          )),
          Positioned(
            bottom: 5,
            right: 5,
            child: Container(
            child:Image.network(image!)),
          ),

        ],

      ),
    );
  }
}
