import 'package:flutter/material.dart';
import 'package:timepad/ui/shared/styles.dart';
import 'package:timepad/ui/shared/widgets/bottom_navigation_bar_layout.dart';
import 'package:timepad/ui/task/task_view.dart';
import 'package:timepad/ui/tasks/tasks_view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  List<Widget> pages = [
    TasksView(),
    TaskView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
      bottomNavigationBar: bottomNavigationBar(),
      // floatingActionButton: floatingActionButton(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget body() {
    return Container(
      child: pages[currentIndex],
    );
  }

  Widget bottomNavigationBar() {
    return DsBottomNavigationBarLayout(
      onTabSelected: _onTab,
      items: [
        FABBottomAppBarItem(icon: Icons.access_time),
        FABBottomAppBarItem(icon: Icons.add),
        FABBottomAppBarItem(icon: Icons.pie_chart_outlined),
      ],
    );
  }

  Widget floatingActionButton() {
    return FloatingActionButton(
      // onPressed: () => push(context, NegotiationPage()),
      onPressed: () => {},
      tooltip: 'Adicionar',
      child: Icon(
        Icons.add,
        color: dsBlack,
      ),
      elevation: 0,
      backgroundColor: dsWhite,
      
    );
  }

  void _onTab(int index) {
    print(index);
    setState(() => currentIndex = index);
    print('currentIndex: ${currentIndex}');
  }
}