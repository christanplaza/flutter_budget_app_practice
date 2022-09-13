import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.blueAccent,
      shape: CircularNotchedRectangle(),
      notchMargin: 5,
      child: Row(
        children: [
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          // IconButton(
          //   icon: Icon(
          //     Icons.search,
          //     color: Colors.white,
          //   ),
          //   onPressed: () {},
          // ),
          // IconButton(
          //   icon: Icon(
          //     Icons.print,
          //     color: Colors.white,
          //   ),
          //   onPressed: () {},
          // ),
          // Padding(
          //   padding: EdgeInsets.only(right: 90),
          //   child: IconButton(
          //     icon: Icon(
          //       Icons.people,
          //       color: Colors.white,
          //     ),
          //     onPressed: () {},
          //   ),
          // )
        ],
      ),
    );
  }
}
