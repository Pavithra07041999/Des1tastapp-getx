import 'package:flutter/material.dart';
import 'package:gps1taskapp/core/constant/colors.dart';

class AppButton extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final VoidCallback? onTap;
  final bool enabled;

  const AppButton({
    super.key,
    required this.text,
    this.width,
    this.height,
    this.backgroundColor,
    this.onTap,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
       style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.darkBlue,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.zero, // Rectangle shape
         ),
        ),
        onPressed: enabled ? onTap : null,child: Text(text,style: TextStyle(fontSize: 18),)),
    );
  }
}
