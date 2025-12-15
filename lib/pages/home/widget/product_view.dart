import 'package:flutter/material.dart';
import 'package:foodie_app_2/extensions/context_extensions.dart';
import 'package:foodie_app_2/pages/detail_product/detail_page.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  final PageController _pageController = PageController(
    viewportFraction: 0.6,
    initialPage: 1,
  );
  int activeIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 470,
      child: PageView(
        onPageChanged: (v) {
          setState(() {
            activeIndex = v;
          });
        },
        controller: _pageController,
        children: List.generate(5, (index) {
          return Align(
            alignment: AlignmentGeometry.center,
            child: Stack(
              alignment: AlignmentGeometry.center,
              children: [
                AnimatedContainer(
                  width: context.width,
                  height: activeIndex == index ? 400 : 280,
                  duration: Duration(milliseconds: 250),
                  padding: index == activeIndex
                      ? EdgeInsets.only(bottom: 50, top: 200)
                      : EdgeInsets.only(top: 140, bottom: 23),
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.15),
                        blurRadius: 30,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Prawn Mix Salad",
                        style: TextStyle(
                          fontSize: index == activeIndex ? 20 : 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Seafood",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "\$8.99",
                        style: TextStyle(
                          color: Color(0xFFFF6B01),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  child: Image.asset(
                    "assets/images/eat.png",
                    width: 160,
                    height: 160,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: IconButton(
                    style: IconButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailPage();
                          },
                        ),
                      );
                    },
                    icon: AnimatedPadding(
                      duration: Duration(milliseconds: 250),
                      padding: EdgeInsets.all(index == activeIndex ? 15 : 6),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
