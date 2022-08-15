import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/common/color.dart';
import 'package:todo/widgets/custom_app_bar.dart';
import 'package:todo/widgets/custom_tab_view.dart';

class Home5 extends StatefulWidget {
  const Home5({Key? key}) : super(key: key);

  @override
  State<Home5> createState() => _Home5State();
}

class _Home5State extends State<Home5> with SingleTickerProviderStateMixin {
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
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                          height: 100,
                          // color: Colors.red,

                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              ),
              tabContainer(context, tabController: tabController!),
              tabsContent(tabController: tabController!, context: context),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: SizedBox(
          height: 70,
          width: MediaQuery.of(context).size.width * 0.86,
          child: FloatingActionButton.extended(
              onPressed: () {
                Get.snackbar('Developer message',
                    'this eature is under developemnt, stay toned!',
                    snackPosition: SnackPosition.BOTTOM,
                    colorText: Colors.white);
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
                  style: const TextStyle(color: Colors.white),
                ),
              )),
        ),
      ),
    );
  }
}
