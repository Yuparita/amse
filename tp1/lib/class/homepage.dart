import 'package:flutter/material.dart';
import 'oeuvre.dart';
import 'app_state_provider.dart';
import 'affichage_media.dart';
import 'package:provider/provider.dart';
import 'dart:math';




class AfficheFavoris extends StatelessWidget {
  const AfficheFavoris({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppStateProvider>();

    if (appState.indexFavoris.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Vous n'avez aucun favoris !",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    return SizedBox(
      height: 245,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: appState.indexFavoris.length,
        itemBuilder: (context, index) {
          return BlocMedia(oeuvre: appState.oeuvreList[appState.indexFavoris.elementAt(index)]);
        },
      ),
    );
  }
}


class AfficheHomePage extends StatelessWidget {
  const AfficheHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppStateProvider>();

    return ListView(
      children: [
        OeuvreAlaUne(),
        SizedBox(height: 8,),
        const Text('Favoris :',maxLines: 1, textScaler: TextScaler.linear(1.5),style: TextStyle(fontWeight: FontWeight.bold),),
        AfficheFavoris(),
        SizedBox(height: 8,),
        const Text('Toute les oeuvres :',maxLines: 1, textScaler: TextScaler.linear(1.5),style: TextStyle(fontWeight: FontWeight.bold),),
        SizedBox(
          height: 245,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: appState.oeuvreList.length,
            prototypeItem:BlocMedia(oeuvre :appState.oeuvreList.first) ,
            itemBuilder: (context, index){
              return BlocMedia(oeuvre: appState.oeuvreList[index]);
            }
          ),
        ),
      ],
    );
  }
}



class OeuvreAlaUne extends StatefulWidget {
  const OeuvreAlaUne({super.key});

  @override
  State<OeuvreAlaUne> createState() => _OeuvreAlaUneState();
}

class _OeuvreAlaUneState extends State<OeuvreAlaUne> {
  Oeuvre? selectedOeuvre;

  @override
  void initState() {
    super.initState();
    _selectRandomOeuvre();
  }

  void _selectRandomOeuvre() {
    var appState = context.read<AppStateProvider>();

    if (appState.oeuvreList.isNotEmpty) {
      final random = Random();
      setState(() {
        selectedOeuvre = appState.oeuvreList[random.nextInt(appState.oeuvreList.length)];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (selectedOeuvre == null) {
      return const SizedBox(); // If no oeuvre is selected, return empty
    }

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      margin: const EdgeInsets.all(10),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Oeuvre à la une",
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        selectedOeuvre!.imageSource,
                        width: 100,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            selectedOeuvre!.nom,
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Genre: ${selectedOeuvre!.genre}",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            selectedOeuvre!.description,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: LikeButton(oeuvre: selectedOeuvre!),
          ),
        ],
      ),
    );
  }
}
