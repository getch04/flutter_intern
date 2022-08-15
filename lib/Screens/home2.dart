import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/Screens/home3.dart';
import 'package:todo/common/color.dart';
import 'package:todo/widgets/custom_app_bar.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key, required bool title}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.34),
        child: Container(
          decoration: const BoxDecoration(
            color: appcolor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(bottom: 10, left: 15, right: 15, top: 60),
            child: Container(
              height: 100.0,
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 35,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    topItems(context, title: 'MVSH Engineering college'),
                    const SizedBox(width: 10),
                    topItems(context, title: 'MVSH Engineering college'),
                    const SizedBox(width: 10),
                    topItems(context, title: 'MVSH Engineering college'),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            const mainBody(img: 'img44', title: 'GHJK Engineering college'),
            const mainBody(img: 'img55', title: 'Bachelor of Technology'),
          ],
        ),
      ),
    );
  }

  Container topItems(BuildContext context, {required String title}) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(fontSize: 12),
        ),
      ),
    );
  }
}

class mainBody extends StatelessWidget {
  final String img;
  final String title;
  const mainBody({
    Key? key,
    required this.img,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: InkWell(
        onTap: () {
          Get.to(Home3());
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 9,
                  spreadRadius: 6,
                  offset: Offset(-2, 2),
                )
              ]),
          child: Column(children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                    image: AssetImage('assets/images/$img.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.share_outlined),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.bookmark_border_rounded),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Container(
                height: 170,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        Container(
                          width: 70,
                          height: 37,
                          decoration: const BoxDecoration(
                            color: Color(0XFF27C200),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  '4.3',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 210,
                          child: const Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 80,
                            decoration: const BoxDecoration(
                              color: Color(0XFF0E3C6E),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                'Apply Now',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 3,
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.red,
                        // height: 80,
                        width: MediaQuery.of(context).size.width,
                        child: ListTile(
                          leading: Transform.translate(
                            offset: Offset(-26, 0),
                            child: const Image(
                              image: AssetImage('assets/images/like 1.png'),
                              width: 40,
                              height: 40,
                            ),
                          ),
                          title: Transform.translate(
                            offset: Offset(-46, 0),
                            child: Text(
                              'More than 1000+ students have been placed',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          trailing: SizedBox(
                            width: 60,
                            height: 30,
                            child: Row(
                              children: [
                                Expanded(
                                    child: Icon(Icons.remove_red_eye_outlined)),
                                Text('466+')
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
