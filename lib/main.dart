import 'package:crypto_wallet/constants/app_assets.dart';
import 'package:crypto_wallet/constants/constants.dart';
import 'package:crypto_wallet/widget/action_section.dart';
import 'package:crypto_wallet/widget/custom_app_bar.dart';
import 'package:crypto_wallet/widget/amount_card_section.dart';
import 'package:crypto_wallet/widget/top_movers_section.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Wallet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPageIndex = 2;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Container(
          color: ColorsManager.white,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Amount  Card Section
              AmountCardSection(),
              // Action Section
              ActionSection(),
              // Top Movers Section
              TopMoversSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        buttonBackgroundColor: ColorsManager.darkPurple,
        backgroundColor: ColorsManager.white,
        color: ColorsManager.darkPurple,
        items: [
          Image.asset(
            AppAssets.iconHomme,
          ),
          Image.asset(
            AppAssets.iconWallet,
          ),
          const SizedBox(
            child: Text(""),
          ),
          Image.asset(
            AppAssets.iconMarket,
          ),
          Image.asset(
            AppAssets.iconSetting,
          ),
        ],
        index: currentPageIndex,
        letIndexChange: (index) => true,
        onTap: (index) {
          currentPageIndex = index;
        },
      ),
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          onPressed: () {
            final CurvedNavigationBarState? navBarState =
                _bottomNavigationKey.currentState;
            navBarState?.setPage(2);
          },
          backgroundColor: ColorsManager.mediumPurple,
          child: Image.asset(
            AppAssets.iconSwapFill,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
