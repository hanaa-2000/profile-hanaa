import 'package:coffee/constant/constant.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatefulWidget{
  const CustomBottomNavigation({Key? key,}) : super(key: key);
  @override
  _CustomBottomNavigation createState()=> _CustomBottomNavigation();
}

class _CustomBottomNavigation extends State<CustomBottomNavigation> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

        selectedItemColor: kPrimaryColor,
        unselectedItemColor: Colors.grey,
        
        currentIndex: selectedIndex,
        onTap: (index){

          setState(() {
            selectedIndex=index;
          });
        },
        elevation: 0,
        selectedIconTheme: const IconThemeData(
          color:kPrimaryColor,
        ),
        unselectedIconTheme: const IconThemeData(
          color:Colors.grey,
        ),

        items: const [
      BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
         ),
      BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorite',
          ),
      BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'shopping',
          ),
      BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag),
          label: 'Bag',
      )
    ]);
  }
}
