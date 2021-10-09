import 'dart:convert';

import 'package:pokedex/modules/Home/domain/entities/entities.dart';


class PokemonModel extends Pokemon {

  const PokemonModel({
    required int id,
    required String name
  }): super(id: id, name: name);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name
    };
  }

  static PokemonModel fromMap(Map<String, dynamic> map) {
    return PokemonModel(
      id: map['id'],
      name: map['name']
    );
  }

  String toJson() => json.encode(toMap());

  static PokemonModel fromJson(String source) => fromMap(json.decode(source));

}