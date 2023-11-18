import 'dart:convert';

import 'package:azkar/model/details_model.dart';
import 'package:flutter/material.dart';


class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key, required this.id, required this.name}) : super(key: key);
final int id;
final String name;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadSectionDetails();
  }
List<DetailsModel>sectionsDetails=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.name,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
              itemBuilder: (context,index){
                return Center(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color:Colors.grey.withOpacity(.1),
                          spreadRadius: 12,
                          blurRadius: 7,
                          offset: const Offset(0 , 3),
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text(
                        '${sectionsDetails[index].reference}',
                        style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Tajawal',
                            color: Colors.black,
                        ),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                      ),
                      subtitle:  Text(
                        '${sectionsDetails[index].content}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Tajawal',
                          color: Colors.black,
                        ),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ) ,
                );
              },
              separatorBuilder: (context,index){
                return const  Divider(height: 10,thickness: 5,endIndent: 5, indent: 5,color: Colors.white,);
              },
              itemCount:sectionsDetails.length,
          ),
        ),
      ),
    );
  }

  loadSectionDetails() async{
    sectionsDetails=[];
    DefaultAssetBundle.of(context)
        .loadString('assets/database/section_details_db.json')
        .then((value) {
      var response =json.decode(value);

      //// print(response);

      response.forEach((section){
        //debugPrint(section['name']);

        DetailsModel secDetails=DetailsModel.fromJson(section);
        //print(secDetails.content);
        if(secDetails.secId==widget.id){
          sectionsDetails.add(secDetails);
        }

      });
       setState(() {});
    })
        .catchError((error) {
      debugPrint(error.toString());
    });
  }
}
