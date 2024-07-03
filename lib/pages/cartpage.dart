
import 'package:flutter/material.dart';
import '../constants/cart.dart';


class Cartpage extends StatefulWidget {
    const Cartpage({super.key, });




  @override
  State<Cartpage> createState() => _CartpageState();


}

class _CartpageState extends State<Cartpage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCartTotalPrice();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart Page"),
      ),
      body: items.isEmpty &&  hotItems.isEmpty ? const Center(
        child: Text("No Products yet ...",
        style:TextStyle(
          color: Colors.grey,
            fontWeight: FontWeight.w600,
            fontSize: 22),
        ),
      ) :
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(

                itemCount: items.length,
                itemBuilder: (context, int index) {
                  final product = items[index];

                  return Card(
                    color: Colors.brown.shade400,
                    child: ListTile(
                      leading:Image.asset(product.imgUrl),
                    title:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name: ${product.name}",
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600),),
                        Text("Price: \$${product.price}", style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                      trailing: IconButton(onPressed: (){
                        showDialog(context: context, builder: (BuildContext context){
                          return AlertDialog(
                            title: const Text("Warning"),
                            content: const Text("Choose to remove item from cart ?"),
                            actions: [
                              Row(
                                children: [
                                 TextButton(onPressed: (){
                                   setState(() {
                                     items.removeAt(index);
                                   });

                                   Navigator.of(context).pop();
                                   SnackBar(
                                     backgroundColor: Colors.brown.shade800,
                                     closeIconColor: Colors.white,
                                     content: const Text('Product removed from cart successfully',
                                       style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600,
                                           fontSize: 18),
                                       textAlign: TextAlign.center,
                                     ),
                                   );
                                 }, child: const Text("Remove"),
                                 ),

                                  TextButton(onPressed: (){
                                    Navigator.of(context).pop();
                                  }, child: const Text("Cancel"),
                                  ),
                                ],
                              )
                            ],
                          );
                        });

                      },
                        icon: const Icon(Icons.delete, color: Colors.black, size: 45),),
                    ),
                  );
                },
              ),
            ),
            Column(
              children: [

                 Text("Cart Total:  \$${getCartTotalPrice()}"),
                TextButton(onPressed: (){},
                    child: Container(
                      width: MediaQuery.of(context).size.width*.75,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color:
                          Colors.brown.shade400,
                      ),
                        child: const Center(child: Text("Pay Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
                        ),
                        ),
                    ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}
