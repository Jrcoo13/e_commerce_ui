import 'package:e_commerce_ui/assets/constant/colors.dart';
import 'package:e_commerce_ui/components/button/product_quantity_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class AddToCartTile extends StatelessWidget {
  final String imagePath;
  final String product;
  final String description;
  final double price;
  final Function(BuildContext)? deleteItem;

  AddToCartTile({
    super.key,
    required this.imagePath,
    required this.product,
    required this.description,
    required this.price,
    required this.deleteItem,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              flex: 1,
              autoClose: true,
              onPressed: deleteItem,
              icon: Icons.delete,
              label: 'Delete',
              foregroundColor: Colors.red.shade400,
              backgroundColor: AppColor().black1,
              borderRadius: BorderRadius.circular(20),
            ),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          constraints: BoxConstraints(
            maxWidth: double.infinity,
          ),
          height: 140,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey.shade700, width: 0.5),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product image
              Container(
                decoration: BoxDecoration(
                  color: AppColor().black2,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    imagePath,
                    height: 60,
                    width: 60,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    // Product name
                    Text(
                      product,
                      style: TextStyle(
                        color: AppColor().white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    // Product description
                    Text(
                      description,
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                    const SizedBox(height: 10),
                    // Product price and quantity
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Ensure this text does not overflow
                        Flexible(
                          child: Text(
                            '₱${NumberFormat("#,##0.00", "en_US").format(price)}',
                            style: TextStyle(
                              color: AppColor().white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        ProductQuantitySelection(widgetSize: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
