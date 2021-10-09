import 'package:dartz/dartz.dart';
import 'package:pokedex/core/error/failure.dart';
import 'package:pokedex/modules/domain/entities/entities.dart';
import 'package:pokedex/modules/domain/protocols/protocols.dart';
import 'package:pokedex/modules/presentation/protocols/protocols.dart';

class GetPokemonList implements GetPokemonListProtocol {

  final PokemonRepositoryProtocol repository;

  GetPokemonList(this.repository);

  @override
  Future<Either<Failure, List<Pokemon>>> call() async {
    return await repository.getAll();
  }

}