import 'package:http/http.dart' as http;
import 'package:pokedex/core/error/exception.dart';
import 'package:pokedex/modules/Home/domain/entities/entities.dart';
import 'package:pokedex/modules/Home/infrastructure/protocols/protocols.dart';

class PokemonListRemoteDataSource implements PokemonListRemoteDataSourceProtocol {

  PokemonListRemoteDataSource();

  @override
  Future<List<Pokemon>> getAll() async {
    try {
      var url =
      Uri.https('https://pokeapi.co/api/v2', 'pokemon?limit=25');

      // Await the http get response, then decode the json-formatted response.
      var response = await http.get(url);
      if (response.statusCode == 200) {
        // return response.body != null ? result.data['helps']
        //     .map<HelpModel>((help) => HelpModel.fromMap(help))
        //     .toList() : [];


        // var jsonResponse =
        // convert.jsonDecode(response.body) as Map<String, dynamic>;
        // var itemCount = jsonResponse['totalItems'];
        // print('Number of books about http: $itemCount.');
        return [];
      } else {
        print('Request failed with status: ${response.statusCode}.');
        return [];

      }
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }
}