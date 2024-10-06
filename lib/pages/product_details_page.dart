import 'package:e_commerce_ui/components/plain_icon.dart';
import 'package:e_commerce_ui/components/button/product_color_picker.dart';
import 'package:e_commerce_ui/components/button/product_quantity_option.dart';
import 'package:e_commerce_ui/components/review_container.dart';
import 'package:e_commerce_ui/assets/constant/colors.dart';
import 'package:e_commerce_ui/data/cart.dart';
import 'package:e_commerce_ui/data/product_data.dart';
import 'package:e_commerce_ui/pages/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:intl/intl.dart';

class ProductDetails extends StatefulWidget {
  final int productIndex;
  const ProductDetails({super.key, required this.productIndex});

  @override
  // ignore: no_logic_in_create_state
  State<ProductDetails> createState() => _ProductDetailsState(productIndex: productIndex);
}

class _ProductDetailsState extends State<ProductDetails> {

  //instance of cart list
  CartData cartList = CartData();

  //add the product to cart list
  void addToCart(String imagePath, String productName, double price, Color color, String variant){
    cartList.cart.add([imagePath, productName, price, color, variant]);
  }

  final int productIndex; 

  _ProductDetailsState({required this.productIndex});
//color picker controller
  int isSelectedColor = 0;

//liked tracker
  bool onTap = false;

//smooth_page_indicator controller
  final _controller = PageController();

//sample product data
  Product product = Product();

  void getSelectedColor(int index) {
    setState(() {
      isSelectedColor = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor().black1,
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: AppColor().white),
          backgroundColor: AppColor().black1,
          title: Center(child: Text('Product Details', style: TextStyle(color: AppColor().white))),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: PlainIcon(
                  icon: 'lib/assets/icons/cart.png',
                  size: 46,
                  color: AppColor().white,
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (s) => CartPage())),
                ),
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            color: AppColor().black1,
          ),
          child: Column(
            children: [
              //product image
              Container(
                width: double.infinity,
                height: 320,
                decoration: BoxDecoration(
                  color: AppColor().black1,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: SizedBox(
                        height: 250,
                        child: PageView.builder(
                          controller: _controller,
                          itemCount: product
                              .productData[widget.productIndex][0].length,
                          itemBuilder: (context, index) => SizedBox(
                              height: 250,
                              child: Image.asset(product
                                  .productData[widget.productIndex][0][index]),
                                ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SmoothPageIndicator(
                      controller: _controller,
                      count: product.productData[widget.productIndex][0].length,
                      effect: ExpandingDotsEffect(
                          activeDotColor: AppColor().white,
                          dotColor: AppColor().black3,
                          dotHeight: 10,
                          dotWidth: 10),
                    )
                  ],
                ),
              ),
              //shipping info and saved to favorites
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 40, right: 20, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //product ratings
                    Row(
                      children: [
                        ReviewContainer(
                          icon: const Icon(Icons.star),
                          iconSize: 20.0,
                          iconColor: AppColor().white,
                          data: product.productData[widget.productIndex][3],
                          reviews: product.productData[widget.productIndex][6],
                        ),
                      ],
                    ),
                    //product reviews
                    //add to my favorite icon
                    Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              width: 1,
                              color: AppColor().black3,
                            )),
                        child: GestureDetector(
                          onTap: () => setState(() {
                            onTap = !onTap;
                          }),
                          child: Image.asset(
                            'lib/assets/icons/heart.png',
                            height: 20,
                            color:
                                onTap == true ? Colors.red : AppColor().white,
                          ),
                        )),
                  ],
                ),
              ),
              //product name
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      product.productData[widget.productIndex][1],
                      style: TextStyle(
                          color: AppColor().white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              //product description
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 25),
                child: SizedBox(
                  child: Text(
                    'lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem loremlorem lorem lorem lorem lorem lorem lorem lorem lorem',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.grey[500], fontSize: 16),
                  ),
                ),
              ),
              //price and product colors available
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //product price
                    Text(
                      // ignore: prefer_interpolation_to_compose_strings
                      '₱${NumberFormat("#,##0.00", "en_US").format(product.productData[widget.productIndex][2])}',
                      style: TextStyle(
                          color: AppColor().white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    //product color options
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => getSelectedColor(0),
                          child: ProductColorRoundPicker(
                            color: AppColor().black3,
                            isSelected: isSelectedColor == 0 ? true : false,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => getSelectedColor(1),
                          child: ProductColorRoundPicker(
                            color: Colors.grey,
                            isSelected: isSelectedColor == 1 ? true : false,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => getSelectedColor(2),
                          child: ProductColorRoundPicker(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            isSelected: isSelectedColor == 2 ? true : false,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //separator
              const Padding(
                padding: EdgeInsets.only(bottom: 80),
              ),
              //product option selection
              Container(
                width: double.infinity,
                height: .5,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 183, 183, 183),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 20, top: 20, right: 20, bottom: 30),
                width: double.infinity,
                height: 111,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //quantity options
                    const ProductQuantitySelection(widgetSize: 10),
                    //add to cart button
                    Container(
                      height: 60,
                      padding: const EdgeInsets.only(
                          left: 50, top: 0, right: 50, bottom: 0),
                      decoration: BoxDecoration(
                        color: AppColor().PRIMARY_COLOR,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'Add to Cart',
                          style: TextStyle(
                              color: AppColor().white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
