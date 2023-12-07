import 'package:flutter/material.dart';
import 'package:lodger_rent/theme/colors.dart';

class ButtonNext extends StatelessWidget {
  const ButtonNext({
    super.key,
    required this.deviceWidth,
  });

  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth * 0.15,
      height: deviceWidth * 0.15,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: primary, borderRadius: BorderRadius.circular(50)),
      child: Center(
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_right_alt_rounded,
              color: Colors.white,
              size: deviceWidth * 0.12,
            )),
      ),
    );
  }
}

class RectangleBot extends StatelessWidget {
  const RectangleBot({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage("assets/Rectangle_29.png"))),
    );
  }
}

class RectangleTop extends StatelessWidget {
  const RectangleTop({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage("assets/Rectangle_28.png"))),
    );
  }
}

class DisplayImages extends StatelessWidget {
  const DisplayImages({
    super.key,
    required this.width,
    required this.height,
    required this.link,
    required this.fit,
  });

  final double width;
  final double height;
  final String link;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          image: DecorationImage(fit: fit, image: AssetImage(link))),
    );
  }
}

class Texte extends StatelessWidget {
  const Texte(
      {super.key,
      required this.txt,
      required this.maxline,
      required this.fontsize,
      required this.color,
      required this.fontweight,
      required this.alignText});

  final String txt;
  final int maxline;
  final double fontsize;
  final Color color;
  final FontWeight fontweight;
  final TextAlign alignText;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      maxLines: maxline,
      textAlign: alignText,
      style:
          TextStyle(fontSize: fontsize, color: color, fontWeight: fontweight),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.deviceWidth,
    required this.deviceHeight,
    required this.onPressed,
    required this.text,
    required this.color,
  });

  final double deviceWidth;
  final double deviceHeight;
  final VoidCallback onPressed;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: deviceWidth,
      height: deviceHeight,
      color: color,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
          side: BorderSide(color: color)),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class Input extends StatelessWidget {
  const Input(
      {super.key,
      required this.inputHeight,
      required this.inputWidth,
      required this.ktype,
      required this.ht,
      required this.color,
      required this.rad,
      required this.clor});

  final double inputHeight;
  final double inputWidth;
  final TextInputType ktype;
  final String ht;
  final Color color;
  final Color clor;
  final double rad;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: inputWidth,
        height: inputHeight,
        child: TextFormField(
          keyboardType: ktype,
          decoration: InputDecoration(
            hintText: ht,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(rad)),
                borderSide: BorderSide(color: color, width: 2.0)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(rad)),
                borderSide: BorderSide(color: clor, width: 2.0)),
          ),
        ));
  }
}

class GradientBoxWidget extends StatelessWidget {
  const GradientBoxWidget({
    super.key,
    required this.h,
    required this.w,
  });

  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: h,
        width: w,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [primary, Colors.white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
      ),
    );
  }
}
