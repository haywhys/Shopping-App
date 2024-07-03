
import'package:flutter/material.dart';
import 'package:shoppingapp/components/bottomnavigation.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset("assets/images/logo.png"),
                 Text("Mini Shopping Cart",
                  style: TextStyle(
                    color: Colors.brown.shade500,
                    fontSize: 22,
                    fontWeight: FontWeight.normal,
                  ),
                ),

                Text("Find your perfect sneakers!",
                  style: TextStyle(
                    color: Colors.brown.shade500,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const CustomBottomNav()),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width*.70,
                height: MediaQuery.of(context).size.height*0.06,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                    color: Colors.brown.shade400),
                child: const Center(
                  child:  Text("Get Snickers!",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
