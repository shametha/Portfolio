import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/screens/About.dart';
import 'package:portfolio/screens/Education.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Method method = Method();
  late AutoScrollController _autoScrollController;
  final scrollDirection = Axis.vertical;
  bool isExpaned = true;

  bool get _isAppBarExpanded {
    return _autoScrollController.hasClients &&
        _autoScrollController.offset > (160 - kToolbarHeight);
  }

  @override
  void initState() {
    _autoScrollController = AutoScrollController(
      viewportBoundaryGetter: () =>
          Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: scrollDirection,
    )..addListener(
        () => _isAppBarExpanded
            ? isExpaned != false
                ? setState(
                    () {
                      isExpaned = false;
                      print('setState is called');
                    },
                  )
                : {}
            : isExpaned != true
                ? setState(() {
                    print('setState is called');
                    isExpaned = true;
                  })
                : {},
      );
    super.initState();
  }

  Future _scrollToIndex(int index) async {
    await _autoScrollController.scrollToIndex(index,
        preferPosition: AutoScrollPosition.begin);
    _autoScrollController.highlight(index);
  }

  Widget _wrapScrollTag({required int index, required Widget child}) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: _autoScrollController,
      index: index,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        primary: true,
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: size.height * 0.14,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Spacer(),
                  Expanded(
                    child: DefaultTabController(
                        length: 5,
                        child: TabBar(
                          indicatorColor: Colors.yellow,
                          onTap: (index) async {
                            _scrollToIndex(index);
                          },
                          tabs: [
                            Tab(
                                child: Text(
                              "About",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14.0,
                                letterSpacing: 3.0,
                                color: Color(0xffBAD0D0),
                              ),
                            )),
                            Tab(
                                child: Text(
                              "Education",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14.0,
                                letterSpacing: 3.0,
                                color: Color(0xffBAD0D0),
                              ),
                            )),
                            Tab(
                                child: Text(
                              "Experience",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14.0,
                                letterSpacing: 3.0,
                                color: Color(0xffBAD0D0),
                              ),
                            )),
                            Tab(
                                child: Text(
                              "Projects",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14.0,
                                letterSpacing: 3.0,
                                color: Color(0xffBAD0D0),
                              ),
                            )),
                            Tab(
                                child: Text(
                              "Contact Me",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14.0,
                                letterSpacing: 3.0,
                                color: Color(0xffBAD0D0),
                              ),
                            )),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  height: size.height - 82,
                  width: size.width * 0.09,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
                        width: 60,
                        height: 60,
                        decoration: new BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                            icon: FaIcon(FontAwesomeIcons.github),
                            color: Color(0xffffA8B2D1),
                            iconSize: 32.0,
                            onPressed: () {
                              //method.launchURL("https://github.com/shametha");
                            }),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        width: 60,
                        height: 60,
                        decoration: new BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                            icon: FaIcon(FontAwesomeIcons.linkedin),
                            color: Color(0xffffA8B2D1),
                            iconSize: 32.0,
                            onPressed: () {
                              //method.launchURL("https://www.linkedin.com/in/shametha");
                            }),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        width: 60,
                        height: 60,
                        decoration: new BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                            icon: Icon(Icons.mail_outline_rounded),
                            color: Color(0xffffA8B2D1),
                            iconSize: 32.0,
                            onPressed: () {
                              //method.launchURL("https://www.linkedin.com/in/shametha");
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Container(
                          height: size.height * 0.20,
                          width: 2,
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                  height: size.height - 82,
                  //color: Colors.black,
                  child: CustomScrollView(
                    controller: _autoScrollController,
                    slivers: [
                      SliverList(
                          delegate: SliverChildListDelegate([
                        Stack(
                          children: [
                            Row(children: [
                              Container(
                                color: Colors.black,
                                width: size.width * 0.3,
                              ),
                              Container(
                                width: size.width * 0.6,
                                child: Image.asset(
                                  '/images/p.jpg',
                                  // height: size.height/3,
                                  // width: size.width/3,
                                ),
                                color: Colors.green,
                              )
                            ]),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: size.height * 0.2,
                                ),
                                Text(
                                  "Hello! I am",
                                  style: TextStyle(
                                    fontSize: 50.0,
                                    letterSpacing: 3.0,
                                    color: Color(0xffBAD0D0),
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "Shametha K G",
                                  style: TextStyle(
                                    fontSize: 90.0,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: 3.0,
                                    color: Color(0xffBAD0D0),
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "Student Flutter developer from India",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    letterSpacing: 3.0,
                                    color: Color(0xffBAD0D0),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.2,
                                ),
                                Wrap(
                                  children: [
                                    Text(
                                      "Temporary Text----A random paragraph can also be an excellent way for a writer to tackle writers' block. Writing block can often happen due to being stuck with a current project that the writer is trying to complete. By inserting a completely random paragraph from which to begin, it can take down some of the issues that may have been causing the writers' block in the first place.",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16.0,
                                        letterSpacing: 2.75,
                                        wordSpacing: 0.75,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: size.height * .12,
                                ),
                              ],
                            ),
                          ],
                        ),
                        _wrapScrollTag(
                          index: 0,
                          child: About(),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),

                        //Where I've Worked
                        _wrapScrollTag(index: 1, child: Education()),
                        SizedBox(
                          height: size.height * 0.10,
                        ),
                      ]))
                    ],
                  ),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
