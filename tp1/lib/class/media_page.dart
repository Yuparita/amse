import 'package:flutter/material.dart';
import 'oeuvre.dart';
import 'affichage_media.dart';
import 'app_state_provider.dart';
import 'package:provider/provider.dart';


class PageMedia extends StatefulWidget {
  const PageMedia({super.key});

  @override
  State<PageMedia> createState() => _PageMediaState();
}

class _PageMediaState extends State<PageMedia> {
  List<Oeuvre> filteredList = [];
  String selectedGenre = "All";
  String? vquery;
  final List<String> genres = ["All", "Film", "Bande dessinée", "Livres", "Séries"];

  @override
  void initState() {
    super.initState();
    var appState = context.read<AppStateProvider>();
    filteredList = appState.oeuvreList; // Initialize with all items
  }

  void filterList(String query) {
    var appState = context.read<AppStateProvider>();
    vquery=query;
    setState(() {
      filteredList = appState.oeuvreList.where((oeuvre) {
      final bool matchesGenre = (selectedGenre == "All" || oeuvre.genre == selectedGenre);
      final bool matchesSearch = oeuvre.nom.toLowerCase().contains(query.toLowerCase());
      return matchesGenre && matchesSearch;}).toList();
    });
  }

  void filterByGenre(String genre) {
    selectedGenre = genre;
    var appState = context.read<AppStateProvider>();
    setState(() {
      filteredList = appState.oeuvreList.where((oeuvre) {
      final bool matchesGenre = (selectedGenre == "All" || oeuvre.genre == selectedGenre);
      final bool matchesSearch = vquery == null || vquery!.isEmpty || oeuvre.nom.toLowerCase().contains(vquery!.toLowerCase());
      return matchesGenre && matchesSearch;}).toList();
    });
  }




  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Parcourir :', overflow: TextOverflow.fade, maxLines: 1, textScaler: TextScaler.linear(1.5),style: TextStyle(fontWeight: FontWeight.bold),),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Rechercher",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
                onChanged: (query) => filterList(query), // Call filter function
              ),
              const SizedBox(height: 8), 
              Row(
                children: [
                  const Text("Filtrer par genre: "),
                  DropdownButton<String>(
                    value: selectedGenre,
                    onChanged: (value) => filterByGenre(value!),
                    items: genres.map((String genre) {
                      return DropdownMenuItem<String>(
                        value: genre,
                        child: Text(genre),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView.builder(
            itemCount: filteredList.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250,
              crossAxisSpacing: 20,  
              mainAxisSpacing: 20,
              mainAxisExtent: 256,
              ), 
            itemBuilder: (context, index) {
              return BlocMedia(oeuvre: filteredList[index]);
            },
          ),
        ),
      ],
    );
  }
}
