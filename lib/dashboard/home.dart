import 'package:filemanager/utils/constant.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.chevron_left,
            color: redAccent,
            size: 35,
          ),
        ),
        title: SizedBox(
          height: 48,
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 18.0,
                      top: 18.0,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 65,
                          width: 68,
                          decoration: BoxDecoration(boxShadow: const [
                            BoxShadow(blurRadius: 1.01, color: Colors.white24),
                          ], borderRadius: BorderRadius.circular(8.0)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              iceLogo,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Data',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 11.5),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              // height: 550,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 18.0,
                      top: 18.0,
                      right: 18.0,
                    ),
                    child: Container(
                      height: 230,
                      // height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(blurRadius: 1.01, color: Colors.white24),
                          ],
                          // border: Border.all(width: 0.08),
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Stack(
                        children: <Widget>[
                          Container(
                              height: 150,
                              width: MediaQuery.of(context).size.width,
                              decoration: const BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0),
                                  )),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0),
                                ),
                                child: Image.asset(
                                  icecream,
                                  fit: BoxFit.cover,
                                ),
                              )),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                height: 80,
                                width: MediaQuery.of(context).size.width,
                                padding: const EdgeInsets.only(
                                    left: 18.0,
                                    top: 5.0,
                                    bottom: 5.0,
                                    right: 18.0),
                                decoration: const BoxDecoration(
                                  color: white,
                                  // border: Border.all(width: 0.1),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Strawberry Ice Cream',
                                      style: TextStyle(
                                          fontWeight: fwBold, fontSize: 16),
                                    ),
                                    const Text(
                                      'Different type of Dessert',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.star,
                                          size: 18,
                                          color: redAccent,
                                        ),
                                        SizedBox(width: 3),
                                        Text(
                                          '0.0(0)',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        SizedBox(width: 8),
                                        CircleAvatar(
                                          radius: 2,
                                          backgroundColor: grey,
                                        ),
                                        SizedBox(width: 8),
                                        Icon(
                                          Icons.alarm,
                                          size: 18,
                                          color: redAccent,
                                        ),
                                        SizedBox(width: 3),
                                        Text(
                                          '30 Min',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        SizedBox(width: 8),
                                        CircleAvatar(
                                          radius: 2,
                                          backgroundColor: grey,
                                        ),
                                        SizedBox(width: 8),
                                        Icon(
                                          Icons.location_on_rounded,
                                          size: 18,
                                          color: redAccent,
                                        ),
                                        SizedBox(width: 3),
                                        Text(
                                          '12,485.0 km',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Spacer(),
                                        CircleAvatar(
                                          radius: 9,
                                          backgroundColor: redAccent,
                                          child: CircleAvatar(
                                            radius: 8,
                                            backgroundColor: white,
                                            child: Icon(
                                              Icons.directions_walk_outlined,
                                              size: 16,
                                              color: redAccent,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        CircleAvatar(
                                          radius: 9,
                                          backgroundColor: redAccent,
                                          child: CircleAvatar(
                                            radius: 8,
                                            backgroundColor: white,
                                            child: Icon(
                                              Icons.car_rental,
                                              size: 16,
                                              color: redAccent,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )),
                          ),
                          Positioned(
                            right: 15,
                            bottom: 52,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Image.asset(
                                'assets/images/britishIceCreamLogo.png',
                                fit: BoxFit.cover,
                                height: 56,
                                width: 56,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
