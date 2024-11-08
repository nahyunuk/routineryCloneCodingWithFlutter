import 'package:flutter/material.dart';
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
  int _selectedIndex = 3;

  static const List<Widget> _pageList = <Widget>[
    MyPage(),
    SearchPage(),
    StatisticsReportsPage(),
    MyPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
            IconButton(
              onPressed: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
              icon: Icon(
                Icons.watch_later_outlined,
                size: 30,
                color: _selectedIndex == 0 ? Colors.black : Colors.grey.withOpacity(0.5),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
              icon: Icon(
                Icons.explore_outlined,
                size: 30,
                color: _selectedIndex == 1 ? Colors.black : Colors.grey.withOpacity(0.5),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
              icon: Icon(
                Icons.bar_chart_rounded,
                size: 30,
                color: _selectedIndex == 2 ? Colors.black : Colors.grey.withOpacity(0.5),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _selectedIndex = 3;
                });
              },
              icon: Icon(
                Icons.person_outlined,
                size: 30,
                color: _selectedIndex == 3 ? Colors.black : Colors.grey.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
