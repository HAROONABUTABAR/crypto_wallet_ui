import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ActionSectionWdiget extends StatelessWidget {
  const ActionSectionWdiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Action",
            style: TextStyle(
              color: ColorsManager.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Container(
                height: 200,
                width: 180,
                padding: const EdgeInsets.all(5),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40)),
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      top: 30,
                      bottom: 0,
                      left: 0,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: ColorsManager.pink,
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "Receive",
                            style: TextStyle(
                              color: ColorsManager.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Image.asset("assets/arrow_icon.png")
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 5,
                      child: Image.asset("assets/hands.png"),
                    )
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 180,
                padding: const EdgeInsets.all(5),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40)),
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      top: 30,
                      bottom: 0,
                      left: 0,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: ColorsManager.mediumPurple,
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "Receive",
                            style: TextStyle(
                              color: ColorsManager.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Image.asset("assets/arrow_icon.png")
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 5,
                      child: Image.asset("assets/pocket.png"),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
