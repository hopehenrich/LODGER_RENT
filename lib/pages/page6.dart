import 'package:flutter/material.dart';
import 'package:lodger_rent/theme/colors.dart';
import 'package:lodger_rent/widgets/custom_widget.dart';

class Page6 extends StatelessWidget {
  const Page6({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          GradientBoxWidget(h: deviceHeight * 0.20, w: deviceWidth),
          mainContainer(deviceHeight, deviceWidth)
        ],
      )),
    );
  }

  Widget mainContainer(double h, double w) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        topBar(w, h),
        Padding(
          padding: EdgeInsets.only(top: h * 0.055, bottom: h * 0.055),
          child: contentBox(const Icon(
            Icons.person,
            size: 50,
          )),
        ),
        contentBox(Image.asset("assets/maison.png")),
        Padding(
          padding: EdgeInsets.only(top: h * 0.055, bottom: h * 0.055),
          child: contentBox(const Icon(
            Icons.person_add,
            size: 50,
          )),
        ),
        contentBox(Image.asset("assets/maison.png")),
      ],
    );
  }

  Widget contentBox(Widget icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        const SizedBox(
          width: 13,
        ),
        Center(child: icon),
        const SizedBox(
          width: 50,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text("Nom", primary),
            const SizedBox(
              height: 10,
            ),
            text("Prénom", primary),
            const SizedBox(
              height: 10,
            ),
            text("Quartier", primary)
          ],
        ),
        const SizedBox(
          width: 50,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text("DOSSOU", Colors.black),
            const SizedBox(
              height: 10,
            ),
            text("Fredy", Colors.black),
            const SizedBox(
              height: 10,
            ),
            text("Ste Rita", Colors.black)
          ],
        )
      ],
    );
  }

  Widget text(String text, Color color) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 19, fontWeight: FontWeight.bold),
    );
  }

  Row topBar(double w, double h) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: w * 0.02,
        ),
        const BackButton(
          color: Colors.white,
        ),
        SizedBox(
          width: w * 0.19,
        ),
        Column(
          children: [
            avatar(h * 0.1, w * 0.2),
            const Texte(
                txt: "DOSSOU Fredy",
                maxline: 2,
                fontsize: 18,
                color: Colors.black,
                fontweight: FontWeight.bold,
                alignText: TextAlign.center)
          ],
        )
      ],
    );
  }

  Widget avatar(double w, double h) {
    return Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: secondary),
    );
  }
}
