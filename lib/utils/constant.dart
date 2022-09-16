import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const Color transparent = Colors.transparent;
const Color kPrimaryColor = Color(0xff1B252D);
Color backgroundColor = white.withOpacity(.95);
const Color white = Colors.white;
const Color black = Colors.black;
const Color lime = Colors.lime;
const Color redAccent = Colors.redAccent;
const Color greenAccent = Colors.greenAccent;
const Color white10 = Colors.white10;
const Color white70 = Colors.white70;
FontWeight fwNormal = FontWeight.normal;
FontWeight fwBold = FontWeight.bold;
FontWeight fw500 = FontWeight.w500;
FontWeight fw700 = FontWeight.w700;
FontWeight fw800 = FontWeight.w800;
FontWeight fw900 = FontWeight.w900;
/* linear color combo */
const Color linearColor2 = Color.fromARGB(255, 87, 19, 203);
const Color linearColor1 = Color.fromARGB(255, 55, 49, 158);
const Color linearColor3 = Color.fromARGB(255, 88, 160, 237);
const Color linearColor4 = Color.fromARGB(255, 57, 110, 209);

customContainer(
    {required Widget child,
    Color? color1,
    Color? color2,
    double? height,
    double? width,
    double? radius,
    EdgeInsetsGeometry? padding}) {
  return Container(
    height: height ?? .33.sh,
    width: width ?? .41.sw,
    padding: padding,
    decoration: BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.centerRight,
          colors: [
            color1 ?? linearColor1,
            color2 ?? linearColor2,
          ]),
      borderRadius: BorderRadius.circular(radius ?? 16.r),
    ),
    child: child,
  );
}

customElements(
    {Color? circleColor,
    String? elementName,
    String? elementData,
    double? width,
    double? height}) {
  return SizedBox(
    width: width,
    height: height,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: .01.sw,
              backgroundColor: circleColor,
            ),
            const SizedBox(
              width: 5,
            ),
            customText(text: elementName, fontSize: 8.sp, fontWeight: fwBold),
          ],
        ),
        customText(text: elementData, fontSize: 9.sp, fontWeight: fwBold),
      ],
    ),
  );
}

customText(
    {String? text, Color? color, FontWeight? fontWeight, double? fontSize}) {
  return Text(
    text ?? "",
    softWrap: true,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
        color: color ?? white,
        fontWeight: fontWeight ?? fw500,
        fontSize: fontSize ?? 14.sp),
  );
}

class CustomShape extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height - 110);
    path.quadraticBezierTo(width / 2, height, width, height - 110);
    path.lineTo(width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
