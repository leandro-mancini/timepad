import 'package:flutter/material.dart';
import 'package:timepad/ui/tasks/app_bar_view.dart';
import 'package:timepad/ui/tasks/tasks_list_action_view.dart';
import 'package:timepad/ui/tasks/tasks_list_view.dart';
import 'package:timepad/ui/tasks/timer_card_view.dart';

class TasksView extends StatefulWidget {
  @override
  _TasksViewState createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        AppBarView(),
        TimerCardView(),
        TasksListActionView(),
        TaskListView(),
      ],
    );
  }
}