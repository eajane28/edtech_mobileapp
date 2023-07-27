import 'package:edtech_mobile/model/payment_data.dart';
import 'package:flutter/material.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({super.key, required this.card});

  final PaymentData card;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset("card.image", width: 78, height: 72),
            const SizedBox(width: 8.0),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'card.title',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF3C3A36),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "card.subtitle",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF78746D),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
