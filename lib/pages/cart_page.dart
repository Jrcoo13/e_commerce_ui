import 'package:e_commerce_ui/components/tile/add_to_cart_tile.dart';
import 'package:e_commerce_ui/data/cart.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_ui/assets/constant/colors.dart';

// ignore: must_be_immutable
class CartPage extends StatefulWidget {
  CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  //delete function for deleting the product on cart
  void deleteProduct() {
    setState(() {});
  }

  //instance of cart list
  CartData cartList = CartData();

  //add the product to cart list
  void addToCart(String imagePath, String productName, double price,
      Color color, String variant) {
    cartList.cart.add([imagePath, productName, price, color, variant]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor().black1,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColor().white),
        backgroundColor: AppColor().black1,
        elevation: 0,
        title: Text(
          'Inbox',
          style: TextStyle(
            color: AppColor().white,
            fontWeight: FontWeight.w400,
            fontSize: 24,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              children: [
                Icon(Icons.more_horiz_outlined, size: 35),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 260,
        decoration: BoxDecoration(
          color: AppColor().black2,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
          child: Column(
            children: [
              //subtotal
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal:',
                    style: TextStyle(
                      color: AppColor().white,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '0.00',
                    style: TextStyle(
                        color: AppColor().white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              //delivery fee
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery Fee:',
                    style: TextStyle(fontSize: 16, color: AppColor().white),
                  ),
                  Text('0.00',
                      style: TextStyle(
                          color: AppColor().white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700)),
                ],
              ),
              const SizedBox(height: 10),
              //discount
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Discount:',
                    style: TextStyle(
                      color: AppColor().white,
                      fontSize: 16,
                    ),
                  ),
                  Text('0.00',
                      style: TextStyle(
                          color: AppColor().white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //separator
              Container(
                width: 400,
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.shade700, width: 0.5))),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                //ontap event for check out
                onTap: () => {},
                child: Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColor().PRIMARY_COLOR,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(
                      'Check Out',
                      style: TextStyle(
                          color: AppColor().white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      body: Container(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: my_cart.length,
          itemBuilder: (context, index) => AddToCartTile(
              imagePath: my_cart[index][0],
              product: my_cart[index][1],
              description: my_cart[index][2],
              price: double.parse(my_cart[index][3].toString()),
              deleteItem: my_cart[index][4]),
        ),
      ),
    );
  }

  List my_cart = [
    [
      'lib/assets/images/iphone15-black.png',
      'iPhone 15 Pro',
      'Black - 256',
      70990,
      (e) => {}
    ],
    [
      'lib/assets/images/macbookAirM1.png',
      'Macbook Air M1',
      'Grey - 8/256',
      44990,
      (e) => {}
    ],
    [
      'lib/assets/images/headphone-black2.png',
      'Air Pods (Gen 2)',
      'White',
      8490,
      (e) => {}
    ],
    [
      'lib/assets/images/airbods-white.png',
      'Air Pods Max',
      'White',
      32990,
      (e) => {}
    ],
  ];
}
