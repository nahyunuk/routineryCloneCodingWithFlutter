import 'package:flutter/material.dart';
import 'package:routinery_clone_coding_with_flutter/MainPage/main_page.dart';
import 'package:routinery_clone_coding_with_flutter/MyPage/my_page.dart';
import 'package:routinery_clone_coding_with_flutter/SearchPage/search_page.dart';
import 'package:routinery_clone_coding_with_flutter/StatisticsReportsPage/statistics_reports_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with TickerProviderStateMixin {
  late final TabController _tabController;
  int _selectedIndex = 0;

  static final List<Widget> _pageList = <Widget>[
    MainPage(),
    SearchPage(),
    const StatisticsReportsPage(),
    const MyPage(),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  Widget _buildIconButton(int index, IconData iconData) {
    return IconButton(
      onPressed: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      icon: Icon(
        iconData,
        size: 30,
        color: _selectedIndex == index ? Colors.black : Colors.grey.withOpacity(0.5),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 12.0,
        shadowColor: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildIconButton(0, Icons.watch_later_outlined),
            _buildIconButton(1, Icons.explore_outlined),
            _buildIconButton(2, Icons.bar_chart_rounded),
            _buildIconButton(3, Icons.person_outlined),
          ],
        ),
      ),
    );
  }
}
