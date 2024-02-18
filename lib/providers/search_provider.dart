import 'package:flutter/material.dart';

import '../consts.dart';

class SearchProvider extends ChangeNotifier {
  List<Pet> _searchResults = [];

  List<Pet> get searchResults => _searchResults;

  void updateSearchResults(String query) {
    _searchResults = _filteredPets(query);
    notifyListeners();
  }

  List<Pet> _filteredPets(String query) {
    return PETS.where((pet) {
      final lowerCaseQuery = query.toLowerCase();
      return pet.type.toLowerCase().contains(lowerCaseQuery) ||
          pet.breed.toLowerCase().contains(lowerCaseQuery);
    }).toList();
  }
}
