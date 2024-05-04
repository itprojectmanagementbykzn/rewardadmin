import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rewardadmin/page/marketing.dart';
import 'package:rewardadmin/page/point_manage.dart';
import 'package:rewardadmin/page/report.dart';
import 'package:rewardadmin/widget/tabbar_widget.dart';




Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeLeft,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Reward Admin Panel';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => TabBarWidget(
        title: '',
        tabs: const [
          Tab(icon: Icon(Icons.badge_outlined), text: 'User Management'),
          Tab(icon: Icon(Icons.data_thresholding_outlined), text: 'Shop Report'),
          Tab(icon: Icon(Icons.person_2), text: 'Marketing'),
          // Tab(icon: Icon(Icons.edit), text: 'Editable'),
        ],
        children: [
          PointManage(),
          Report(),
          Marketing(),

          // Container(),
        ],
      );
}
