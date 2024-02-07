import 'package:flutter/material.dart';

class ClockScreen extends StatelessWidget {
  const ClockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClockScreen',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: _ClockContent(),
    );
  }
}

class _ClockContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(children: [SizedBox(height: 50), ClockCard()]),
        ),
      ),
    );
  }
}

class ClockCard extends StatelessWidget {
  const ClockCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black45, width: 2),
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '05:00',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    TextSpan(
                      text: 'minutes',
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ],
                ),
              ),
              Text('次のバスまで'),
            ],
          ),
        ],
      ),
    );
  }
}
