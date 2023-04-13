import 'dart:convert';
import 'package:http/http.dart' as http;


class PokeServices{
  Future<List<dynamic>>  fetchingpokeapi()  async {
    var data;
    var response = await http.get(Uri.parse("https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json"));

    if(response.statusCode == 200){
      data = jsonDecode(response.body.toString());
      data = data['pokemon'];
      return data;
    }
    else{
      throw Exception("Error");
    }
  }

}