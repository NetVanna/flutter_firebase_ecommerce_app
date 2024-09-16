import 'package:flutter/material.dart';

import '../../../../widgets/container/rounded_container.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      showBorder: true,
      backgroundColor:
          selectedAddress ? Colors.blue.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAddress ? Colors.transparent : Colors.grey,
      margin: const EdgeInsets.only(bottom: 16),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Icon(
              selectedAddress ? Icons.verified : null,
              color: selectedAddress ? Colors.black : null,
            ),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "John Doe",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "(+885) 23323423",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "934534 Tommy Curve,South Liana, 934543, USA",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
