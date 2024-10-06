import 'package:e_commerce_ui/assets/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class ProductTile extends StatelessWidget {
  //Product product;
  final String image;
  final String description;
  double price;
  final double ratings;
  final int soldProduct;
  VoidCallback onTap;

  ProductTile(
      {super.key,
      // required this.product,
      required this.image,
      required this.description,
      required this.price,
      required this.ratings,
      required this.soldProduct,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 25,),
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: 200,
            decoration: BoxDecoration(
                color: AppColor().black2, 
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                //product image
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, top: 30, right: 20, bottom: 30),
                      child: SizedBox(
                          child:
                              Image.asset(image, height: 100, fit: BoxFit.fill)),
                    ),
                  ],
                ),
                //product name and short description
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: SizedBox(
                      child: Text(
                        description,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: AppColor().white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                //product price
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("₱${NumberFormat("#,##0.00", "en_US").format(price)}",
                          style: TextStyle(
                              color: AppColor().white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                ),
                //Ratings and number of sold product
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: const EdgeInsets.only(
                              left: 5, top: 2, right: 5, bottom: 2),
                          decoration: BoxDecoration(
                              color: AppColor().black3,
                              borderRadius: BorderRadius.circular(6),
                              // border: Border.all(
                              //     width: 1, color: Colors.amber.shade600)
                                ),
                          child: Row(
                            children: [
                              //ratings icon
                              Icon(
                                Icons.star,
                                size: 16,
                                color: AppColor().white
                              ),
                              const SizedBox(width: 5),
                              //number of ratings
                              Text(
                                ratings.toString(),
                                style: TextStyle(
                                  color: AppColor().white
                                ),
                              ),
                            ],
                          )),
                      const SizedBox(width: 15),
                      //number of product sold
                      Text(
                        '${soldProduct.toString()} sold',
                        style: TextStyle(
                          color: AppColor().white
                        )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
