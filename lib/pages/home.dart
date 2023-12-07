import 'package:flutter/material.dart';
import 'package:lodger_rent/theme/colors.dart';
import 'package:lodger_rent/widgets/custom_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double deviceWidth;
  late double deviceHeight;
  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          RectangleTop(width: deviceWidth, height: deviceHeight * 0.20),
          SizedBox(
              width: deviceWidth, height: deviceHeight, child: mainContain()),
          Align(
            alignment: Alignment.bottomCenter,
            child:
                RectangleBot(width: deviceWidth, height: deviceHeight * 0.18),
          )
        ],
      )),
    );
  }

  Widget mainContain() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: deviceHeight * 0.055),
          child: const Texte(
              txt: "UTILISATEUR",
              maxline: 2,
              fontsize: 20,
              color: Colors.white,
              fontweight: FontWeight.bold,
              alignText: TextAlign.center),
        ),
        SizedBox(
          height: deviceHeight * 0.14,
        ),
        DisplayImages(
            width: deviceWidth,
            height: deviceHeight * 0.25,
            link: "assets/Fichier.png",
            fit: BoxFit.cover),
        SizedBox(
          height: deviceHeight * 0.055,
        ),
        CustomButton(
          deviceWidth: deviceWidth * 0.60,
          deviceHeight: deviceHeight * 0.055,
          onPressed: () {},
          text: "PROPRIETAIRE",
          color: primary,
        ),
        SizedBox(
          height: deviceHeight * 0.055,
        ),
        CustomButton(
          deviceWidth: deviceWidth * 0.60,
          deviceHeight: deviceHeight * 0.055,
          onPressed: () {},
          text: "LOCATAIRE",
          color: secondary,
        )
      ],
    );
  }
}
