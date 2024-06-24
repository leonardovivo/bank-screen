import 'package:bank_screen/income_box.dart';
import 'package:bank_screen/spending_box.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 5, 45, 248),
                    Color.fromARGB(255, 250, 6, 250),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'VISA',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Balance',
                      style: TextStyle(
                        fontFamily: 'NotoSans',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      '\$7,630',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '****8149',
                              style: TextStyle(
                                fontFamily: 'NotoSans',
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '07/27',
                          style: TextStyle(
                            fontFamily: 'NotoSans',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Row(
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
          ],
        ),
      ),
    );
  }
}
