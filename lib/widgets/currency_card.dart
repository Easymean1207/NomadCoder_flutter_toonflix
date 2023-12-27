import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String currency_name, currency_amount, currency_code;
  final IconData currency_icon;
  final bool is_inverted;
  final double offset;

  final Color card_color = const Color(0x80808080);

  const CurrencyCard({
    super.key,
    required this.currency_name,
    required this.currency_amount,
    required this.currency_code,
    required this.currency_icon,
    required this.is_inverted,
    required this.offset,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, (offset - 1) * -30),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: is_inverted ? Colors.white : card_color,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currency_name,
                    style: TextStyle(
                      fontSize: 24,
                      color: is_inverted ? card_color : Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        currency_amount,
                        style: TextStyle(
                            color: is_inverted ? card_color : Colors.white,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        currency_code,
                        style: TextStyle(
                          color: is_inverted
                              ? card_color
                              : Colors.white.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.5,
                child: Transform.translate(
                  offset: const Offset(2.5, 10),
                  child: Icon(
                    currency_icon,
                    color: is_inverted ? card_color : Colors.white,
                    size: 60,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
