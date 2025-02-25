import 'oeuvre.dart';
import 'package:flutter/material.dart';
import 'app_state_provider.dart';
import 'package:provider/provider.dart';



class BlocMedia extends StatelessWidget {
  const BlocMedia({super.key, required this.oeuvre});

  final Oeuvre oeuvre;
  
  @override
  Widget build(BuildContext context) {
    
    return Card(
        clipBehavior: Clip.hardEdge, 
        child: InkWell(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => InfoMedia(oeuvre: oeuvre)));} ,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 130,
              height: 222,
              child: Column(
                children: [
                  Text(oeuvre.nom,overflow: TextOverflow.ellipsis),
                  SizedBox(child: Image(image:AssetImage(oeuvre.imageSource),width: 100,height: 161,fit: BoxFit.cover ) ),
                  LikeButton(oeuvre: oeuvre)
                ],
              ),
            ),
          )
        )
      );
  }
}

class LikeButton extends StatelessWidget {
  const LikeButton({super.key, required this.oeuvre});
  final Oeuvre oeuvre;

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppStateProvider>();
    return IconButton(onPressed:() => appState.toggleLike(oeuvre.index), icon: Icon(oeuvre.liked ? Icons.favorite : Icons.favorite_border),color: oeuvre.liked ? Colors.red : Colors.grey);
  }
}


class InfoMedia extends StatelessWidget {
  const InfoMedia({super.key, required this.oeuvre});
  final Oeuvre oeuvre;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(oeuvre.nom)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8), 
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.3, // 30% of screen width
                height: MediaQuery.of(context).size.width * 0.45, // Keep aspect ratio
                child: Image.asset(
                  oeuvre.imageSource,
                  fit: BoxFit.cover,
                ),
              )
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min, 
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: LikeButton(oeuvre: oeuvre),
                  ),
                  const SizedBox(height: 8), 
                  Row(
                    children: [
                      const Text('Genre: ', style: TextStyle(fontWeight: FontWeight.bold)),
                      Flexible(child: Text(oeuvre.genre)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    oeuvre.description,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 10, 
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}