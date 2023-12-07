import 'package:flutter/material.dart';
import 'package:lodger_rent/theme/colors.dart';
import 'package:lodger_rent/widgets/custom_widget.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          GradientBoxWidget(h: deviceHeight * 0.20, w: deviceWidth),
          mainContainer(deviceWidth, deviceHeight)
        ],
      )),
    );
  }

  Widget mainContainer(double w, double h) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: h * 0.060,
              left: w * 0.03,
              bottom: h * 0.060,
              right: w * 0.1),
          child: topBarWidget(),
        ),
        Padding(
          padding: EdgeInsets.only(left: w * 0.06, right: w * 0.06),
          child:
              textWidget("Propriétaire: ", "Stan DECCO", "standecco@gmail.com"),
        ),
        SizedBox(
          height: h * 0.030,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: w * 0.06,
          ),
          child: textWidget(
              "Locataire: ", "DOSSOU Fredy", "fredydossou@gmail.com"),
        ),
        SizedBox(
          height: h * 0.020,
        ),
        const Texte(
            txt: "Facture du loyer de: Août 2023",
            maxline: 3,
            fontsize: 21,
            color: secondary,
            fontweight: FontWeight.bold,
            alignText: TextAlign.center),
        SizedBox(
          height: h * 0.020,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: w * 0.06),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Texte(
                txt: "Logement",
                maxline: 2,
                fontsize: 18,
                color: primary,
                fontweight: FontWeight.bold,
                alignText: TextAlign.left),
          ),
        ),
        SizedBox(
          height: h * 0.010,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: w * 0.06),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Texte(
                txt: "Quartier cadjehoun, rue 55 cotonou",
                maxline: 3,
                fontsize: 17,
                color: Colors.black,
                fontweight: FontWeight.normal,
                alignText: TextAlign.left),
          ),
        ),
        SizedBox(
          height: h * 0.010,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: w * 0.06),
          child: rowWidget("N", "Description", "Montant"),
        ),
        SizedBox(
          height: h * 0.010,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: w * 0.06),
          child: const Divider(
            thickness: 2,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: w * 0.06),
          child: rowWidget("039", "Loyer hors charges", "70000 FCFA"),
        ),
        SizedBox(
          height: h * 0.020,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: w * 0.06),
          child: rowWidget("", "Charges", "10000 FCFA"),
        ),
        SizedBox(
          height: h * 0.020,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: w * 0.06),
          child: const Divider(
            thickness: 2,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: h * 0.020,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: w * 0.06),
          child: totalWidget(h, w),
        ),
        SizedBox(
          height: h * 0.030,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: w * 0.06),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Texte(
                txt: "Merci beaucoup pour votre reglement",
                maxline: 3,
                fontsize: 18,
                color: Colors.black,
                fontweight: FontWeight.bold,
                alignText: TextAlign.left),
          ),
        ),
        SizedBox(
          height: h * 0.030,
        ),
        CustomButton(
            deviceWidth: w * 0.5,
            deviceHeight: h * 0.055,
            onPressed: () {},
            text: "Télecharger",
            color: primary)
      ],
    );
  }

  Align totalWidget(double h, double w) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        height: h * 0.055,
        width: w * 0.60,
        color: primary,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "Total",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "80000 FCFA",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget topBarWidget() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        BackButton(),
        Texte(
            txt: "Facture",
            maxline: 2,
            fontsize: 20,
            color: Colors.black,
            fontweight: FontWeight.bold,
            alignText: TextAlign.center)
      ],
    );
  }

  Widget textWidget(String fonction, String name, String email) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Texte(
                txt: fonction,
                maxline: 2,
                fontsize: 21,
                color: primary,
                fontweight: FontWeight.bold,
                alignText: TextAlign.center),
            Texte(
                txt: name,
                maxline: 2,
                fontsize: 17,
                color: Colors.black,
                fontweight: FontWeight.w400,
                alignText: TextAlign.center),
          ],
        ),
        Texte(
            txt: email,
            maxline: 2,
            fontsize: 16,
            color: Colors.black,
            fontweight: FontWeight.w500,
            alignText: TextAlign.center)
      ],
    );
  }

  Widget rowWidget(String id, String desc, String amount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          id,
          textAlign: TextAlign.left,
          style: const TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
        ),
        Text(
          desc,
          textAlign: TextAlign.left,
          style: const TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
        ),
        Text(
          amount,
          textAlign: TextAlign.left,
          style: const TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
