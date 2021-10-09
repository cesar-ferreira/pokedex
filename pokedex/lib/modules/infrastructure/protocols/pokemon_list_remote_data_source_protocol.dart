import 'package:pokedex/modules/domain/entities/entities.dart';

abstract class PokemonListRemoteDataSourceProtocol {

  Future<List<Pokemon>> getAll();

}