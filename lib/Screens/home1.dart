// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/Screens/home2.dart';
import 'package:todo/common/color.dart';
import 'package:todo/controllers/home1_controller.dart';
import 'package:todo/widgets/custom_app_bar.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Home1Body(),
    const Text('saved Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    const Text('saved Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    const Text('Profile Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Search',
              backgroundColor: appcolor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_add),
              label: 'saved',
              backgroundColor: appcolor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.navigation_sharp),
              label: 'saved',
              backgroundColor: appcolor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded),
              label: 'Account',
              backgroundColor: appcolor,
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          selectedIconTheme: const IconThemeData(size: 30),
          unselectedIconTheme: const IconThemeData(size: 30),
          backgroundColor: appcolor,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }

  PreferredSize customAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.34),
      child: Container(
        decoration: const BoxDecoration(
          color: appcolor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(bottom: 10, left: 15, right: 15, top: 60),
          child: Container(
            height: 180.0,
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Find your own way',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Search in 600 colleges around!',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Positioned(
                            top: 17,
                            right: 20,
                            child: Container(
                              height: 12,
                              width: 12,
                              decoration: const BoxDecoration(
                                  color: Colors.red,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                            ))
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.6,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                hintText: 'Search for colleges, schools.....',
                                prefixIcon: Icon(Icons.search),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 60,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: const Icon(
                          Icons.keyboard_voice_rounded,
                          size: 35,
                          color: appcolor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Home1Body extends StatefulWidget {
  Home1Body({Key? key}) : super(key: key);
  @override
  State<Home1Body> createState() => _Home1BodyState();
}

final controller = Get.put(Home1Controller());

class _Home1BodyState extends State<Home1Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: ListView(
        shrinkWrap: true,
        children: [
          cardWithImage(
            context,
            img: 'img1',
            title: 'Top Colleges',
            subtitle:
                'Search through thousands of accredited colleges and universities online to find the right one for you.  Apply in 3 min, and connect with your future.',
            desc1: '+126 ',
            desc2: 'Colleges',
          ),
          cardWithImage(
            context,
            img: 'img2',
            title: 'Top Schools',
            subtitle:
                'Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.',
            desc1: '+106  ',
            desc2: 'Schools',
          ),
          cardWithImage(context,
              img: 'img3',
              title: 'Exams',
              subtitle:
                  'Find an end to end information about the exams that are happening in India',
              desc1: '+16 ',
              desc2: 'Exams'),
        ],
      ),
    );
  }

  InkWell cardWithImage(BuildContext context,
      {required String desc1,
      required String desc2,
      required String img,
      required String subtitle,
      required String title}) {
    return InkWell(
      onTap: () {
        showModalBottomSheet<void>(
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            builder: (BuildContext context) {
              return bootmSheet();
            });
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                // color: Colors.red,
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.45),
                      BlendMode.darken,
                    ),
                    image: AssetImage('assets/images/$img.jpg'),
                    fit: BoxFit.cover),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(60),
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      subtitle,
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(60),
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: '$desc1  ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                            text: '$desc2',
                            style: TextStyle(fontWeight: FontWeight.normal)),
                      ],
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

  SizedBox bootmSheet() {
    return SizedBox(
      height: 400,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Sort by',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.close_rounded))
                ],
              ),
              const Divider(
                height: 10,
                thickness: 2,
              ),
              const SizedBox(
                height: 25,
              ),
              Obx(
                () => Column(
                  children: <Widget>[
                    radioItem(
                        icon: Icons.school_outlined,
                        val: Pet.tech,
                        title: 'Bachelor of Technology'),
                    radioItem(
                        icon: Icons.format_shapes,
                        val: Pet.arch,
                        title: 'Bachelor of Architecture'),
                    radioItem(
                        icon: Icons.local_pharmacy_outlined,
                        val: Pet.phar,
                        title: 'Pharmacy'),
                    radioItem(icon: Icons.balance, val: Pet.law, title: 'Law'),
                    radioItem(
                        icon: Icons.ac_unit_outlined,
                        val: Pet.mang,
                        title: 'Management'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container radioItem(
      {required IconData icon, required String title, required Pet val}) {
    return Container(
      height: 50,
      child: ListTile(
        onTap: () {
          Get.to(const Home2(title: false));
        },
        title: Row(
          children: [
            Icon(icon),
            const SizedBox(
              width: 8,
            ),
            Text(title),
          ],
        ),
        trailing: Radio<Pet>(
          value: val,
          groupValue: controller.pet.value,
          onChanged: (Pet? value) {
            setState(() {
              controller.pet.value = value!;
            });
          },
        ),
      ),
    );
  }
}
