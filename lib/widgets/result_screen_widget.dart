import 'package:flutter/material.dart';

class ResultScreenWidget extends StatelessWidget {
  const ResultScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic result = ModalRoute.of(context)!.settings.arguments;

    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Center(
            child: Text(
              'Your Result',
              style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              '$result%',
              style: const TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
