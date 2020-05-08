import 'package:starstar/exports.dart';

class Discover extends StatefulWidget {
  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      iosBuilder: _buildIos,
      androidBuilder: _buildAndroid,
    );
  }

  Widget _buildAndroid(context) {
    return Center(
      child: Container(
        child: Text('Discover'),
      ),
    );
  }

  Widget _buildIos(context) {
    return CupertinoTabView(
      defaultTitle: 'Discover',
      builder: (context) => Center(
        child: Container(
          child: Text('Discover'),
        ),
      ),
    );
  }
}
