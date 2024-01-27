import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/Musics.dart';




class SavePage extends StatefulWidget {
  final String title;
  final String url;

  const SavePage({
    Key? key,
    required this.title,
    required this.url
  });


  @override
  State<SavePage> createState() => _SavePageState();
}
List<SavePage> favoritesongs=[];

class _SavePageState extends State<SavePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView.builder(

          itemCount: favoritesongs.length,
            itemBuilder: (context,index){
            return ListTile(
              title: Text (widget.title),
              subtitle: Text('assets/songs:${favoritesongs[index].url}'),

            );

            }
        ),



    );
  }
}
