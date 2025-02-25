import 'package:flutter/material.dart';
import 'oeuvre.dart';


class AppStateProvider extends ChangeNotifier {
  final List<Oeuvre> _oeuvreList = getListOeuvre();
  var indexFavoris = <int>{};

  // Getter for the oeuvre list. This makes it immutable from the outside.
  List<Oeuvre> get oeuvreList => List.unmodifiable(_oeuvreList);

  // Method to toggle the like status of an Oeuvre
  void toggleLike(int oeuvreIndex) {
    final oeuvre = _oeuvreList[oeuvreIndex];
    oeuvre.toggleLike();
    if (!(indexFavoris.remove(oeuvreIndex))){
      indexFavoris.add(oeuvreIndex);
    }
    notifyListeners(); // Notifies listeners to rebuild UI
  }
}


