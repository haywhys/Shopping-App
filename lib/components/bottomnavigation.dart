
import 'package:flutter/material.dart';

import '../pages/cartpage.dart';
import '../pages/homepage.dart';




class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({super.key});

  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();

}

class _CustomBottomNavState extends State<CustomBottomNav> {

  int currentIndex=0;

  final pages = [
    const HomePage(),
     const Cartpage(),
    // const MainPage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade500,
        currentIndex: currentIndex,
        items:    const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
            color: Colors.white,),
            label: "Home",

          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart,
              color: Colors.white,),
            label: "Cart",
          ),

          // BottomNavigationBarItem(
          //   icon: Icon(Icons.home_work,
          //     color: Colors.white,),
          //   label: "Home",
          //
          // ),

        ],
        onTap: (index)
        {
          setState(() {
            currentIndex = index;
          });
        },

      ),
    );
  }
}


