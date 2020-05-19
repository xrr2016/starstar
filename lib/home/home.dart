import 'package:flutter/gestures.dart';
import 'package:starstar/exports.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 1;
  List<Widget> _items = [
    Container(
      color: Colors.blue,
      margin: const EdgeInsets.only(right: 24),
    ),
    Container(
      color: Colors.yellow,
      margin: const EdgeInsets.only(right: 24),
    ),
    Container(
      color: Colors.red,
      margin: const EdgeInsets.only(right: 24),
    ),
    Container(
      color: Colors.green,
      margin: const EdgeInsets.only(right: 24),
    ),
    Container(
      color: Colors.purple,
      margin: const EdgeInsets.only(right: 24),
    ),
    Container(
      color: Colors.orange,
      margin: const EdgeInsets.only(right: 24),
    ),
    Container(
      color: Colors.amber,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildCupertinoTabView,
    );
  }

  Widget _buildAndroid(context) {
    return Center(
      child: Container(
        child: Text('Home'),
      ),
    );
  }

  Widget _buildCupertinoTabView(context) {
    final size = MediaQuery.of(context).size;

    return CupertinoPageScaffold(
      child: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Container(
                    height: 40,
                    child: CupertinoTextField(
                      prefix: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Icon(Icons.search),
                      ),
                      placeholder: 'Search',
                      suffix: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            VerticalDivider(
                              color: Colors.black,
                              indent: 14.0,
                              endIndent: 12.0,
                              thickness: 1.0,
                            ),
                            Text('书城'),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.0),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  Expanded(
                    child: Container(
                      child: ListView(
                        itemExtent: size.width,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        children: _items,
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 60,
                height: 60,
                margin: const EdgeInsets.only(bottom: 24, right: 24),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // color: Colors.black,
                ),
                child: Text('$_currentIndex'),
              ),
            ),
          ],
        ),
      ),
    );

    // CupertinoTabView(
    //   defaultTitle: 'Home',
    //   builder: (context) => SingleChildScrollView(
    //     child: Column(
    //       children: <Widget>[
    //         CupertinoNavigationBar(),
    //         Container(
    //           height: 1000,
    //           child: Center(child: Text('Home')),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
