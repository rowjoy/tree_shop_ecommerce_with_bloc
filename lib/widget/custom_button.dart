import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../core/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.buttonName,
    required this.onPressed,
    this.padding,
    this.width,
  }) : super(key: key);

  final String buttonName;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? padding;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      height: 50,
      child: Padding(
        padding: padding ?? const EdgeInsets.only(left: 15,right: 15),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(HexColor(AppColors.greenColor)),
          ),
          child: Text("$buttonName".toUpperCase(),
            style: TextStyle(
              color: HexColor(AppColors.whiteColor),
              fontSize: 22,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
    );
  }
}