import 'package:edtech_mobile/model/payment_data.dart';
import 'package:edtech_mobile/ui/common/png_constants.dart';
import 'package:edtech_mobile/ui/common/ui_helpers.dart';
// import 'package:edtech_mobile/ui/views/widgets/card_courses.dart';
import 'package:flutter/material.dart';

typedef OnTap = Function(PaymentData card);

class PaymentItem extends StatelessWidget {
  const PaymentItem({super.key, required this.card, required this.onTap});

  final OnTap onTap;
  final PaymentData card;

  @override
  Widget build(BuildContext context) {
    // bool selected = false;
    return GestureDetector(
      onTap: () => onTap(card),
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              card.paymentMethod == 'other'
                  ? Icon(
                      Icons.credit_card,
                      size: 40.0,
                      color: Colors.grey[600],
                    )
                  : Image.asset('${CardTypeImage.rootPath}${card.paymentMethod}.png', width: 78, height: 72),
              horizontalSpaceMedium,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      formatCreditCardNumber(card.cardNumber),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF3C3A36),
                      ),
                    ),
                   verticalSpaceMedium,
                    Text(
                      "Expires ${card.expiryDate}",
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
      ),
    );
  }
}
