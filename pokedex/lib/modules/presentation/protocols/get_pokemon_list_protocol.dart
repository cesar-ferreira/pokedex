import 'package:dartz/dartz.dart';
import 'package:pokedex/core/error/failure.dart';
import 'package:pokedex/modules/domain/entities/entities.dart';

abstract class GetPokemonListProtocol {

  Future<Either<Failure, List<Pokemon>>> call();

}