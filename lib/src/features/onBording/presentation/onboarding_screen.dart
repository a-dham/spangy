import 'package:flutter/material.dart';
import 'package:spangy/src/core/utils/constant.dart';
import 'package:spangy/src/core/utils/size_config.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double size = SizeConfig.defaultSize!;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/onBoarding1.png')),
        ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color(0xff0A0909).withOpacity(0.70),
          padding: EdgeInsets.only(
            top: size * 6,
            left: size * 2,
            bottom: size * 2.5,
            right: size * 2,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                'assets/images/Spangy.png',
                height: size * 2.5,
              ),
            ),
            Spacer(),
            Text(
              'AWESOME',
              style: TextStyle(
                  fontSize: size * 3.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Roboto'),
            ),
            Row(
              children: [
                Text(
                  'SPANISH',
                  style: TextStyle(
                      fontSize: size * 3.5,
                      fontWeight: FontWeight.bold,
                      color: kMainColor,
                      fontFamily: 'Roboto'),
                ),
                SizedBox(
                  width: size,
                ),
                Text(
                  'FOOD',
                  style: TextStyle(
                      fontSize: size * 3.5,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Roboto'),
                )
              ],
            ),
            SizedBox(
              height: size,
            ),
            Text(
              'The best Spanish food in Egypt. ',
              style: TextStyle(
                fontSize: size * 2.5,
                fontWeight: FontWeight.w300,
                color: Colors.white,
                fontFamily: 'Roboto',
              ),
            ),
            SizedBox(
              height: size * 4,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Next',
                style: TextStyle(
                    fontSize: size * 2,
                    fontWeight: FontWeight.bold,
                    color: kMainColor,
                    fontFamily: 'Roboto'),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    size,
                  ),
                ),
                minimumSize: Size(double.infinity, size * 7),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
