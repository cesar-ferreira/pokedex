import 'package:dartz/dartz.dart';
import 'package:pokedex/core/error/failure.dart';
import 'package:pokedex/modules/Home/domain/entities/entities.dart';

abstract class PokemonListRepositoryProtocol {

  Future<Either<Failure, List<Pokemon>>> getAll();

}