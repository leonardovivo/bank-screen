import 'package:bank_screen/card_box.dart';
import 'package:bank_screen/income_box.dart';
import 'package:bank_screen/spending_box.dart';
import 'package:bank_screen/quick_service.dart';
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
      ),
      body: const SingleChildScrollView(
        child: Padding(
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
              QuickService(),
            ],
          ),
        ),
      ),
    );
  }
}
