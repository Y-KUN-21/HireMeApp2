import 'package:flutter/material.dart';
import 'package:hire_me/commons/category_pills.dart';
import 'package:hire_me/constrants.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "HOME",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
      endDrawer: _myDrawer(),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 15,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: double.infinity,
                      height: 350,
                      child: Card(
                        elevation: 0.0,
                        borderOnForeground: true,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                "https://cdn.pixabay.com/photo/2019/10/23/06/53/china-4570626_960_720.jpg",
                                width: double.infinity,
                                height: 250,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10.0, 10, 10, 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "2020.14.oct".toUpperCase(),
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        "A1 wood works",
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                  Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle),
                                    child: Image.network(
                                        "https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/batman_hero_avatar_comics-512.png"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      indent: 5,
                      endIndent: 5,
                      thickness: 1,
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }

  Widget _myDrawer() {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              curve: Curves.elasticInOut,
              child: Center(
                child: Text(
                  'Categories',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.normal),
                ),
              ),
              decoration: BoxDecoration(
                color: bgColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                direction: Axis.horizontal,
                children: [
                  CategoryPill(
                    text: "Carpenter",
                    onTap: null,
                  ),
                  CategoryPill(
                    text: "plumber",
                    onTap: null,
                  ),
                  CategoryPill(
                    text: "Electrician",
                    onTap: null,
                  ),
                  CategoryPill(
                    text: "Painter",
                    onTap: null,
                  ),
                  CategoryPill(
                    text: "Tutor",
                    onTap: null,
                  ),
                  CategoryPill(
                    text: "Driver",
                    onTap: null,
                  ),
                  CategoryPill(
                    text: "Laborers",
                    onTap: null,
                  ),
                  CategoryPill(
                    text: "mechanics",
                    onTap: null,
                  ),
                  CategoryPill(
                    text: "electronics repairers",
                    onTap: null,
                  ),
                  CategoryPill(
                    text: "Millwrights",
                    onTap: null,
                  ),
                  CategoryPill(
                    text: "Chef",
                    onTap: null,
                  ),
                  CategoryPill(
                    text: "Bakers",
                    onTap: null,
                  ),
                  CategoryPill(
                    text: "Automotive service",
                    onTap: null,
                  ),
                  CategoryPill(
                    text: "Shoeshiner ",
                    onTap: null,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
