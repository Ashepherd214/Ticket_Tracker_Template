import 'package:flutter/material.dart';
import '../main.dart';
import '../nav_drawer.dart';

class TicketList extends StatefulWidget {
  //const TicketList({super.key});

  @override
  State<TicketList> createState() => _TicketListState();
}

class _TicketListState extends State<TicketList> {
  final _formKey = GlobalKey<FormState>();
  //final _biggerFont = const TextStyle(fontSize: 18);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: const Text('All Tickets'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Customer Name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email Address',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Primary Address',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid address';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                  Navigator.pop(
                    context,
                  );
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
