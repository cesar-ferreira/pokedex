import 'package:dartz/dartz.dart';
import 'package:pokedex/core/error/failure.dart';
import 'package:pokedex/modules/domain/entities/entities.dart';

abstract class PokemonRepositoryProtocol {

  Future<Either<Failure, List<Pokemon>>> getAll();

}