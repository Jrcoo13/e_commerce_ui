import 'dart:async';
import 'package:e_commerce_ui/pages/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:e_commerce_ui/components/tile/discount_tile.dart';
import 'package:e_commerce_ui/components/tile_header.dart';
import 'package:e_commerce_ui/components/tile/categories_tile.dart';
import 'package:e_commerce_ui/components/plain_icon.dart';
import 'package:e_commerce_ui/components/tile/product_tile.dart';
import 'package:e_commerce_ui/components/search_field.dart';
import 'package:e_commerce_ui/assets/constant/colors.dart';
import 'package:e_commerce_ui/data/product_data.dart';
import 'package:e_commerce_ui/pages/product_details_page.dart';
import 'package:e_commerce_ui/utils/categories.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  Timer? _autoSlideTimer;

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    _autoSlideTimer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_pageController.hasClients) {
        int nextPage = (_pageController.page?.toInt() ?? 0) + 1;
        if (nextPage >= 3) nextPage = 0;
        _pageController.animateToPage(
          nextPage,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
          // curve: Curves.linearToEaseOut,
          // curve: Curves.fastOutSlowIn,
        );
      }
    });
  }

  @override
  void dispose() {
    _autoSlideTimer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  // Sample product data
  Product product = Product();

  // List of categories
  List<Categories> categories = [
    Categories(
        label: 'All',
        foregroundColor: AppColor().white,
        backgroundColor: AppColor().black3),
    Categories(
        label: 'Smartphones',
        foregroundColor: AppColor().white,
        backgroundColor: AppColor().black1),
    Categories(
        label: 'Laptops',
        foregroundColor: AppColor().white,
        backgroundColor: AppColor().black1),
    Categories(
        label: 'Earphones',
        foregroundColor: AppColor().white,
        backgroundColor: AppColor().black1),
    Categories(
        label: 'Headsets',
        foregroundColor: AppColor().white,
        backgroundColor: AppColor().black1),
    Categories(
        label: 'Accessories',
        foregroundColor: AppColor().white,
        backgroundColor: AppColor().black1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor().black1,
      appBar: AppBar(
        backgroundColor: AppColor().black1,
        automaticallyImplyLeading: false,
        leading: null,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discover',
                style: TextStyle(
                  color: AppColor().white,
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: PlainIcon(
              icon: 'lib/assets/icons/cart.png',
              size: 46,
              color: AppColor().white,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartPage(),
                ),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              // Search field and filter
              const Padding(
                padding:
                    EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 20),
                child: SearchField(),
              ),
              // Discount tile with auto-sliding
              Column(
                children: [
                  SizedBox(
                    height: 179,
                    width: double.infinity,
                    child: PageView(
                      controller: _pageController,
                      scrollDirection: Axis.horizontal,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20, top: 10, right: 20, bottom: 20),
                          child: DiscountTile(
                              imagePath: 'lib/assets/images/iphone.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20, top: 10, right: 20, bottom: 20),
                          child: DiscountTile(
                              imagePath:
                                  'lib/assets/images/headphone-black.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20, top: 10, right: 20, bottom: 20),
                          child: DiscountTile(
                              imagePath:
                                  'lib/assets/images/airbods-white2.png'),
                        ),
                      ],
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: 3,
                    effect: ExpandingDotsEffect(
                        dotWidth: 10,
                        dotHeight: 10,
                        activeDotColor: AppColor().white,
                        dotColor: AppColor().black3),
                  ),
                ],
              ),
              // Categories header label
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: TileHeader(title: 'Categories', action: 'See all'),
              ),
              // Categories header list view
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                      child: ListView.builder(
                        itemCount: categories.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            CategoriesTile(categories: categories[index]),
                      ),
                    ),
                  ],
                ),
              ),
              // Products tile
              Container(
                width: 500,
                height: 269,
                decoration: const BoxDecoration(),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: product.productData.length,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) => ProductTile(
                    image: product.productData[index][0][0],
                    description: product.productData[index][1],
                    price: product.productData[index][2],
                    ratings: product.productData[index][3],
                    soldProduct: product.productData[index][4],
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProductDetails(productIndex: index),
                      ),
                    ),
                  ),
                ),
              ),
              // Recently viewed products header
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: TileHeader(title: 'Recently Viewed', action: 'See all'),
              ),
              // Recently viewed products
              Container(
                width: 500,
                height: 269,
                decoration: const BoxDecoration(),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: product.recentlyViewedProduct.length,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) => ProductTile(
                    image: product.recentlyViewedProduct[index][0][0],
                    description: product.recentlyViewedProduct[index][1],
                    price: double.parse(
                        product.recentlyViewedProduct[index][2].toString()),
                    ratings: product.recentlyViewedProduct[index][3],
                    soldProduct: product.recentlyViewedProduct[index][4],
                    onTap: () => print(product.recentlyViewedProduct[index][1]),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
