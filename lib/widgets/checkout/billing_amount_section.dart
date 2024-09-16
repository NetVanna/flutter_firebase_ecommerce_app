import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: Text("SubTotal",style: TextStyle(fontWeight: FontWeight.w400),)),
            Text("\$256.0",style: TextStyle(fontWeight: FontWeight.w400),),
          ],
        ),
        SizedBox(height: 15,),
        Row(
          children: [
            Expanded(child: Text("Shipping Fee",style: TextStyle(fontWeight: FontWeight.w400),)),
            Text("\$6.0",style: TextStyle(fontWeight: FontWeight.w400),),
          ],
        ),
        SizedBox(height: 15,),
        Row(
          children: [
            Expanded(child: Text("Tax Fee",style: TextStyle(fontWeight: FontWeight.w400),)),
            Text("\$6.0",style: TextStyle(fontWeight: FontWeight.w400),),
          ],
        ),
        SizedBox(height: 15,),
        Row(
          children: [
            Expanded(child: Text("Order Total",style: TextStyle(fontWeight: FontWeight.w400),)),
            Text("\$256.0",style: TextStyle(fontWeight: FontWeight.w400),),
          ],
        ),
      ],
    );
  }
}
