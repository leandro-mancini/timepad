import 'package:flutter/material.dart';

class FABBottomAppBarItem {
  FABBottomAppBarItem({this.icon, this.text});
  IconData icon;
  String text;
}

class BottomNavigationBarItem {
  BottomNavigationBarItem({
    this.iconData,
    this.text
  });

  dynamic iconData;
  String text;
}

class DsBottomNavigationBarLayout extends StatefulWidget {
  DsBottomNavigationBarLayout({
    this.items,
    this.color,
    this.selectedColor,
    this.onTabSelected,
    this.height: 70.0,
    this.iconSize: 24.0,
    this.notchedShape
  });

  final List<dynamic> items;
  final Color color;
  final Color selectedColor;
  final ValueChanged<int> onTabSelected;
  final double height;
  final double iconSize;
  final NotchedShape notchedShape;

  @override
  _DsBottomNavigationBarLayoutState createState() => _DsBottomNavigationBarLayoutState();
}

class _DsBottomNavigationBarLayoutState extends State<DsBottomNavigationBarLayout> {
  int _selectedIndex = 0;

  void _updateIndex(int index) {
    widget.onTabSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(widget.items.length, (int index) {
      return _buildTabItem(
        item: widget.items[index],
        index: index,
        onPressed: _updateIndex,
      );
    });

    // items.insert(items.length >> 1, _buildMiddleTabItem());

    return BottomAppBar(
      // shape: widget.notchedShape,
      // shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items,
      ),
      // color: widget.backgroundColor,
    );
  }

  Widget _buildMiddleTabItem() {
    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: widget.iconSize),
            Text(
              '',
              style: TextStyle(
                color: widget.color,
                fontFamily: 'Grito',
                fontWeight: FontWeight.bold,
                fontSize: 14
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem({
    FABBottomAppBarItem item,
    int index,
    ValueChanged<int> onPressed,
  }) {
    Color color = _selectedIndex == index ? widget.selectedColor : widget.color;

    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => onPressed(index),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  item.icon,
                  size: widget.iconSize,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}