import 'package:flutter/material.dart';

class Card2 extends StatefulWidget {
  const Card2({super.key});

  @override
  State<Card2> createState() => _Card2State();
}

class _Card2State extends State<Card2> {
  final double greyBoxHeight = 50;

  @override
  Widget build(BuildContext context) {
    // for card 2, I have employed FractionallySizedBox()
    // for implementing reponsive UI
    return FractionallySizedBox(
      widthFactor: 0.9,
      child: Stack(
        children: [
          // red card
          Column(
            children: [
              SizedBox(
                height: greyBoxHeight * 0.5,
              ),
              Container(
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
                height: 100,
                // green box
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        color: Colors.greenAccent,
                        height: 35,
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          // grey box
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              color: Colors.grey,
              width: 200, // width fixed
              height: greyBoxHeight,
            ),
          ),
        ],
      ),
    );
  }
}
