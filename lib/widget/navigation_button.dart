import 'package:flutter/material.dart';

class NavigateButton extends StatelessWidget {
  final Widget route;
  final Widget child;

  const NavigateButton({super.key, required this.route, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => route),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: child,
          ),
        ),
      ),
    );
  }
}
