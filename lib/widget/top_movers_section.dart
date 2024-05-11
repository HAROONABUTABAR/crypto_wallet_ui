import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants/constants.dart';
import '../constants/font_helper.dart';

class TopMoversSection extends StatelessWidget {
  const TopMoversSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Top Movers",
            style: FontHelper.font20BoldWhite.copyWith(
              color: ColorsManager.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 90,
                  width: 160,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorsManager.lightGrey,
                  ),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "+64.98%",
                            style: FontHelper.font16Regular.copyWith(
                              color: ColorsManager.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "BTC \$60.58",
                            style: FontHelper.font16Regular.copyWith(
                              color: ColorsManager.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset("assets/purple_graph.png"))
                    ],
                  ),
                ),
                Container(
                    height: 90,
                    width: 160,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: ColorsManager.lightGrey,
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "+20.98%",
                              style: FontHelper.font16Regular.copyWith(
                                color: ColorsManager.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "BTC \$10.58",
                              style: FontHelper.font16Regular.copyWith(
                                color: ColorsManager.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset("assets/pink_graph.png"))
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
