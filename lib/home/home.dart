import 'package:starstar/exports.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
    return CupertinoTabView(
      defaultTitle: 'Home',
      builder: (context) => Center(
        child: Container(
          child: Text('Home'),
        ),
      ),
    );
  }
}
