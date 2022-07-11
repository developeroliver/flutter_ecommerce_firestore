import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/providers.dart';
import '../../../widgets/empty_widget.dart';

class UserBag extends ConsumerWidget {
  const UserBag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final bagViewProvider = ref.watch(bagProvider);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back button
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Flexible(
                    child: Text(
                      "My Bag",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ],
              ),
              bagViewProvider.productsBag.isEmpty
                  ? const EmptyWidget()
                  : Flexible(
                      child: ListView.builder(
                        itemCount: bagViewProvider.totalProducts,
                        itemBuilder: (context, index) {
                          final product = bagViewProvider.productsBag[index];
                          return ListTile(
                            title: Text(product.name),
                            subtitle: Text("\$${product.price}"),
                            trailing: IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {
                                bagViewProvider.removeProduct(product);
                              },
                            ),
                          );
                        },
                      ),
                    ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total: \$${bagViewProvider.totalPrice.toStringAsFixed(2)}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () async {},
                      child: const Text("Checkout"),
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
