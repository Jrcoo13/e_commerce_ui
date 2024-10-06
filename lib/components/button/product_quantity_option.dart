import 'package:e_commerce_ui/assets/constant/colors.dart';
import 'package:flutter/material.dart';

class ProductQuantitySelection extends StatefulWidget {
  final double widgetSize;

  const ProductQuantitySelection({super.key, required this.widgetSize});

  @override
  // ignore: no_logic_in_create_state
  State<ProductQuantitySelection> createState() => _ProductQuantitySelectionState(widgetSize: widgetSize);
}

class _ProductQuantitySelectionState extends State<ProductQuantitySelection> {

 final double widgetSize;

 _ProductQuantitySelectionState({required this.widgetSize});

  //quantity , default value is 1
  int quantity = 1;

  void increase(int index){
    setState(() {
      quantity += index;
    });
  }
  void decrease(int index){
    setState(() {
      if(quantity != 1) {
        quantity -= index;
      }
      quantity;
    });
  }

  int getQuantity(){
    return quantity;
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //decrease
        GestureDetector(
          onTap: () => decrease(1),
          child: Container(
            decoration: BoxDecoration(
              color: AppColor().black3,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(
                'lib/assets/icons/minus.png',
                color: AppColor().white,
                height: 12,
              ),
            )
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        //quantity
        Text(
          quantity.toString(),
          style: TextStyle(
              color: AppColor().white,
              fontSize: 24 - (widgetSize/2),
              fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          width: 15,
        ),
        //increase
        GestureDetector(
          onTap: () => increase(1),
          child: Container(
            decoration: BoxDecoration(
                color: AppColor().black3,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(
                'lib/assets/icons/plus.png',
                color: AppColor().white,
                height: 12,
              ),
            )
          ),
        ),
      ],
    );
  }
}
