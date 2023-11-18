import 'dart:convert';

import 'package:azkar/model/model.dart';
import 'package:azkar/screens/details_scrren.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<SectionModel> sections = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadSections();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'أذكار الاسلام',
          textAlign: TextAlign.center,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
            child: ListView.builder(
              itemCount: sections.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context,index){
                return ItemBuild(context:context,model: sections[index]);
              },

            ),
          ),
        ),
      ),
    );
  }

  Widget ItemBuild({required BuildContext context, required SectionModel model}) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder:(context){
          return  DetailsScreen(id: model.id!, name: model.name!,);
        }),);
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
        height: MediaQuery.of(context).size.height / 8,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.greenAccent,
              Colors.green,
              Colors.lightGreen,
            ],
          ),
          borderRadius: BorderRadius.circular(10),
          shape: BoxShape.rectangle,
        ),
        child: Center(
          child: Text(
            '${model.name}',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
    );
  }

///////////////////////////////////////////LoadSection
  loadSections() async{
    DefaultAssetBundle.of(context)
        .loadString('assets/database/sections_db.json')
        .then((value) {
          var response =json.decode(value);

         //// print(response);

          response.forEach((section){
            //debugPrint(section['name']);

            SectionModel sec=SectionModel.fromJson(section);

            sections.add(sec);
          });
          setState(() {

          });

    })
        .catchError((error) {
      debugPrint(error.toString());
    });
  }
}
