
import 'package:pokedex/modules/Home/domain/entities/entities.dart';

abstract class PokemonListRemoteDataSourceProtocol {

  Future<List<Pokemon>> getAll();

}