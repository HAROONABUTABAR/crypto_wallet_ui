import 'package:crypto_wallet/constants/constants.dart';
import 'package:crypto_wallet/widget/action_section.dart';
import 'package:crypto_wallet/widget/custom_app_bar.dart';
import 'package:crypto_wallet/widget/amount_card.dart';
import 'package:crypto_wallet/widget/top_movers_section.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
              AmountCardWidget(),
              // Action Section
              ActionSectionWdiget(),
              // Top Movers Section
              TopMoversSectionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
