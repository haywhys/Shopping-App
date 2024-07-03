


import 'package:shoppingapp/constants/products.dart';

class Cart{

  String brandName;
  String productName;
  String productPrice;
  String imgUrl;

  Cart(
      {
        required this.brandName,
        required this.productName,
        required this.productPrice,
        required this.imgUrl,



      });
}

List<FootWears> items = [];
List<HotDeals> hotItems = [];

 getCartTotalPrice(){
  return items.fold(0.0, (previousValue, product)=>previousValue+product.price);

}