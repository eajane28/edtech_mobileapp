import 'package:edtech_mobile/model/payment_data.dart';
import 'package:edtech_mobile/ui/common/png_constants.dart';
import 'package:flutter/material.dart';

class PaymentItem extends StatelessWidget {
  PaymentItem({super.key, required this.card});

  PaymentData? card;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset(CardTypeImage.visa, width: 78, height: 72),
            const SizedBox(width: 8.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    card?.paymentMethod ?? '',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF3C3A36),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    card?.cardNumber ?? '',
                    style: const TextStyle(
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
