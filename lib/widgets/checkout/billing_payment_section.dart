import 'package:flutter/material.dart';

import '../container/rounded_container.dart';
import '../text/section_heading.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeading(
          title: "Payment Method",
          buttonTitle: "Change",
          showActionButton: true,
          onPressed: () {},
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            RoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: Colors.white,
              child: Image.asset(
                "assets/logos/pngegg.png",
                fit: BoxFit.contain,
              ),
            ),
            const Text("Paypal")
          ],
        ),
      ],
    );
  }
}
