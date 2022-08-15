import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/Screens/home4.dart';
import 'package:todo/common/color.dart';
import 'package:todo/widgets/custom_app_bar.dart';
import 'package:todo/widgets/custom_tab_view.dart';

class Home3 extends StatefulWidget {
  Home3({Key? key}) : super(key: key);

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> with SingleTickerProviderStateMixin {
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
        appBar: customAppBar(context),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/img5.png'),
                      fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: SizedBox(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Expanded(
                                  child: Text(
                                    'GHJK Engineering college',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 270,
                                    child: const Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                height: 100,
                                decoration: const BoxDecoration(
                                  color: Color(0XFF27C200),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Expanded(
                                        child: Text(
                                          '4.3',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 35,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              tabContainer(context, tabController: tabController!),
              tabsContent(tabController: tabController!, context: context),
            ],
          ),
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: InkWell(
            onTap: () {
              Get.to(const Home4());
            },
            child: Container(
              height: 60,
              decoration: const BoxDecoration(
                  color: appcolor,
                  borderRadius: BorderRadius.all(Radius.circular(13))),
              width: MediaQuery.of(context).size.width,
              child: const Center(
                child: Text(
                  'Apply Now',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Expanded tabsContent() {
  //   return Expanded(
  //             child: TabBarView(
  //               controller: tabController,
  //               children: [
  //                 // first tab bar view widget
  //                 Padding(
  //                   padding: const EdgeInsets.all(18.0),
  //                   child: Container(
  //                     color: Colors.white,
  //                     child: Padding(
  //                       padding: const EdgeInsets.all(8.0),
  //                       child: ListView(
  //                         shrinkWrap: true,
  //                         children: [
  //                           Column(
  //                             mainAxisAlignment: MainAxisAlignment.start,
  //                             crossAxisAlignment: CrossAxisAlignment.start,
  //                             children: const [
  //                               Text(
  //                                 'Description',
  //                                 style: TextStyle(
  //                                   fontSize: 20,
  //                                   fontWeight: FontWeight.bold,
  //                                 ),
  //                               ),
  //                               SizedBox(
  //                                 height: 5,
  //                               ),
  //                               Text(
  //                                 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.',
  //                                 style: TextStyle(
  //                                     fontSize: 14, color: Color(0xff969797)),
  //                               ),
  //                             ],
  //                           ),
  //                           const SizedBox(
  //                             height: 10,
  //                           ),
  //                           Column(
  //                             mainAxisAlignment: MainAxisAlignment.start,
  //                             crossAxisAlignment: CrossAxisAlignment.start,
  //                             children: const [
  //                               Text(
  //                                 'Location',
  //                                 style: TextStyle(
  //                                   fontSize: 20,
  //                                   fontWeight: FontWeight.bold,
  //                                 ),
  //                               ),
  //                               SizedBox(
  //                                 height: 5,
  //                               ),
  //                               Image(
  //                                   image:
  //                                       AssetImage('assets/images/img6.png'))
  //                             ],
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                   ),
  //                 ),

  //                 // second tab bar viiew widget
  //                 Container(
  //                   color: Colors.pink,
  //                   child: const Center(
  //                     child: Text(
  //                       'Car',
  //                     ),
  //                   ),
  //                 ),
  //                 Container(
  //                   color: Colors.pink,
  //                   child: const Center(
  //                     child: Text(
  //                       'Car',
  //                     ),
  //                   ),
  //                 ),
  //                 Container(
  //                   color: Colors.pink,
  //                   child: const Center(
  //                     child: Text(
  //                       'Car',
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           );
  // }

  // Container tabContainer(BuildContext context) {
  //   return Container(
  //             color: const Color.fromARGB(255, 73, 37, 233),
  //             height: 50,
  //             child: AppBar(
  //               backgroundColor: Colors.grey.shade300,
  //               elevation: 5,
  //               bottom: PreferredSize(
  //                 preferredSize: Size.fromHeight(
  //                     MediaQuery.of(context).size.height * 0.134),
  //                 child: TabBar(
  //                   controller: tabController,
  //                   labelColor: Colors.black,
  //                   indicator: const UnderlineTabIndicator(
  //                       borderSide: BorderSide(width: 3.0),
  //                       insets: EdgeInsets.symmetric(vertical: -20)),
  //                   indicatorSize: TabBarIndicatorSize.tab,
  //                   indicatorColor: Color(0xff0E3C6E),
  //                   indicatorPadding: EdgeInsets.all(20),
  //                   labelStyle: const TextStyle(
  //                     color: Colors.black,
  //                   ),
  //                   tabs: const [
  //                     Tab(
  //                       text: 'About college',
  //                     ),
  //                     Tab(
  //                       text: 'Hostel facility',
  //                     ),
  //                     Tab(
  //                       text: 'Q & A',
  //                     ),
  //                     Tab(
  //                       text: 'Events',
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           );
  // }

}
