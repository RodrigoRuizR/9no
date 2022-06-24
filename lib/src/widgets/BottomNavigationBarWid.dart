import 'package:flutter/material.dart';

import 'bottom_canvas_widget.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Container(
        height: 80,
        child: ListView(
          reverse: true,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 80,
                  child: Stack(children: [
                    CustomPaint(
                      size: const Size.fromHeight(80),
                      painter: BottomCanvas(),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.home,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.assignment,
                                size: 35, color: Colors.white),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.pets,
                                size: 35, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
