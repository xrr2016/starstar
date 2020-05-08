import 'package:starstar/exports.dart';

class Mine extends StatefulWidget {
  @override
  _MineState createState() => _MineState();
}

class _MineState extends State<Mine> {
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
        child: Text('Mine'),
      ),
    );
  }

  Widget _buildIos(context) {
    return CupertinoTabView(
      defaultTitle: 'Mine',
      builder: (context) => Center(
        child: Container(
          child: Text('Mine'),
        ),
      ),
    );
  }
}
