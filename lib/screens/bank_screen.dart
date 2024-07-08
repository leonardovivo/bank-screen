import 'package:bank_screen/components/card_box.dart';
import 'package:bank_screen/components/income_box.dart';
import 'package:bank_screen/components/spending_box.dart';
import 'package:bank_screen/components/quick_and_transaction.dart';
import 'package:flutter/material.dart';

class BankScreen extends StatelessWidget {
  const BankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 34, 34),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 36, 34, 34),
        title: RichText(
          text: const TextSpan(
            text: 'My Card',
            style: TextStyle(
              fontFamily: 'NotoSans',
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 2, 255, 242),
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(8.0),
                child: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              CardBox(),
              SizedBox(height: 16.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IncomeBox(
                    amount: '12,402',
                    percentage: '4.5%',
                  ),
                  SizedBox(width: 20.0),
                  SpendingBox(
                    amount: '8,392',
                    percentage: '4.5%',
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              QuickAndTransaction(),
            ],
          ),
        ),
      ),
    );
  }
}
