import 'package:flutter/material.dart';
import 'package:lodger_rent/theme/colors.dart';
import 'package:lodger_rent/widgets/custom_widget.dart';

class LodgerVerification extends StatefulWidget {
  const LodgerVerification({super.key});

  @override
  State<LodgerVerification> createState() => _LodgerVerificationState();
}

class _LodgerVerificationState extends State<LodgerVerification> {
  late double deviceWidth;
  late double deviceHeight;

  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: SizedBox(
        child: Stack(
          children: [
            RectangleTop(width: deviceWidth, height: deviceHeight * 0.20),
            SingleChildScrollView(
              child: SizedBox(
                  width: deviceWidth,
                  height: deviceHeight,
                  child: mainContain()),
            ),
            Positioned(
              bottom: 0,
              child:
                  RectangleBot(width: deviceWidth, height: deviceHeight * 0.15),
            )
          ],
        ),
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
              txt: "LOCATAIRE",
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
          height: deviceHeight * 0.040,
        ),
        const Texte(
            txt: "Code",
            maxline: 2,
            fontsize: 18,
            color: Colors.black,
            fontweight: FontWeight.bold,
            alignText: TextAlign.center),
        SizedBox(
          height: deviceHeight * 0.030,
        ),
        Input(
          inputHeight: deviceHeight * 0.065,
          inputWidth: deviceWidth * 0.80,
          ktype: TextInputType.number,
          ht: "",
          color: secondary,
          rad: 15.0,
          clor: primary,
        ),
        SizedBox(
          height: deviceHeight * 0.020,
        ),
        const Texte(
            txt: "Entrez le code envoyer par votre propriétaire",
            maxline: 4,
            fontsize: 16,
            color: Colors.black,
            fontweight: FontWeight.normal,
            alignText: TextAlign.left),
        SizedBox(
          height: deviceHeight * 0.020,
        ),
        ButtonNext(deviceWidth: deviceWidth)
      ],
    );
  }
}
