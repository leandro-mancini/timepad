import 'package:flutter/material.dart';
import 'package:timepad/ui/shared/styles.dart';
import 'package:timepad/ui/shared/widgets/bottom_navigation_bar_layout.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar(),
      // floatingActionButton: floatingActionButton(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
  }
}