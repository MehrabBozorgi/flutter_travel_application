import 'package:flutter/material.dart';
import 'package:flutter_travel_app_ui/tools/border.dart';
import 'package:flutter_travel_app_ui/tools/colors.dart';

import '../tools/styles.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    String desc =
        'A mountain is an elevated portion of the Earth\'s crust, generally with steep sides that show significant exposed bedrock. A mountain differs from a plateau in having a limited summit area, and is larger than a hill.';
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            'pic7.jpg',
            width: width,
            height: height,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: height * 0.06,
            left: width * 0.04,
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(width * 0.01),
                decoration: BoxDecoration(
                  borderRadius: getBorderRadiusWidget(context, 1),
                  color: Colors.white24,
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: whiteColor,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: height * 0.03,
            child: Container(
              width: width * 0.9,
              height: height * 0.45,
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.04,
                vertical: height * 0.02,
              ),
              decoration: BoxDecoration(
                color: darkColor2,
                borderRadius: getBorderRadiusWidget(context, 0.04),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Mountain',
                        style: textStyle7,
                      ),
                      Icon(
                        Icons.bookmark,
                        color: whiteColor,
                        size: width * 0.06,
                      ),
                    ],
                  ),
                  Text(
                    desc,
                    style: textStyle14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Distance',
                            style: textStyle9,
                          ),
                          Text(
                            '205ml',
                            style: textStyle12,
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Elevation',
                            style: textStyle9,
                          ),
                          Text(
                            '3,656 m',
                            style: textStyle12,
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Difficulty',
                            style: textStyle9,
                          ),
                          Text(
                            'Hard',
                            style: textStyle12,
                          ),
                        ],
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: getShapeWidget(context, 0.03),
                      fixedSize: Size(width, height * 0.06),
                      primary: whiteColor,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Join trip',
                      style: textStyle4,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
