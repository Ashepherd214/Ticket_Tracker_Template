import 'package:flutter/material.dart';
import 'package:ticket_tracker_template/dashboard.dart';
import 'package:ticket_tracker_template/new_customer.dart';
import 'package:ticket_tracker_template/new_repair.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket Tracker',
      routes: {
        '/': (_) => Dashboard(),
        '/newRepair': (_) => NewRepairForm(),
        '/newCustomer': (_) => NewCustomerForm(),
      },
    );
  }
}
