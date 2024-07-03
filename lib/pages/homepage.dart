import 'package:flutter/material.dart';
import 'package:shoppingapp/constants/products.dart';
import '../constants/cart.dart';
import 'cartpage.dart';


// int counter=0;
//
// void _increase(){
//
//     counter++;
// }


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Discover",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Cartpage();  // Passing the cart instance here
                  }));
                },
                icon: const Icon(Icons.shopping_cart),
              ),
            ),
          ],
        ),
      
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // advert description statement
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "Walk in style with our new footwear 👟",
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),
      
            //First Scrollable product display section
      
            SizedBox(
              height: MediaQuery.of(context).size.height *.5,
              child: ListView.builder(
                itemCount: footWears.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final footWear = footWears[index];
                  return InkWell(
                    onTap: (){
      
                      showMyDialog(
                          context,
                          footWear.brand,
                          footWear.name,
                          footWear.price,
                          footWear.imgUrl
                      );
      
                    },
                    child: Card(
                      margin: const EdgeInsets.symmetric(horizontal: 8,
                          vertical: 10),
                      color: Colors.grey,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 0.0,
                                  vertical: 10),
      
                                 child: Text(
                                    footWear.brand,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 25,
                                    ),
                                  ),
      
      
                            ),
                            Text(
                              footWear.name,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 19,
                                color: Colors.brown.shade400,
                              ),
                            ),
                            Text(
                              "${footWear.price}",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 19,
                                color: Colors.brown.shade500,
                              ),
                            ),
                            Center(child: Image.asset(footWear.imgUrl)),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
      
            // second product display text
      
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                "Hot 🔥 Classic Designs",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
      
            // second Scrollable product display section
      
            Expanded(
              child: Card(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: hotDeals.length,
                  itemBuilder: (context, index) {
                    HotDeals hotdeals = hotDeals[index];
                    return Card(
                      color: Colors.brown,
                      child: Padding(
                        padding: const EdgeInsets.only(left:13.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 25),
                              padding: const EdgeInsets.only(bottom: 10),
                              height: 80,
                              width: MediaQuery.of(context).size.width * .50,
                              child: Image.asset(
                                hotdeals.imgUrl,
                                width: 30,
                                height: 10,
                              ),
                            ),
                             Text(
                             hotdeals.brand,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.white70,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                             Text(
                             hotdeals.name,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.white70,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$${hotdeals.price.toString()}",
                                  style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Container(
                                  margin:const EdgeInsets.only(left:65),
                                  child: IconButton(
                                    onPressed: (){
                                      showModalBottomSheet(
                                        isDismissible: false,
                                        isScrollControlled: false,
                                        context: context,builder: (BuildContext context)
                                      {
                                        return
                                          hotItemSelectedDescription(context, index);
                                      },);
      
                                      },
                                    icon: const Icon(Icons.library_add, size:35, color: Colors.white,),),
                                ),
                              ],
                            ),
      
      
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container hotItemSelectedDescription(BuildContext context, int index) {
    return Container(
                                        padding: const EdgeInsets.all(20),
                                        width: MediaQuery.of(context).size.width,
                                        height: MediaQuery.of(context).size.height*0.6,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [

                                            Column(
                                              children: [
                                                Text(hotDeals[index].brand,
                                                style: const TextStyle(fontWeight: FontWeight.bold,
                                                fontSize: 19),
                                                ),

                                                Text(hotDeals[index].name,
                                                  style: const TextStyle(fontWeight: FontWeight.bold,
                                                      fontSize: 19),
                                                ),
                                                Text("\$${hotDeals[index].price.toString()}",
                                                  style: const TextStyle(fontWeight: FontWeight.bold,
                                                      fontSize: 19),
                                                ),
                                              ],
                                            ),

                                            SizedBox(
                                              width:MediaQuery.of(context).size.width*0.50,
                                                height:MediaQuery.of(context).size.height*0.2,
                                                child: Image.asset(hotDeals[index].imgUrl)),

                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  color:Colors.brown.shade300,
                                                    child: TextButton(onPressed: (){

                                                      String name = hotDeals[index].name;
                                                      String brand= hotDeals[index].brand;
                                                      int price = hotDeals[index].price;
                                                      String imgUrl = hotDeals[index].imgUrl;

                                                      setState(() {
                                                        items.add(FootWears(brand: brand, name: name, price: price, imgUrl: imgUrl),
                                                        );
                                                        Navigator.of(context).pop();
                                                        ScaffoldMessenger.of(context).showSnackBar(
                                                          SnackBar(
                                                            backgroundColor: Colors.brown.shade800,
                                                            closeIconColor: Colors.white,
                                                            content: const Text('Product has been added \n to cart successfully',
                                                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600,
                                                                  fontSize: 18),
                                                              textAlign: TextAlign.center,

                                                            ),
                                                          ),
                                                        );
                                                      });
                                                    },
                                                      child: const Text("Add to Cart",
                                                      style: TextStyle(color: Colors.white,
                                                      fontSize: 18),
                                                      ),
                                                    ),
                                                ),

                                                Container(
                                                  color:Colors.brown.shade300,
                                                  child: TextButton(onPressed: (){
                                                    Navigator.of(context).pop();
                                                  },
                                                    child: const Text("Cancel",
                                                      style: TextStyle(color: Colors.white,
                                                          fontSize: 18),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      );
  }



  // Item selected Description dialog //

  void showMyDialog(BuildContext context, String brandName, String itemName, int price, String imgUrl) {
    showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Description"),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(brandName, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
              Text(itemName, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
              Text("\$${price.toString()}", style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
              Image.asset(imgUrl),
            ],
          ),
        ),
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.brown.shade300,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton(
                    onPressed: () {
                      final FootWears product = FootWears(
                          brand: brandName,
                          name: itemName,
                          price: price,
                          imgUrl: imgUrl
                      );

                      setState(() {
                        items.add(product);

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.brown.shade800,
                            closeIconColor: Colors.white,
                            content: const Text('Product has been added \n to cart successfully',
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600,
                              fontSize: 18),
                              textAlign: TextAlign.center,

                            ),
                          ),
                        );

                      });
                      Navigator.of(context).pop();
                    },
                    child: const Text("Add",
                    style: TextStyle(color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    });
  }
}




// class MyButtomSheet extends StatefulWidget {
//
//   final String brandName;
//   final String itemName;
//   final int price;
//   final String imgUrl;
//
//   const MyButtomSheet({super.key,
//   required this.price,
//   required this.itemName,
//   required this.brandName,
//     required this.imgUrl,
//   });
//
//   @override
//   State<MyButtomSheet> createState() => _MyButtomSheetState();
// }
//
// class _MyButtomSheetState extends State<MyButtomSheet> {
//   @override
//   Widget build(BuildContext context) {
//       return Container(
//         padding: const EdgeInsets.all(16.0),height: 600,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children:[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                   'Shoe Details',
//                   style: TextStyle(
//                     fontSize: 24.0,
//                     fontWeight: FontWeight.bold,),
//                 ),
//                 IconButton(onPressed: (){
//                   Navigator.of(context).pop();
//                 }, icon: const Icon(Icons.cancel_presentation,
//                 size: 40,))
//               ],
//             ),
//             Container(
//               height: 350,
//               color: Colors.brown.shade200,
//               child: ListView.builder(
//                   itemCount: hotItems.length,
//                   itemBuilder: (context, int index){
//                     HotDeals hotDeals = HotDeals(brand: brandName, name: itemName, price: price, imgUrl: imgUrl)
//                     return  ListTile(
//                       title:  Text(sizes.size),
//                       subtitle:  Text("\$ ${sizes.price.toString()}"),
//                       trailing: SizedBox(
//                         width: 110,
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             InkWell(
//                               onTap: (){
//                                 setState(() {
//                                   _increase();
//                                 });
//                               },
//                               child: Container(
//                                 width:35,
//                                 height: 35,
//                                 decoration:BoxDecoration(
//                                   color: Colors.brown,
//                                   borderRadius: BorderRadius.circular(8),
//                                 ),
//                                 child: const Icon(Icons.remove, color: Colors.white,),),
//                             ),
//                             const SizedBox(width: 5,),
//                             Text(counter.toString(),
//                               style: const TextStyle(
//                                   fontWeight:FontWeight.normal,
//                                   fontSize: 19),),
//                             const SizedBox(width: 5,),
//                             Container(
//                               width:35,
//                               height: 35,
//                               decoration:BoxDecoration(
//                                 color: Colors.brown,
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: const Icon(Icons.add, color: Colors.white,),),
//                           ],
//                         ),
//                       ),
//                     );
//                   }),
//             ),
//             const SizedBox(
//             ),
//             const SizedBox(height: 16.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//
//                     Navigator.pop(context);
//                   },
//                   child: const Text('Proceed with Order'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: const Text('Continue Shopping'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       );
//     }
//   }
//
//   class MyDialog extends StatefulWidget {
//     const MyDialog({super.key});
//
//     @override
//     State<MyDialog> createState() => _MyDialogState();
//   }
//
//   class _MyDialogState extends State<MyDialog> {
//     @override
//     Widget build(BuildContext context) {
//       return const Placeholder();
//     }
//   }
