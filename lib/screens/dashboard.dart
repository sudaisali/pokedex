import 'dart:convert';
import'package:flutter/material.dart';
import 'package:pokedex/screens/pokedetails.dart';
import 'package:pokedex/services/utilities/pokeservices.dart';
import '../widgets/card.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
    PokeServices pokeServices = PokeServices();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text("Pokedex",
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                fontSize: 50,
                color: Colors.black
                )),
            Expanded(

                child: FutureBuilder(
                     future: pokeServices.fetchingpokeapi(),
                    builder: (context ,  AsyncSnapshot<List<dynamic>> snapshot){
                       if(!snapshot.hasData){
                           return const Text("Loading");
                       }else{
                  return GridView.builder(
                    itemCount: snapshot.data!.length,
                      itemBuilder: (context,index){

                      return InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder:
                              (context)=>PokeDetails(
                                image: snapshot.data![index]["img"].toString(),
                               type: snapshot.data![index]["type"][0].toString(),
                              name: snapshot.data![index]["name"].toString(),
                              typ: snapshot.data![index]["type"].toString(),
                                height: snapshot.data![index]["height"].toString(),
                                weight: snapshot.data![index]["weight"].toString(),
                                spawntime: snapshot.data![index]["spawn_time"].toString(),
                                weakness: snapshot.data![index]["weaknesses"].toString(),
                              )
                          ));

                        },
                        child: CustomCard(
                          image: snapshot.data![index]["img"].toString(),
                          type:  snapshot.data![index]["type"][0].toString(),
                          name: snapshot.data![index]["name"].toString(),


                        ),
                      );
                      },


                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                  ),);
                       }
                }),
              ),

          ]
        ),
      ),
    );
  }
}
