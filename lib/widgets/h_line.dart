import 'package:example_structure/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HLine extends StatelessWidget {
  const HLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Container(
        width: double.infinity,
        height: 1,
        color: ColorCode.grey.withOpacity(.4),
      ),
    );
  }
}
