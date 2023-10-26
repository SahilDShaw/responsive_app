import 'package:flutter/material.dart';

class Card1 extends StatefulWidget {
  const Card1({super.key});

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    // for card 1, I have employed LayoutBuilder()
    // for implementing reponsive UI
    return LayoutBuilder(
      builder: (context, constraints) {
        // Calculate dimensions based on constraints
        double cardWidth = constraints.maxWidth;

        return Container(
          decoration: const BoxDecoration(
            color: Colors.redAccent,
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                offset: Offset(6, 6),
                color: Colors.grey,
              ),
            ],
          ),
          width: cardWidth,
          height: 100,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // grey box
                Container(
                  color: Colors.grey,
                  width: 200, // width fixed
                  height: 30,
                ),
                // green box
                Container(
                  color: Colors.greenAccent,
                  width: cardWidth * 0.9, // width responsive
                  height: 35,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
