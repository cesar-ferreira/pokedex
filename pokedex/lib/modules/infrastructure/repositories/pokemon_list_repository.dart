import 'package:dartz/dartz.dart';
import 'package:pokedex/core/error/exception.dart';
import 'package:pokedex/core/error/failure.dart';
import 'package:pokedex/modules/domain/entities/pokemon.dart';
import 'package:pokedex/modules/domain/protocols/protocols.dart';
import 'package:pokedex/modules/infrastructure/protocols/protocols.dart';

class PokemonListRepository implements PokemonListRepositoryProtocol {

  final PokemonListRemoteDataSourceProtocol remoteDataSource;

  const PokemonListRepository({
    required this.remoteDataSource
  });

  @override
  Future<Either<Failure, List<Pokemon>>> getAll() async {
    try {
      final response = await remoteDataSource.getAll();
      return Right(response);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}