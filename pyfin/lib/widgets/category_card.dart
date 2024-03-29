import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pyfin/utils/global.dart';

import '../utils/constants.dart';
//import 'package:meditation_app/constants.dart';

class CategoryCard extends StatelessWidget {
  final List<dynamic> name;
  final int index;
  final String svgSrc;
  final String title;
  final Function press;
  const CategoryCard({
    Key key,
    this.name,
    this.index,
    this.svgSrc,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: kShadowColor,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  // Spacer(),
                  //  SvgPicture.asset(svgSrc),
                  Image(
                    image: AssetImage(svgSrc),
                  ),
                  Spacer(),
                  LinearPercentIndicator(
                    width: 110.0,
                    lineHeight: 14.0,
                    percent: (double.parse(percentage[map[name[index]]]) / 100),
                    backgroundColor: kSecondaryColor,
                    progressColor: kComplimentaryColor,
                  ),

                  Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: kTextLight),
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
