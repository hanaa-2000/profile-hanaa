import 'package:coffee/constant/constant.dart';
import 'package:coffee/views/home_veiw.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
   Future.delayed(const Duration(seconds: 3),(){
     Navigator.pushReplacement(context,MaterialPageRoute(builder: (context){
       return const Home_View();
     }));
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffedf1f1),
      body:Center(
      child:Padding(
        padding: const EdgeInsets.all(50),
        child:Column(
        children: const [
         Padding(
          padding: EdgeInsets.all(40),
          child: Text(
            'Coffee Store',
            style: TextStyle(
              fontSize: 24,
              color: kPrimaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
         ),
          CircleAvatar(
            radius: 90,
           backgroundImage: AssetImage('assets/images/images.jpg',),

          ),
         SizedBox(
           height: 80,
         ),
         Center(child: CircularProgressIndicator(color: kPrimaryColor,)),
        ],
      ),
    ),
      ),
    );
  }
}
