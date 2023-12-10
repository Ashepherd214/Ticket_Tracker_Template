import 'package:flutter/material.dart';
import 'package:ticket_tracker_template/nav_drawer.dart';

class NewRepairForm extends StatefulWidget {
  //const NewRepairForm({super.key});

  @override
  State<NewRepairForm> createState() => _NewRepairFormState();
}

class _NewRepairFormState extends State<NewRepairForm> {
  final _formKey = GlobalKey<FormState>();
  //final _biggerFont = const TextStyle(fontSize: 18);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: const Text('New Repair Form'),
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
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
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
