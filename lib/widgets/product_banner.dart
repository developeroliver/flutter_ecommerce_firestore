import 'package:flutter/material.dart';

class ProductBanner extends StatelessWidget {
  const ProductBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color.fromARGB(255, 255, 123, 0), Colors.black],
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisSize: MainAxisSize.min,
            children: const [
              Text("New Release",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  )),
              SizedBox(height: 10),
              Text(
                "New iMac",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 32),
              ),
            ],
          ),
          Image.asset("assets/img/imac.png",
            width: 160,
          )
        ],
      ),
    );
  }
}
