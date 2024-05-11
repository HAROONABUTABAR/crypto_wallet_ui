import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constants/constants.dart';

class AmountCardSection extends StatefulWidget {
  const AmountCardSection({super.key});

  @override
  State<AmountCardSection> createState() => _AmountCardSectionState();
}

class _AmountCardSectionState extends State<AmountCardSection>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsManager.white,
      height: 250,
      margin: const EdgeInsets.all(5),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            bottom: 20,
            right: 0,
            left: 0,
            child: Container(
              margin: const EdgeInsets.all(15),
              height: 150,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(250, 18),
                    topRight: Radius.elliptical(250, 18),
                    bottomRight: Radius.elliptical(250, 20),
                    bottomLeft: Radius.elliptical(250, 20),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      ColorsManager.darkPurple,
                      ColorsManager.lightPurple,
                    ],
                  )),
              child: const Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Text(
                      "8.70% Today,",
                      style: TextStyle(
                        color: ColorsManager.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 20,
                    child: Text(
                      "\$400,670.90",
                      style: TextStyle(
                        color: ColorsManager.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -5,
            right: -70,
            child: Lottie.asset(
              "assets/coin_stack.json",
              width: 250,
              height: 150,
              onLoaded: (composition) {
                _controller.duration = composition.duration +
                    const Duration(seconds: 5); // Forward by 5 seconds
              },
            ),
          ),
          Positioned(
            bottom: 12,
            left: 30,
            child: FloatingActionButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              backgroundColor: ColorsManager.darkPink,
              child: Image.asset("assets/plus_icon.png"),
            ),
          ),
        ],
      ),
    );
  }
}
