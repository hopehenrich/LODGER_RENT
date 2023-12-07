import 'package:flutter/material.dart';
import 'package:lodger_rent/theme/colors.dart';
import 'package:lodger_rent/widgets/custom_widget.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: secondary,
      body: SafeArea(
          child: SizedBox(
        height: deviceHeight,
        width: deviceWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            icon(deviceHeight * 0.20, deviceWidth * 0.25),
            SizedBox(
              height: deviceHeight * 0.010,
            ),
            const Texte(
                txt: "Opération Réussi",
                maxline: 2,
                fontsize: 19,
                color: Colors.white,
                fontweight: FontWeight.bold,
                alignText: TextAlign.center),
            SizedBox(
              height: deviceHeight * 0.090,
            ),
            CustomButton(
                deviceWidth: deviceWidth * 0.60,
                deviceHeight: deviceHeight * 0.065,
                onPressed: () {},
                text: "Vérifier la facture",
                color: primary)
          ],
        ),
      )),
    );
  }

  Widget icon(double h, double w) {
    return Container(
      height: h,
      width: w,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/succes-1.png"))),
    );
  }
}
