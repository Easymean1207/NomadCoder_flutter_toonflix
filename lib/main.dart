import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toonflix',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Hey, Gozo Satoru!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Welcome back!',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
                width: double.infinity,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 30,
                width: double.infinity,
              ),
              Text(
                '\$1000 dollar',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
                width: double.infinity,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                    text: 'Transfer',
                    background_color: Colors.amber,
                    text_color: Colors.black,
                  ),
                  MyButton(
                    text: 'Request',
                    background_color: Color(0x66666666),
                    text_color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(
                width: double.infinity,
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Wallet',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: double.infinity,
                height: 20,
              ),
              const CurrencyCard(
                currency_name: 'Euro',
                currency_amount: '6000',
                currency_code: 'EUR',
                currency_icon: Icons.euro_outlined,
                is_inverted: false,
                offset: 1,
              ),
              const CurrencyCard(
                currency_name: 'Dollar',
                currency_amount: '100',
                currency_code: 'USD',
                currency_icon: Icons.attach_money,
                is_inverted: true,
                offset: 2,
              ),
              const CurrencyCard(
                currency_name: 'Een',
                currency_amount: '6000',
                currency_code: 'JPY',
                currency_icon: Icons.currency_yen_outlined,
                is_inverted: false,
                offset: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
