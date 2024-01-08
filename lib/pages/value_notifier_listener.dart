import 'package:flutter/material.dart';

class NotifyListernnerScreen extends StatelessWidget {
  NotifyListernnerScreen({super.key});

  ValueNotifier<int> counter = ValueNotifier<int>(0);
  ValueNotifier<bool> toggle = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: ValueListenableBuilder(
              valueListenable: toggle,
              builder: (context, value, child) {
                return TextFormField(
                  obscureText: value,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    hintText: 'password',
                    suffix: InkWell(
                      onTap: () {
                        toggle.value = !toggle.value;
                      },
                      child:
                          Icon(value ? Icons.visibility_off : Icons.visibility),
                    ),
                  ),
                );
              }),
        ),
        const SizedBox(
          height: 20,
        ),
        ValueListenableBuilder(
            valueListenable: counter,
            builder: (constext, value, child) {
              return Text(value.toString());
            }),
        TextButton(
          onPressed: () {
            counter.value++;
          },
          child: const Text('+'),
        ),
      ],
    );
  }
}
