import 'package:animation/screen/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  HomeProvider? providerR;
  HomeProvider? providerW;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    providerR=context.read<HomeProvider>();
    providerW=context.watch<HomeProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(child: Image.asset("assets/image/11.jpg")),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Jawan",style: TextStyle(
                  fontSize: 30
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("⭐ 4.3",style: TextStyle(
                  fontSize: 30                ),),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("RELEASED YEAR:${providerR!.homeModel.released}"),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(" COUNTRY:${providerR!.homeModel.country}"),
          ),

          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(" ACTORS:${providerR!.homeModel.actors}"),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(" DIRECTOR:${providerR!.homeModel.director}"),
          ),

          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(" AWARDS:${providerR!.homeModel.awards}"),
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Questi strumenti sono essenziali per garantire la fruizione dei contenuti digitali, migliorare la navigazione e, previo tuo consenso, per scopi pubblicitari. Ad esempio, potremmo utilizzare i tuoi dati per le seguenti finalità: archiviare informazioni su dispositivo e/o accedervi, utilizzare dati limitati per la selezione della pubblicità, creare profili per la pubblicità personalizzata, utilizzare profili per la selezione di pubblicità personalizzata",style: TextStyle(
              fontStyle: FontStyle.normal
            ),),
          ),

        ],
      ),
    );
  }
}
