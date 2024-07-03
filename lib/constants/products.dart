

class FootWears {

  final String brand;
  final String name;
  final int price;
  final String imgUrl;

  FootWears(
      {
        required this.brand,
        required this.name,
        required this.price,
        required this.imgUrl,

      });
}

final List<FootWears> footWears = [

FootWears(
brand: "Adidas",
name: "UltraBoost 21",
price: 180000,
  imgUrl: "assets/images/s1.png"
),

FootWears(
brand: "Puma",
name: "RS-X³",
price: 120000,
    imgUrl: "assets/images/s2.png"
),

FootWears(
brand: "Reebok",
name: "Nano X1",
price: 150000,
    imgUrl: "assets/images/s3.png"
),

FootWears(
brand: "New Balance",
name: "Fresh Foam 1080v11",
price: 160000,
    imgUrl: "assets/images/s4.png"
),

FootWears(
brand: "Under Armour",
name: "HOVR Phantom 2",
price: 140000,
    imgUrl: "assets/images/s5.png"
),

FootWears(
brand: "ASICS",
name: "Gel-Kayano 27",
price: 130000,
    imgUrl: "assets/images/s6.png"
),

];




class HotDeals {

  final String brand;
  final String name;
  final int price;
  final String imgUrl;

  HotDeals(
      {
        required this.brand,
        required this.name,
        required this.price,
        required this.imgUrl,

      });
}

final List<HotDeals> hotDeals = [

  HotDeals(
      brand: "Adidas",
      name: "Ultraboost 21",
      price: 180000,
      imgUrl: "assets/images/s7.png"
  ),

  HotDeals(
      brand: "Puma",
      name: "RS-X³ Puzzle",
      price: 90000,
      imgUrl: "assets/images/s8.png"
  ),

  HotDeals(
      brand: "Reebok",
      name: "Nano X1",
      price: 110000,
      imgUrl: "assets/images/s9.png"
  ),

  HotDeals(
      brand: "Asics",
      name: "GT-2000 9",
      price: 120000,
      imgUrl: "assets/images/s10.png"
  ),

  HotDeals(
      brand: "New Balance",
      name: "Fresh Foam 1080v11",
      price: 160000,
      imgUrl: "assets/images/s11.png"
  ),

  HotDeals(
      brand: "Under Armour",
      name: "HOVR Phantom 2",
      price: 150000,
      imgUrl: "assets/images/s12.png"
  ),

  HotDeals(
      brand: "Saucony",
      name: "Ride 14",
      price: 140000,
      imgUrl: "assets/images/s13.png"
  ),

  HotDeals(
      brand: "Brooks",
      name: "Ghost 13",
      price: 130000,
      imgUrl: "assets/images/s14.png"
  ),


];


class ShoeSizes {

  final String size;
  final int price;


  ShoeSizes(
      {
        required this.size,
        required this.price,

      });
}
final List<ShoeSizes> shoeSize = [

  ShoeSizes(
    size: "US 10",
    price: 3000,
  )
,
  ShoeSizes(
    size: "UK 8",
    price: 3200,
  )
,
  ShoeSizes(
    size: "EU 42",
    price: 3100,
  )
,
  ShoeSizes(
    size: "JP 28",
    price: 3400,
  )
,
  ShoeSizes(
    size: "AU 9",
    price: 3300,
  )


];
