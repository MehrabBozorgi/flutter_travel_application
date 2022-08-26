import 'package:flutter/material.dart';
import 'package:flutter_travel_app_ui/screens/second_screen.dart';
import 'package:flutter_travel_app_ui/tools/border.dart';
import 'package:flutter_travel_app_ui/tools/colors.dart';

import '../tools/styles.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.blue,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: width * 0.04,
                top: height * 0.02,
                bottom: height * 0.02,
                right: width * 0.02,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.menu_rounded,
                          color: darkColor1,
                          size: width * 0.08,
                        ),
                        Container(
                          padding: EdgeInsets.all(width * 0.01),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: getBorderRadiusWidget(context, 1),
                          ),
                          child: Icon(
                            Icons.person,
                            color: Colors.yellow,
                            size: width * 0.07,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Text(
                    'Hey, Alex',
                    style: textStyle3,
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    'Explore and find\nyour favorite place',
                    style: textStyle1,
                  ),
                  SizedBox(height: height * 0.03),
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.03),
                          width: width * 0.75,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: getBorderRadiusWidget(context, 0.03),
                            boxShadow: [
                              BoxShadow(
                                color: greyColor,
                                offset: const Offset(1, 1),
                                blurRadius: 3,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search_rounded,
                                color: greyColor,
                              ),
                              SizedBox(width: width * 0.03),
                              Text(
                                'Search for plants',
                                style: textStyle11,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: width * 0.12,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                            color: darkColor1,
                            borderRadius: getBorderRadiusWidget(context, 0.02),
                          ),
                          child: const Icon(
                            Icons.filter_alt_outlined,
                            color: whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.07,
                            vertical: height * 0.009,
                          ),
                          decoration: BoxDecoration(
                            color: greyColor,
                            borderRadius: getBorderRadiusWidget(context, 0.02),
                          ),
                          child: Text(
                            'All',
                            style: textStyle6,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.07),
                          child: Text(
                            'Popular',
                            style: textStyle11,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.07),
                          child: Text(
                            'Nearby',
                            style: textStyle11,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.07),
                          child: Text(
                            'Best Deals',
                            style: textStyle11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.04),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Categories',
                          style: textStyle2,
                        ),
                        Text(
                          'See All',
                          style: textStyle11,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoriesWidgets(
                          width: width,
                          height: height,
                          image: 'pic2.jpg',
                          name: 'Beach',
                        ),
                        SizedBox(width: width * 0.03),
                        CategoriesWidgets(
                          width: width,
                          height: height,
                          image: 'pic3.jpg',
                          name: 'Mountain',
                        ),
                        SizedBox(width: width * 0.03),
                        CategoriesWidgets(
                          width: width,
                          height: height,
                          image: 'pic4.jpg',
                          name: 'Desert',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.04),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Top Destination',
                          style: textStyle2,
                        ),
                        Text(
                          'See All',
                          style: textStyle11,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        TopDestinationWidget(
                          width: width,
                          height: height,
                          name: 'Maldive',
                          image: 'pic5.jpg',
                          location: 'Maldive, South Asia',
                        ),
                        SizedBox(width: width*0.03),
                        TopDestinationWidget(
                          width: width,
                          height: height,
                          name: 'Kailua',
                          image: 'pic6.jpg',
                          location: 'Oahu, Hawaii',
                        ),
                        SizedBox(width: width*0.03),
                        TopDestinationWidget(
                          width: width,
                          height: height,
                          name: 'Maldive',
                          image: 'pic5.jpg',
                          location: 'Maldive, South Asia',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TopDestinationWidget extends StatelessWidget {
  const TopDestinationWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.name,
    required this.image,
    required this.location,
  }) : super(key: key);

  final double width;
  final double height;
  final String name;
  final String image;
  final String location;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SecondScreen()),);
      },
      child: Container(
        alignment: Alignment.bottomCenter,
        width: width * 0.55,
        height: height * 0.19,
        decoration: BoxDecoration(
          borderRadius: getBorderRadiusWidget(context, 0.03),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: width * 0.55,
          height: height * 0.11,
          padding: EdgeInsets.symmetric(
            vertical: height * 0.02,
            horizontal: width * 0.02,
          ),
          decoration: BoxDecoration(
            borderRadius: getBorderRadiusWidget(context, 0.03),
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                darkColor1,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                name,
                style: textStyle8,
              ),
              SizedBox(height: height * 0.01),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: whiteColor,
                    size: width * 0.05,
                  ),
                  Text(
                    location,
                    style: textStyle13,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriesWidgets extends StatelessWidget {
  const CategoriesWidgets({
    Key? key,
    required this.width,
    required this.height,
    required this.name,
    required this.image,
  }) : super(key: key);

  final double width;
  final double height;
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SecondScreen()),);
      },
      child: Container(
        alignment: Alignment.bottomCenter,
        width: width * 0.35,
        height: height * 0.22,
        decoration: BoxDecoration(
          borderRadius: getBorderRadiusWidget(context, 0.03),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: width * 0.35,
          height: height * 0.06,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: getBorderRadiusWidget(context, 0.03),
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                darkColor1,
                darkColor1,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Text(
            name,
            style: textStyle9,
          ),
        ),
      ),
    );
  }
}
