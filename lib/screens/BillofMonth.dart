import 'package:flutter/material.dart';

class MonthlyBillView extends StatefulWidget {
  const MonthlyBillView({super.key});

  @override
  State<MonthlyBillView> createState() => _MonthlyBillViewState();
}

class _MonthlyBillViewState extends State<MonthlyBillView> {
  // Payment status: true = Paid, false = Unpaid
  bool isPaid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monthly Bill View'),
        backgroundColor: Colors.blueAccent,
        // Back button in the app bar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              'Your Monthly Bill',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: BorderSide(
                  color: Colors.blueAccent.shade100,
                  width: 2,
                ),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Bill-Month',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const Divider(
                      color: Colors.blueAccent,
                      thickness: 1.5,
                    ),
                    const SizedBox(height: 10),
                    buildBillRow('Month:', 'November 2024'),
                    buildBillRow('Total Weight:', '150 kg'),
                    buildBillRow('Rate per kg:', '₹15.00'),
                    const SizedBox(height: 20),
                    // Circle for Total Amount
                    Center(
                      child: Container(
                        width: 140, // Increased width for the circle
                        height: 140, // Increased height for the circle
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isPaid
                              ? Colors.green.withOpacity(0.2)
                              : Colors.red.withOpacity(0.2),
                          border: Border.all(
                            color: isPaid ? Colors.green : Colors.red,
                            width: 3,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '₹2,250.00',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: isPaid ? Colors.green : Colors.red,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Total Amount',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Status Button at the bottom
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Status:',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              isPaid = !isPaid;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: isPaid ? Colors.green : Colors.red,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                          ),
                          child: Text(
                            isPaid ? 'Paid' : 'Unpaid',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBillRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
