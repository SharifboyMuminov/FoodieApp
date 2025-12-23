import 'package:flutter/material.dart';
import 'package:foodie_app_2/pages/detail_product/detail_page.dart';
import 'package:foodie_app_2/pages/home/widget/categories_view.dart';
import 'package:foodie_app_2/pages/home/widget/home_search_item.dart';
import 'package:foodie_app_2/pages/home/widget/product_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        title: Text(
          "Home",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
        ),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [
          Container(
            width: 60,
            height: 90,
            margin: EdgeInsets.only(right: 20, bottom: 10),
            padding: EdgeInsets.only(left: 1, top: 4, right: 1),
            decoration: BoxDecoration(
              color: Color(0xFFFF6B01),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset("assets/images/user.png"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 100),
        child: Column(
          children: [
            HomeSearchItem(),
            CategoriesView(),
            SizedBox(height: 20),
            ProductView(),
            Padding(
              padding: const EdgeInsets.only(
                left: 18,
                right: 18,
                bottom: 15,
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Items",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Popular Items",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFFF6B01),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 11),
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Align(
                    alignment: AlignmentGeometry.center,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DetailPage();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: 200,
                        height: 100,
                        margin: EdgeInsets.symmetric(horizontal: 7),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.15),
                              blurRadius: 10,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // mainAxisSize: MainAxisSize.s,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/images/eat2.png"),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Prawn mix Rice",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),

                                  Text(
                                    "Rice",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    "\$5.99",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFFFF6B01),
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 108,
        child: Stack(
          alignment: AlignmentGeometry.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 30,
                    offset: Offset(0, -10),
                  ),
                ],
              ),
              height: 90,
              child: CustomPaint(
                painter: BottomBarPainterOutward(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.shopping_bag_outlined,
                        size: 30,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        size: 30,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: 60),
                    IconButton(
                      icon: Icon(
                        Icons.settings_outlined,
                        size: 30,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.person_outline,
                        size: 30,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentGeometry.topCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(16),
                  backgroundColor: Color(0xFFFF6B01),
                ),
                onPressed: () {},
                child: Icon(Icons.home_filled, color: Colors.white, size: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomBarPainterOutward extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path = Path();

    // Start from top left
    path.moveTo(0, 0);

    // Line to start of curve
    path.lineTo(size.width * 0.35, 0);

    // Left curve up
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.43, -15);

    // Top curve
    path.quadraticBezierTo(size.width * 0.47, -25, size.width * 0.50, -25);

    // Right top curve
    path.quadraticBezierTo(size.width * 0.53, -25, size.width * 0.57, -15);

    // Right curve down
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);

    // Complete the rectangle
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
