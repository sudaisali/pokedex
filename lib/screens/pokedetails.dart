import 'package:flutter/material.dart';
import 'package:pokedex/widgets/customrow.dart';
class PokeDetails extends StatelessWidget {
  final String? image;
  final String? type;
  final String? name;
  final String? typ;
  final String? height;
  final String? weight;
  final String? spawntime;
  final String? weakness;


  const PokeDetails({
    Key? key,
  required this.image,
    required this.type,
    required this.name,
    required this.typ,
    required this.height,
    required this.weight,
    required this.spawntime,
    required this.weakness,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: type == "Grass" ? Colors.greenAccent : type == "Fire" ? Colors.redAccent:type == "Water"? Colors.blueAccent: type == "Electric"?Colors.yellowAccent:
    type == "Rock"?Colors.grey:type == "Ground"?Colors.brown: type =="phychic"? Colors.indigo:
    type == "Fighting"?Colors.orange:type == "Bug" ? Colors.lightGreenAccent :
    type == "Ghost" ?Colors.deepPurple: type == "Normal" ?Colors.black26:type == "Poison" ?
    Colors.deepPurpleAccent:Colors.pink,

      body: Stack(
        children: [
          Positioned(
              top: 20,
              left: 0,
              child: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back, color: Colors.white,size: 30,),)),
          Positioned(
              top: 60,
              left: 10,
              child: Text(name!  , style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),)),
          Positioned(
              top: 90,
              left: 10,
              child: Text(typ! , style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),)),
          Positioned(
                top: MediaQuery.of(context).size.height*0.18,
                 right: -30,

              child: Image.asset("assets/pokeball.png" ,height: 200,fit: BoxFit.fitHeight,)),
          Positioned(
              top: MediaQuery.of(context).size.height*0.10,
              left: (MediaQuery.of(context).size.width/2)-100,

           child: Image.network(image!,height:200,fit: BoxFit.fitHeight,)),
          Positioned(
            bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height*0.6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only
                    (topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))
                ),
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     CustomRow(title: "Name", value: name!),
                     Divider(),
                     CustomRow(title: "Height", value: height!),
                      Divider(),
                     CustomRow(title: "Weight", value: weight!),
                      Divider(),
                     CustomRow(title: "SpwanTime", value: spawntime!),
                      Divider(),
                     CustomRow(title: "Weakness", value: weakness!),
                      Divider(),
                    ],
                  ),
                ),
          ))
        ],
      ),
    );
  }
}
