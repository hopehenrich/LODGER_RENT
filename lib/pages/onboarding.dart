import 'package:flutter/material.dart';
import 'package:lodger_rent/widgets/custom_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RectangleTop(width: deviceWidth, height: deviceHeight * 0.18),
              SizedBox(
                height: deviceHeight * 0.04,
              ),
              Image.asset(
                'assets/batiment.png',
                height: deviceHeight * 0.35,
              ),
              SizedBox(
                height: deviceHeight * 0.04,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.05),
                child: const Texte(
                  txt:
                      "Libérez-vous des inefficacités et frustrations habituelles pour propriétaires et locataires grâce à cette solution tout-en -ONU.",
                  maxline: 5,
                  fontsize: 16.0,
                  color: Colors.black,
                  fontweight: FontWeight.normal,
                  alignText: TextAlign.center,
                ),
              ),
              SizedBox(
                height: deviceHeight * 0.04,
              ),
              ButtonNext(deviceWidth: deviceWidth),
            ],
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: RectangleBot(
                  width: deviceWidth, height: deviceHeight * 0.18)),
        ],
      )),
    );
  }
}
