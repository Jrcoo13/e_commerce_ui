import 'package:e_commerce_ui/assets/constant/colors.dart';
import 'package:flutter/material.dart';

class Product {
  List productData = [
    [
      ["lib/assets/images/iphone15-black.png", "lib/assets/images/iphone15-black2.png", "lib/assets/images/iphone15-black3.png"], //product image
      'Apple iPhone 15 Pro', //description
      70990.50, //price
      4.8, //ratings
      28, //product sold
      ['128GB', '256GB', '512GB', '1TB'], //specs options
      112, //reviews
      [AppColor().black]//color available
    ],
    [
      ["lib/assets/images/macbookAirM1.png", "lib/assets/images/macbookAirM1_2.png", "lib/assets/images/macbookAirM1_3.png"], //product image
      'Macbook Air (M1)', //description
      44999.00, //price
      5.0, //ratings
      50, //product sold
      ['8/256', '8/512'], //specs available
      89, //reviews
      [Colors.grey[400], Colors.pink, Colors.grey[200]],//color available
    ],
    [
      ["lib/assets/images/airbods-white.png", "lib/assets/images/airbods-white2.png", "lib/assets/images/airbods-white3.png"], //product image
      'Air Pods (Gen 2)', //description
      8490.00, //price
      5.0, //ratings
      58, //product sold
      [], //specs options
      221, //reviews
      [AppColor().white],//color available
    ],
    [
      ["lib/assets/images/headphone-black.png", "lib/assets/images/headphone-black2.png", "lib/assets/images/headphone-black3.png"], //product image
      'Air Pods Max', //description
      32990.50, //price
      4.8, //ratings
      8, //product sold
      [], //specs options
      100, //reviews
      [AppColor().black],//color available
    ],
  ];

  List recentlyViewedProduct = [
    [
      ["lib/assets/images/macbookAirM1.png"], //product image
      'Macbook Air (M1)', //description
      44999, //price
      5.0, //ratings
      50, //product sold
      ['8/256', '8/512'], //specs available
      89, //reviews
    ],
    [
      ["lib/assets/images/iphone15-black.png", "lib/assets/images/macbookAirM1_2.png" ], //product image
      'Apple iPhone 15 Pro', //description
      70990, //price
      4.8, //ratings
      28, //product sold
      ['128GB', '256GB', '512GB', '1TB'], //specs options
      112, //reviews
    ],
  ];
}