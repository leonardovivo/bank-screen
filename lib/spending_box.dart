import 'package:flutter/material.dart';

class SpendingBox extends StatelessWidget {
  const SpendingBox({
    super.key,
    required this.amount,
    required this.percentage,
  });

  final String amount;
  final String percentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 17, 16, 16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Spending',
              style: TextStyle(
                fontFamily: 'NotoSans',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 5.0),
            Text(
              '-\$$amount',
              style: const TextStyle(
                color: Color.fromARGB(255, 249, 99, 89),
                fontWeight: FontWeight.bold,
                fontSize: 27,
              ),
            ),
            const SizedBox(height: 5.0),
            Container(
              width: 70,
              height: 28,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 249, 99, 89).withOpacity(0.2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const Icon(
                    Icons.arrow_downward,
                    color: Colors.red,
                    size: 18,
                  ),
                  Text(
                    percentage,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 249, 99, 89),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
