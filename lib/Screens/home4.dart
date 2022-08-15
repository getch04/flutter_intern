import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/Screens/home5.dart';
import 'package:todo/common/color.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Home4 extends StatefulWidget {
  const Home4({Key? key}) : super(key: key);

  @override
  State<Home4> createState() => _Home4State();
}

class _Home4State extends State<Home4> with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.34),
          child: Container(
            decoration: const BoxDecoration(
              color: appcolor,
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(bottom: 0, left: 5, right: 5, top: 30),
              child: Container(
                height: 70.0,
                alignment: Alignment.bottomLeft,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'GHJK Engineering college',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  border: Border(
                    bottom: BorderSide(width: 2, color: Colors.grey.shade400),
                  ),
                ),
              ),
              Container(
                height: 50,
                child: AppBar(
                  backgroundColor: Colors.grey.shade300,
                  elevation: 5,
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(
                        MediaQuery.of(context).size.height * 0.134),
                    child: TabBar(
                      controller: tabController,
                      labelColor: Colors.black,
                      indicator: const UnderlineTabIndicator(
                          borderSide: BorderSide(width: 3.0),
                          insets: EdgeInsets.symmetric(vertical: -20)),
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorColor: const Color(0xff0E3C6E),
                      indicatorPadding: const EdgeInsets.all(20),
                      labelStyle: const TextStyle(
                        color: Colors.black,
                      ),
                      tabs: const [
                        Tab(
                          text: 'About college',
                        ),
                        Tab(
                          text: 'Hostel facility',
                        ),
                        Tab(
                          text: 'Q & A',
                        ),
                        Tab(
                          text: 'Events',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // create widgets for each tab bar here
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    // first tab bar view widget
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Description',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.',
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xff969797)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Location',
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Image(
                                      image:
                                          AssetImage('assets/images/img7.png'))
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Student Review',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: 70,
                                    width: MediaQuery.of(context).size.width,
                                    child: ListView(
                                      // mainAxisAlignment:
                                      // MainAxisAlignment.start,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        personCard(img: 'per1'),
                                        personCard(img: 'per2'),
                                        personCard(img: 'per3'),
                                        personCard(img: 'per4'),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: 60,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                color: Colors.grey.shade400,
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(10))),
                                            child: const Text('+12'),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Icon(
                                      Icons.change_history,
                                      color: Colors.grey.shade300,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 150,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey.shade200,
                                              spreadRadius: 6,
                                              blurRadius: 12,
                                              offset: const Offset(0, 1))
                                        ],
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Arun sai',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            const Text(
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color(0xff8E8E8E)),
                                            ),
                                            const SizedBox(height: 5),
                                            RatingBarIndicator(
                                              rating: 4.5,
                                              itemBuilder: (context, index) =>
                                                  const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              itemCount: 5,
                                              itemSize: 30.0,
                                              direction: Axis.horizontal,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // second tab bar viiew widget
                    Container(
                      color: Colors.pink,
                      child: const Center(
                        child: Text(
                          'Car',
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.pink,
                      child: const Center(
                        child: Text(
                          'Car',
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.pink,
                      child: const Center(
                        child: Text(
                          'Car',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: SizedBox(
          height: 70,
          width: MediaQuery.of(context).size.width * 0.86,
          child: FloatingActionButton.extended(
              onPressed: () {
                Get.to(Home5());
              },
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(17),
                ),
              ),
              backgroundColor: appcolor,
              label: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.35,
                    vertical: 60),
                child: const Text(
                  'Apply Now',
                  style: TextStyle(color: Colors.white),
                ),
              )),
        ),
      ),
    );
  }

  Padding personCard({required String img}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
            image: AssetImage('assets/images/$img.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
