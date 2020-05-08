import 'exports.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      androidBuilder: _buildMaterialApp,
      iosBuilder: _buildCupertinoApp,
    );
  }

  Widget _buildMaterialApp(context) {
    return MaterialApp(
      title: 'StarStar',
      debugShowCheckedModeBanner: false,
      home: Index(),
    );
  }

  Widget _buildCupertinoApp(context) {
    return CupertinoApp(
      title: 'StarStar',
      debugShowCheckedModeBanner: false,
      home: Index(),
    );
  }
}
