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
  Size? size;
  // double height = size.height;
  // double width = size.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SizedBox(
        height: 1.sh,
        width: 1.sw,
        child: Stack(
          children: [
            Container(
              width: Get.width,
              height: .42.sh,
              padding: const EdgeInsets.all(28.0),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                // shape: BoxShape.circle,

                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35.r),
                    bottomRight: Radius.circular(35.r)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText(
                          text: 'Hello!', fontSize: 20.sp, fontWeight: fw900),
                      customText(
                        text: 'Amit Sharma',
                        fontSize: 18.sp,
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      customText(
                          text: 'Easy way to Organize your storage',
                          color: white70,
                          fontWeight: fwBold),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(50.r)),
                    child: Image.asset(
                      'assets/icons/filemanager.png',
                      width: 70.w,
                      height: 70.w,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: .33.sh,
              // left: .1.sw,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: .06.sw,
                  ),
                  customContainer(
                      // color1: linearColor3,
                      // color2: linearColor4,
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/icons/storage1.png'),
                              customText(
                                  text: "File's",
                                  color: white,
                                  fontWeight: fwBold,
                                  fontSize: 15.sp),
                              const Spacer(),
                              const Icon(
                                Icons.more_horiz,
                                color: white,
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  width: .08.sw,
                                  height: .23.sh,
                                  child: Column(
                                    children: [
                                      Expanded(
                                          flex: 38,
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              color: white,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(8.0),
                                                  topRight:
                                                      Radius.circular(8.0)),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 15,
                                          child: Container(
                                            color: lime,
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text('25',
                                                    style: TextStyle(
                                                        fontSize: 12.sp,
                                                        color:
                                                            backgroundColor))),
                                          )),
                                      Expanded(
                                          flex: 18,
                                          child: Container(
                                            color: redAccent,
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text('10',
                                                    style: TextStyle(
                                                        fontSize: 12.sp,
                                                        color: white))),
                                          )),
                                      Expanded(
                                          flex: 50,
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              color: greenAccent,
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(8.0),
                                                  bottomRight:
                                                      Radius.circular(8.0)),
                                            ),
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text('50',
                                                    style: TextStyle(
                                                        fontSize: 12.sp,
                                                        color:
                                                            backgroundColor))),
                                          )),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 12.w,
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: customElements(
                                                circleColor: backgroundColor,
                                                elementName: 'Other',
                                                elementData: "9.31 GB"),
                                          ),
                                          Expanded(
                                            child: customElements(
                                                circleColor: lime,
                                                elementName: 'Apk',
                                                elementData: "9.31 GB"),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: customElements(
                                                circleColor: redAccent,
                                                elementName: "Video",
                                                elementData: "2.1 GB"),
                                          ),
                                          Expanded(
                                            child: customElements(
                                                circleColor: greenAccent,
                                                elementName: 'System',
                                                elementData: "6.38 GB"),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: .080.sh,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                            margin: const EdgeInsets.only(
                                                right: 3.0),
                                            padding: const EdgeInsets.all(3.0),
                                            decoration: BoxDecoration(
                                                color: white.withOpacity(.3),
                                                borderRadius:
                                                    BorderRadius.circular(8.r)),
                                            child: const Icon(
                                              Icons.delete,
                                              size: 22,
                                              color: white,
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    width: .06.sw,
                  ),
                  customContainer(
                      color1: linearColor3,
                      color2: linearColor4,
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/icons/storage2.png'),
                              SizedBox(
                                width: 5.w,
                              ),
                              customText(
                                  text: "Dropbox",
                                  color: white,
                                  fontWeight: fwBold,
                                  fontSize: 15.sp),
                              const Spacer(),
                              const Icon(
                                Icons.more_horiz,
                                color: white,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  width: .08.sw,
                                  height: .23.sh,
                                  child: Column(
                                    children: [
                                      Expanded(
                                          flex: 38,
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              color: white,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(8.0),
                                                  topRight:
                                                      Radius.circular(8.0)),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 15,
                                          child: Container(
                                            color: lime,
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text('25',
                                                    style: TextStyle(
                                                        fontSize: 12.sp,
                                                        color:
                                                            backgroundColor))),
                                          )),
                                      Expanded(
                                          flex: 18,
                                          child: Container(
                                            color: redAccent,
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text('10',
                                                    style: TextStyle(
                                                        fontSize: 12.sp,
                                                        color: white))),
                                          )),
                                      Expanded(
                                          flex: 50,
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              color: greenAccent,
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(8.0),
                                                  bottomRight:
                                                      Radius.circular(8.0)),
                                            ),
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text('50',
                                                    style: TextStyle(
                                                        fontSize: 12.sp,
                                                        color:
                                                            backgroundColor))),
                                          )),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 12.w,
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: customElements(
                                                circleColor: backgroundColor,
                                                elementName: 'Other',
                                                elementData: "9.31 GB"),
                                          ),
                                          Expanded(
                                            child: customElements(
                                                circleColor: lime,
                                                elementName: 'Apk',
                                                elementData: "9.31 GB"),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: customElements(
                                                circleColor: redAccent,
                                                elementName: "Video",
                                                elementData: "2.1 GB"),
                                          ),
                                          Expanded(
                                            child: customElements(
                                                circleColor: greenAccent,
                                                elementName: 'System',
                                                elementData: "6.38 GB"),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: .080.sh,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                            margin: const EdgeInsets.only(
                                                right: 3.0),
                                            padding: const EdgeInsets.all(3.0),
                                            decoration: BoxDecoration(
                                                color: white.withOpacity(.3),
                                                borderRadius:
                                                    BorderRadius.circular(8.r)),
                                            child: const Icon(
                                              Icons.delete,
                                              size: 22,
                                              color: white,
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Positioned(
                right: .06.sw,
                bottom: .08.sw,
                child: FloatingActionButton.extended(
                  onPressed: () {},
                  backgroundColor: kPrimaryColor,
                  icon: const Icon(Icons.file_open),
                  label: const Text('Docs'),
                ))
          ],
        ),
      ),
    );
  }
}
