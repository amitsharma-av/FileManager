import 'package:filemanager/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        /* floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: kPrimaryColor,
          icon: const Icon(Icons.file_open),
          label: const Text('Docs'),
        ), */
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: .64.sh,
                width: 1.sw,
                child: Stack(
                  children: [
                    Container(
                      width: Get.width,
                      height: .38.sh,
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
                                  text: 'Hello!',
                                  fontSize: 22.sp,
                                  fontWeight: fwBold),
                              customText(
                                  text: 'Amit Sharma',
                                  fontSize: 18.sp,
                                  fontWeight: fwBold),
                              SizedBox(
                                height: 12.h,
                              ),
                              customText(
                                  text: 'Easy way to Organize your storage',
                                  color: grey,
                                  fontWeight: fwBold,
                                  fontSize: 14.sp),
                            ],
                          ),
                          Image.asset(
                            'assets/icons/fileManager.png',
                            width: .2.sw,
                            height: .2.sw,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: .29.sh,
                      // left: .1.sw,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: .06.sw,
                          ),
                          customContainer(
                              width: .41.sw,
                              boxShadow: [
                                const BoxShadow(
                                    blurRadius: 15, color: linearColor1)
                              ],
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/svg/files.svg',
                                        height: .075.sw,
                                        width: .075.sw,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      customText(
                                          text: "Files",
                                          color: white,
                                          fontWeight: fwBold,
                                          fontSize: 15.sp),
                                      const Spacer(),
                                      const Icon(
                                        Icons.more_horiz,
                                        color: white,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 6.h,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        width: .08.sw,
                                        height: .22.sh,
                                        child: Column(
                                          children: [
                                            Expanded(
                                                flex: 38,
                                                child: Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    8.0),
                                                            topRight: Radius
                                                                .circular(8.0)),
                                                  ),
                                                )),
                                            Expanded(
                                                flex: 15,
                                                child: Container(
                                                  color: lime,
                                                  child: Align(
                                                      alignment:
                                                          Alignment.center,
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
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text('10',
                                                          style: TextStyle(
                                                              fontSize: 12.sp,
                                                              color: white))),
                                                )),
                                            Expanded(
                                                flex: 50,
                                                child: Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: greenAccent,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    8.0),
                                                            bottomRight: Radius
                                                                .circular(8.0)),
                                                  ),
                                                  child: Align(
                                                      alignment:
                                                          Alignment.center,
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
                                                      circleColor:
                                                          backgroundColor,
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
                                              height: .09.sh,
                                            ),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: SvgPicture.asset(
                                                  'assets/svg/recycle.svg'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                          SizedBox(
                            width: .06.sw,
                          ),
                          customContainer(
                              width: .41.sw,
                              color1: linearColor3,
                              color2: linearColor4,
                              boxShadow: [
                                const BoxShadow(
                                    blurRadius: 15, color: linearColor1)
                              ],
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/svg/files.svg',
                                        height: .075.sw,
                                        width: .075.sw,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      customText(
                                          text: "Drop Box",
                                          color: white,
                                          fontWeight: fwBold,
                                          fontSize: 15.sp),
                                      const Spacer(),
                                      const Icon(
                                        Icons.more_horiz,
                                        color: white,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 6.h,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        width: .08.sw,
                                        height: .22.sh,
                                        child: Column(
                                          children: [
                                            Expanded(
                                                flex: 38,
                                                child: Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    8.0),
                                                            topRight: Radius
                                                                .circular(8.0)),
                                                  ),
                                                )),
                                            Expanded(
                                                flex: 15,
                                                child: Container(
                                                  color: lime,
                                                  child: Align(
                                                      alignment:
                                                          Alignment.center,
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
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text('10',
                                                          style: TextStyle(
                                                              fontSize: 12.sp,
                                                              color: white))),
                                                )),
                                            Expanded(
                                                flex: 50,
                                                child: Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: greenAccent,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    8.0),
                                                            bottomRight: Radius
                                                                .circular(8.0)),
                                                  ),
                                                  child: Align(
                                                      alignment:
                                                          Alignment.center,
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
                                                      circleColor:
                                                          backgroundColor,
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
                                              height: .09.sh,
                                            ),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: SvgPicture.asset(
                                                  'assets/svg/recycle.svg'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: .06.sw,
                  right: .06.sw,
                  bottom: .06.sw,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText(
                        text: 'My Folder',
                        color: kPrimaryColor,
                        fontSize: 16.sp,
                        fontWeight: fwBold),
                    SizedBox(height: .03.sw),
                    Row(
                      children: [
                        customContainer(
                          padding: const EdgeInsets.all(12.0),
                          width: .41.sw,
                          color1: white,
                          color2: white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset('assets/svg/folderIcon.svg'),
                                  const Spacer(),
                                  const Icon(
                                    Icons.more_horiz,
                                    color: grey,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              customText(
                                text: 'Course',
                                color: kPrimaryColor,
                                fontWeight: fwBold,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  customText(
                                    text: '56 Files',
                                    color: grey,
                                    fontSize: 11.sp,
                                  ),
                                  const Spacer(),
                                  customText(
                                    text: '2.3 GB',
                                    color: kPrimaryColor,
                                    fontSize: 11.sp,
                                    fontWeight: fwBold,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: .06.sw),
                        customContainer(
                          padding: const EdgeInsets.all(12.0),
                          width: .41.sw,
                          color1: white,
                          color2: white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset('assets/svg/folderIcon.svg'),
                                  const Spacer(),
                                  const Icon(
                                    Icons.more_horiz,
                                    color: grey,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              customText(
                                text: 'Course',
                                color: kPrimaryColor,
                                fontWeight: fwBold,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  customText(
                                    text: '56 Files',
                                    color: grey,
                                    fontSize: 11.sp,
                                  ),
                                  const Spacer(),
                                  customText(
                                    text: '2.3 GB',
                                    color: kPrimaryColor,
                                    fontSize: 11.sp,
                                    fontWeight: fwBold,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: .03.sh,
                    ),
                    customText(
                        text: 'Recent Files',
                        color: kPrimaryColor,
                        fontSize: 16.sp,
                        fontWeight: fwBold),
                    SizedBox(
                      height: .03.sh,
                    ),
                    customContainer(
                      padding: const EdgeInsets.all(12.0),
                      width: 1.sw,
                      color1: white,
                      color2: white,
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/svg/videoIcon.svg'),
                          SizedBox(
                            width: 12.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customText(
                                text: 'The Batman.mp4',
                                fontSize: 14.sp,
                                color: kPrimaryColor,
                                fontWeight: fwBold,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              customText(
                                text: '1.5 GB',
                                color: grey,
                                fontSize: 11.sp,
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.more_vert,
                            color: grey,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: .02.sh,
                    ),
                    customContainer(
                      padding: const EdgeInsets.all(12.0),
                      width: 1.sw,
                      color1: white,
                      color2: white,
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/svg/videoIcon.svg'),
                          SizedBox(
                            width: 12.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customText(
                                text: 'The Batman.mp4',
                                fontSize: 14.sp,
                                color: kPrimaryColor,
                                fontWeight: fwBold,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              customText(
                                text: '1.5 GB',
                                color: grey,
                                fontSize: 11.sp,
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.more_vert,
                            color: grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
