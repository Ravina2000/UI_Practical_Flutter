import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui_demo_flutter/color/colors.dart';
import 'package:ui_demo_flutter/navigation_drawer.dart';
import 'constant/app_image_path.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final urlImages = [manGroomingOne, manGroomingTwo, manGroomingThree];
  final shampooImages = [oneShampoo, twoShampoo, threeShampoo, fourShampoo];
  int activeIndex = 0;
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: COLOR_PRIMARY,
        title: Row(
          children: [
            Container(
              height: 50,
              width: 130,
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.whatshot),
                  Text(
                    "THE MAN COMPANY",
                    style: TextStyle(color: Colors.white, fontSize: 8),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: COLOR_PRIMARY_DARK),
                  color: COLOR_PRIMARY_DARK,
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
            ),
            SizedBox(
              width: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.monetization_on),
                Text(
                  "MINS",
                  style: TextStyle(color: Colors.white, fontSize: 8),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.search,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.shopping_cart,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
              options: CarouselOptions(
                  height: 240.0,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  disableCenter: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeIndex = index;
                    });
                  }),
              itemCount: urlImages.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = urlImages[index];
                return buildImage(urlImage, index);
              },
            ),
            SizedBox(height: 10),
            buildIndicator(),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 6.0),
              height: 36,
              child: Text(
                "ESSENTIAL GROOMING KITS",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
            ),
            SizedBox(height: 20),
            essentialKitsListView(),
            Text(
              "VIEW ALL MINSTRIPS",
              style: TextStyle(fontSize: 18, color: Colors.red),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 6.0),
              height: 36,
              child: Text(
                "CURATE YOUR OWN GIFT BOX",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
            ),
            SizedBox(height: 10),
            Image.asset(ad,
                height: 250, width: MediaQuery.of(context).size.width),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 6.0),
              height: 36,
              child: Text(
                "NEW LAUNCHES",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
            ),
            SizedBox(height: 20),
            essentialKitsListView(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 6.0),
              height: 36,
              child: Text(
                "OUR CATEGORIES",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
            ),
            SizedBox(height: 10),
            Stack(
              overflow: Overflow.visible,
              alignment: Alignment.bottomCenter,
              fit: StackFit.loose,
              children: [
                Positioned(
                  child: Image.asset(ad,
                      height: 250, width: MediaQuery.of(context).size.width),
                ),
                Positioned(top: 110, child: ourCategoriesStack()),
              ],
            ),
            SizedBox(height: 220),
           /* Container(
              padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 6.0),
              height: 36,
              child: Text(
                "OUR CATEGORIES",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
            ),*/
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) {
    return Container(
      color: Colors.white,
      child: Image.asset(urlImage, fit: BoxFit.contain),
    );
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
        effect: JumpingDotEffect(
            dotWidth: 10,
            dotHeight: 10,
            dotColor: Colors.grey,
            activeDotColor: COLOR_PRIMARY),
        activeIndex: activeIndex,
        count: urlImages.length);
  }

  Widget essentialKitsListView() {
    return SizedBox(
      height: 300,
      child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10),
          itemCount: 8,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /* Container(
                  width: 30,
                  height: 30,
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    size: 16,
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
                ),*/
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          oneShampoo,
                          height: 100,
                          width: 150,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "LOOK BETTER",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Vitamin strips for boosting your skin and hairs",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(fontSize: 14),
                        ),
                        RatingBarIndicator(
                          rating: 2.75,
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 24.0,
                          direction: Axis.horizontal,
                        ),
                        Text(
                          "11 Reviews",
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "₹ 649",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 6.0),
                          height: 30,
                          child: Text(
                            "ADD TO CART",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1.0, color: Colors.red),
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                        ),
                      ],
                    ),
                    height: 250,
                    width: 170,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          twoShampoo,
                          height: 100,
                          width: 150,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "FEEL BETTER",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Vitamin strips for boosting your skin and hairs",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(fontSize: 14),
                        ),
                        RatingBarIndicator(
                          rating: 2.75,
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 24.0,
                          direction: Axis.horizontal,
                        ),
                        Text(
                          "12 Reviews",
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "₹ 800",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 6.0),
                          height: 30,
                          child: Text(
                            "ADD TO CART",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1.0, color: Colors.red),
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                        ),
                      ],
                    ),
                    height: 250,
                    width: 170,
                  ),
                ),
              ],
            );
          }),
    );
  }

  Widget ourCategoriesStack() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Card(
                elevation: 4,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 320,
                  width: 180,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: Colors.white),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        fourShampoo,
                        height: 100,
                        width: 150,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Lightning Lip Scrub | Brown Sugar And Almond Oil",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      RatingBarIndicator(
                        rating: 2.75,
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemCount: 5,
                        itemSize: 24.0,
                        direction: Axis.horizontal,
                      ),
                      Text(
                        "12 Reviews",
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "₹ 800",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "₹ 629",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "(Save 20%)",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 6.0),
                        height: 30,
                        child: Text(
                          "ADD TO CART",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.0, color: Colors.red),
                            color: Colors.red,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Card(
                elevation: 4,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 320,
                  width: 180,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: Colors.white),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        threeShampoo,
                        height: 100,
                        width: 150,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Sunscreen Lotion | 20+ SPF",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "PA++",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      RatingBarIndicator(
                        rating: 5,
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemCount: 5,
                        itemSize: 24.0,
                        direction: Axis.horizontal,
                      ),
                      Text(
                        "59 Reviews",
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "₹ 699",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "₹ 729",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "(Save 20%)",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 6.0),
                        height: 30,
                        child: Text(
                          "ADD TO CART",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.0, color: Colors.red),
                            color: Colors.red,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        AnimatedSmoothIndicator(
            effect: JumpingDotEffect(
                dotWidth: 10,
                dotHeight: 10,
                dotColor: Colors.grey,
                activeDotColor: COLOR_PRIMARY),
            activeIndex: activeIndex,
            count: 4),
      ],
    );
  }

  Widget buildDotIndicator() {
    return AnimatedSmoothIndicator(
        effect: JumpingDotEffect(
            dotWidth: 10,
            dotHeight: 10,
            dotColor: Colors.grey,
            activeDotColor: COLOR_PRIMARY),
        activeIndex: activeIndex,
        count: urlImages.length);
  }
}
