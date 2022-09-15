import 'package:filemanager/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: Get.width,
              height: .4.sh,
              padding: const EdgeInsets.all(28.0),
              decoration: BoxDecoration(
                color: primaryColor,
                // shape: BoxShape.circle,

                /*  borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 100.0)), */
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80.r),
                    bottomRight: Radius.circular(80.r)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText('Hello!', color: white, fontSize: 18.sp),
                      customText('Amit Sharma',
                          color: white, fontSize: 18.sp, fontWeight: fwNormal),
                      SizedBox(
                        height: 12.h,
                      ),
                      customText('Easy way to Organize your storage',
                          color: white54, fontWeight: fwNormal),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(50.r)),
                    child: Image.asset(
                      'assets/logo/filemanager.png',
                      width: 70.w,
                      height: 70.w,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: const [
                Card(
                  color: Colors.deepPurpleAccent,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
