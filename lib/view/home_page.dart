import 'package:flutter/material.dart';
import 'package:newsapp/view/categories/apple_widget.dart';
import 'package:newsapp/view/categories/business_widget.dart';
import 'package:newsapp/view/categories/maganizes_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily News"),
        bottom:
            TabBar(controller: _tabController, isScrollable: true, tabs: const [
          Tab(
            text: "Apple",
          ),
          Tab(
            text: "Business",
          ),
          Tab(
            text: "Magazine",
          ),
        ]),
      ),
      body: TabBarView(controller: _tabController, children: _newsBody),
    );
  }

  final List<Widget> _newsBody = [
    const AppleNewsWidget(),
    const BusinessNewsWidget(),
    const MagazineNewsWidget()
  ];
}
