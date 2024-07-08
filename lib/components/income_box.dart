import 'package:flutter/material.dart';

class IncomeBox extends StatelessWidget {
  const IncomeBox({
    super.key,
    required this.amount,
    required this.percentage,
  });

  final String amount;
  final String percentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 8.0), // Ajuste o valor de left conforme necessário
      child: Container(
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
                'Income',
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 5.0),
              Text(
                '+\$$amount',
                style: const TextStyle(
                  color: Color.fromARGB(255, 2, 255, 242),
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
                  color:
                      const Color.fromARGB(255, 2, 255, 242).withOpacity(0.2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.arrow_upward,
                      color: Color.fromARGB(255, 0, 255, 195),
                      size: 18,
                    ),
                    Text(
                      percentage,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 2, 255, 242),
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
      ),
    );
  }
}
