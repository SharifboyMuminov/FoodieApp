import 'package:flutter/material.dart';
import 'package:foodie_app_2/extensions/context_extensions.dart';
import 'package:foodie_app_2/pages/detail_product/widgets/choose_size_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _activeSizeIndex = 1;
  int _count = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // foregroundColor: Colors.red,
        // excludeHeaderSemantics: true,
        scrolledUnderElevation: 0,
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        title: Text(
          "Food",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_basket_outlined, color: Colors.black),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 120),
            child: Column(
              children: [
                SizedBox(width: context.width),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: .6),
                        blurRadius: 20,
                        offset: Offset(10, 15),
                      ),
                    ],
                  ),
                  child: Image.asset("assets/images/eat.png"),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.only(bottom: 35),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: .4),
                        blurRadius: 20,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _count -= 1;
                          });
                        },
                        icon: Icon(Icons.remove, color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          _count.toString(),
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          _count += 1;
                          setState(() {});
                        },
                        icon: Icon(Icons.add, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Prawn Mix Salad",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.star, color: Colors.amber),
                                Text(
                                  "(4.0)",
                                  style: TextStyle(
                                    color: Color(0xffFF6B01),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "View all reviews",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFFACACAC),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      ChooseSizeButton(
                        title: 'S',
                        onTab: () {
                          setState(() {
                            _activeSizeIndex = 0;
                          });
                        },
                        isActive: _activeSizeIndex == 0,
                      ),
                      SizedBox(width: 25),
                      ChooseSizeButton(
                        title: 'M',
                        onTab: () {
                          setState(() {
                            _activeSizeIndex = 1;
                          });
                        },
                        isActive: _activeSizeIndex == 1,
                      ),
                      SizedBox(width: 25),
                      ChooseSizeButton(
                        title: 'L',
                        onTab: () {
                          setState(() {
                            _activeSizeIndex = 2;
                          });
                        },
                        isActive: _activeSizeIndex == 2,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  child: Align(
                    alignment: AlignmentGeometry.topLeft,
                    child: Text(
                      "\$8.99",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: Color(0xFFFF6B01),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: context.width),
                      Text(
                        "Description",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentGeometry.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: 20,
                top: 10,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.grey.withValues(alpha: 0.01),
                    Colors.grey.withValues(alpha: 0.2),
                    Colors.grey.withValues(alpha: 0.3),
                  ],
                ),
              ),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFF6B01),
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(12),
                    ),
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  SizedBox(width: 50),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFFFF6B01),
                        padding: EdgeInsets.symmetric(vertical: 18),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Add to cart",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
