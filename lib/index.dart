import 'exports.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      androidBuilder: _buildScaffold,
      iosBuilder: _buildCupertinoTabScaffold,
    );
  }

  List<BottomNavigationBarItem> _tabs = [
    BottomNavigationBarItem(
      title: Text('Home'),
      icon: Icon(Icons.home),
    ),
    BottomNavigationBarItem(
      title: Text('Discover'),
      icon: Icon(Icons.explore),
    ),
    BottomNavigationBarItem(
      title: Text('Mine'),
      icon: Icon(Icons.account_circle),
    ),
  ];

  List<Widget> _contents = [Home(), Discover(), Mine()];

  int _index = 0;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: _contents.length,
      initialIndex: _index,
    );
  }

  Widget _buildScaffold(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _contents,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _tabs,
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index = value;
            _tabController.animateTo(value);
          });
        },
      ),
    );
  }

  Widget _buildCupertinoTabScaffold(context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: _tabs,
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
      ),
      tabBuilder: (context, index) {
        return _contents[_index];
      },
    );
  }
}
