import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider/count_provider.dart';

class CountExample extends StatelessWidget {
  const CountExample({super.key});

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
            onPressed: () {
              countProvider.setCount();
            },
            child: const Text("+")),
        const SizedBox(
          height: 30,
        ),
        Consumer<CountProvider>(
          builder: (context, value, child) {
            return Text(value.count.toString());
          },
        ),
      ],
    );
  }
}
