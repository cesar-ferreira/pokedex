import 'package:get_it/get_it.dart';
import 'package:pokedex/modules/Home/data/remote_data_source/remote_data_source.dart';
import 'package:pokedex/modules/Home/domain/protocols/protocols.dart';
import 'package:pokedex/modules/Home/domain/use_cases/use_cases.dart';
import 'package:pokedex/modules/Home/infrastructure/protocols/protocols.dart';
import 'package:pokedex/modules/Home/infrastructure/repositories/repositories.dart';
import 'package:pokedex/modules/Home/presentation/protocols/protocols.dart';

Future<void> homeInjector(GetIt serviceLocator) async {

  //! Features - Home

  // Presenter
  // serviceLocator.registerFactory(() => ShoppingListPresenter(
  //   // validation: serviceLocator(),
  //   getShoppingList: serviceLocator(),
  //   deleteShoppingList: serviceLocator(),
  // ));

  // Validators
  // serviceLocator.registerLazySingleton<Validation>(() => ValidationComposite([
  //   ...ValidationBuilder.field('title').required().min(3).build(),
  //   ...ValidationBuilder.field('password').required().min(3).email().build()
  // ]));

  // Use cases
  serviceLocator.registerLazySingleton<GetPokemonListProtocol>(
          () => GetPokemonList(serviceLocator()));

  // Repository
  serviceLocator.registerLazySingleton<PokemonListRepositoryProtocol>(
          () => PokemonListRepository(remoteDataSource: serviceLocator()));

  // Data sources
  serviceLocator.registerLazySingleton<PokemonListRemoteDataSourceProtocol>(
          () => PokemonListRemoteDataSource());
}