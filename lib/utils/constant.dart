import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const Color primaryColor = Color(0xff1B252D);
const Color white = Colors.white;
const Color white10 = Colors.white10;
const Color white54 = Colors.white54;
FontWeight fwBold = FontWeight.bold;
FontWeight fwNormal = FontWeight.normal;

customText(String data,
    {Color? color, FontWeight? fontWeight, double? fontSize}) {
  return Text(
    data,
    softWrap: true,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
        color: color ?? primaryColor,
        fontWeight: fontWeight ?? fwBold,
        fontSize: fontSize ?? 14.sp),
  );
}

class CustomWidget {}
