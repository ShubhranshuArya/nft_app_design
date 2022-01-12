import 'package:flutter/material.dart';
import 'package:nft_app_design/constants/colors.dart';

class ButButton extends StatelessWidget {
  const ButButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 60,
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 12,
      ),
      child: RawMaterialButton(
        onPressed: () {},
        fillColor: buttonColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 12,
        child: const Text(
          'Buy it now',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
