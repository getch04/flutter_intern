import 'package:flutter/material.dart';
import 'package:todo/common/color.dart';
import 'package:todo/widgets/custom_dots.dart';

Expanded tabsContent(
    {required TabController tabController, required BuildContext context}) {
  return Expanded(
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
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff969797)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Location',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Image(image: AssetImage('assets/images/img6.png'))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        // second tab bar viiew widget
        Container(
          // color: Colors.pink,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        bedItems(isblue: true, name: 4, context: context),
                        bedItems(isblue: false, name: 3, context: context),
                        bedItems(isblue: false, name: 2, context: context),
                        bedItems(isblue: false, name: 1, context: context),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        hotImage(img: 'hot1'),
                        hotImage(img: 'hot2'),
                        hotImage(img: 'hot3'),
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          dots(),
                          dots(),
                          dots(color: Colors.black87),
                          dots(),
                          dots(),
                          dots(),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('GHJK Engineering Hostel'),
                    subtitle: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Text(
                                'Lorem ipsum dolor sit amet, consectetur '),
                          )
                        ],
                      ),
                    ),
                    trailing: Container(
                      width: 70,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0XFF27C200),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '4.3',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.',
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Facilities'),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Image(
                              image: AssetImage('assets/images/fas1.png'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('College in 400mtrs')
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image(
                              image: AssetImage('assets/images/fas2.png'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Bathrooms : 2')
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 180,
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          child: const Center(
            child: Text(
              'HEY there , this feature is under development ',
            ),
          ),
        ),
        Container(
          child: const Center(
            child: Text(
              'HEY there , this feature is under development ',
            ),
          ),
        ),
      ],
    ),
  );
}

Container tabContainer(BuildContext context,
    {required TabController tabController}) {
  return Container(
    color: const Color.fromARGB(255, 73, 37, 233),
    height: 50,
    child: AppBar(
      backgroundColor: Colors.grey.shade300,
      elevation: 5,
      bottom: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.134),
        child: TabBar(
          controller: tabController,
          labelColor: Colors.black,
          indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(width: 3.0),
              insets: EdgeInsets.symmetric(vertical: -20)),
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Color(0xff0E3C6E),
          indicatorPadding: EdgeInsets.all(20),
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
  );
}

Padding hotImage({required String img}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/images/$img.jpg'))),
    ),
  );
}

Widget bedItems(
    {required bool isblue, required int name, required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 40,
      width: 90,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        color: isblue ? appcolor : Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: const AssetImage('assets/images/bed.png'),
            height: 29,
            width: 29,
            color: isblue ? Colors.white : Colors.black,
          ),
          Text(
            name.toString(),
            style: TextStyle(
              color: isblue ? Colors.white : Colors.black,
            ),
          )
        ],
      ),
    ),
  );
}
