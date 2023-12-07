import 'package:flutter/material.dart';
import 'package:lodger_rent/theme/colors.dart';
import 'package:lodger_rent/widgets/custom_widget.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  late double deviceWidth;
  late double deviceHeight;
  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
            child: SizedBox(
      width: deviceWidth,
      height: deviceHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: deviceHeight * 0.050, left: deviceWidth * 0.040),
            child: Align(
              alignment: Alignment.topLeft,
              child: CustomIcon(deviceHeight: deviceHeight),
            ),
          ),
          const Text(
            "LOGO",
            style: TextStyle(
                color: primary, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: deviceHeight * 0.050, left: deviceWidth * 0.040),
            child: numField(),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: deviceHeight * 0.050, left: deviceWidth * 0.040),
            child: monthField(),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: deviceHeight * 0.050,
                left: deviceWidth * 0.040,
                bottom: deviceHeight * 0.050),
            child: amount(),
          ),
          CustomButton(
              deviceWidth: deviceWidth * 0.60,
              deviceHeight: deviceHeight * 0.0765,
              onPressed: () {},
              text: "Validé",
              color: primary)
        ],
      ),
    )));
  }

  Widget numField() {
    return SizedBox(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Texte(
                txt: "Numéro",
                maxline: 2,
                fontsize: 19,
                color: primary,
                fontweight: FontWeight.bold,
                alignText: TextAlign.left),
            SizedBox(
              height: deviceHeight * 0.018,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10)),
              child: Input(
                  inputHeight: deviceHeight * 0.065,
                  inputWidth: deviceWidth * 0.85,
                  ktype: TextInputType.number,
                  ht: "Entrez le numéro de transaction",
                  color: Colors.transparent,
                  rad: 10.0,
                  clor: Colors.transparent),
            )
          ]),
    );
  }

  Widget monthField() {
    return SizedBox(
      width: deviceWidth * 0.85,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Texte(
                txt: "Mois",
                maxline: 2,
                fontsize: 19,
                color: primary,
                fontweight: FontWeight.bold,
                alignText: TextAlign.left),
            SizedBox(
              height: deviceHeight * 0.018,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: deviceHeight * 0.02),
                height: deviceHeight * 0.070,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: deviceHeight * 0.02,
                          vertical: deviceHeight * 0.01),
                      decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "Janvier",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ))
          ]),
    );
  }

  Widget amount() {
    return SizedBox(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Texte(
                txt: "Montant",
                maxline: 2,
                fontsize: 19,
                color: primary,
                fontweight: FontWeight.bold,
                alignText: TextAlign.left),
            SizedBox(
              height: deviceHeight * 0.018,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10)),
              child: Input(
                  inputHeight: deviceHeight * 0.065,
                  inputWidth: deviceWidth * 0.85,
                  ktype: TextInputType.number,
                  ht: "Entrez le montant de la transaction",
                  color: Colors.transparent,
                  rad: 10.0,
                  clor: Colors.transparent),
            )
          ]),
    );
  }
}

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.deviceHeight,
  });

  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.arrow_back_ios),
      color: primary,
      iconSize: deviceHeight * 0.050,
    );
  }
}
