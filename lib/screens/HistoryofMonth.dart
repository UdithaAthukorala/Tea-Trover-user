import 'package:flutter/material.dart';

class Historyofmonth extends StatelessWidget {
  // Sample data for demonstration
  final Map<String, List<String>> monthlyHistory = {
    'January 2024': ['Data A', 'Data B', 'Data C'],
    'February 2024': ['Data D', 'Data E'],
    'March 2024': ['Data F', 'Data G', 'Data H'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History - Month'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: monthlyHistory.keys.length,
        itemBuilder: (context, index) {
          String month = monthlyHistory.keys.elementAt(index);
          List<String> details = monthlyHistory[month]!;
          return ExpansionTile(
            title: Text(
              month,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            children: details
                .map((data) => ListTile(
              title: Text(data),
              leading: const Icon(Icons.history),
            ))
                .toList(),
          );
        },
      ),
    );
  }
}
