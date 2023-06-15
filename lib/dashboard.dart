import 'package:flutter/material.dart';
import 'package:ticket_tracker_template/nav_drawer.dart';
import 'package:ticket_tracker_template/new_customer.dart';
import 'package:ticket_tracker_template/new_repair.dart';
import 'package:ticket_tracker_template/customer_list.dart';
import 'package:ticket_tracker_template/ticket_list.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket Tracker',
      // routes: {
      //   '/': (context) => MyApp(),
      // },
      home: Scaffold(
        //Add Navbar or Appbar here?
        drawer: NavDrawer(),
        appBar: AppBar(
          title: const Text('Dashboard'),
        ),
        body: GridView.count(
          //ListView(
          primary: false,
          padding: const EdgeInsets.all(15.0),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Builder(
              builder: (context) => Column(children: <Widget>[
                ElevatedButton(
                  child: Card(
                    elevation: 6,
                    color: Colors.blue,
                    child: Column(children: <Widget>[
                      SizedBox(
                        height: 180.0,
                        child: Stack(
                          children: <Widget>[
                            // Positioned.fill(
                            //   child: Image.asset(
                            //     'res/images/material_design_4.jpg',
                            //     fit: BoxFit.cover,
                            //   ),
                            // ),
                            Positioned(
                                bottom: 16.0,
                                left: 16.0,
                                right: 16.0,
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Customer List',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(color: Colors.white),
                                  ),
                                ))
                          ],
                        ),
                      )
                    ]),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CustomerList()),
                    );
                  },
                ),
                ElevatedButton(
                  child: Card(
                    elevation: 6,
                    color: Colors.blue,
                    child: Column(children: <Widget>[
                      SizedBox(
                        height: 180.0,
                        child: Stack(
                          children: <Widget>[
                            // Positioned.fill(
                            //   child: Image.asset(
                            //     'res/images/material_design_4.jpg',
                            //     fit: BoxFit.cover,
                            //   ),
                            // ),
                            Positioned(
                                bottom: 16.0,
                                left: 16.0,
                                right: 16.0,
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Create New Customer',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(color: Colors.white),
                                  ),
                                ))
                          ],
                        ),
                      )
                    ]),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewCustomerForm()),
                    );
                  },
                ),
              ]),
            ),
            Builder(
              builder: (context) => Column(children: <Widget>[
                ElevatedButton(
                  child: Card(
                    elevation: 6,
                    color: Colors.blue,
                    child: Column(children: <Widget>[
                      SizedBox(
                        height: 180.0,
                        child: Stack(
                          children: <Widget>[
                            // Positioned.fill(
                            //   child: Image.asset(
                            //     'res/images/material_design_3.jpg',
                            //     fit: BoxFit.cover,
                            //   ),
                            // ),
                            Positioned(
                                bottom: 16.0,
                                left: 16.0,
                                right: 16.0,
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Ticket List',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(color: Colors.white),
                                  ),
                                ))
                          ],
                        ),
                      )
                    ]),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TicketList()),
                    );
                  },
                ),
                ElevatedButton(
                  child: Card(
                    elevation: 6,
                    color: Colors.blue,
                    child: Column(children: <Widget>[
                      SizedBox(
                        height: 180.0,
                        child: Stack(
                          children: <Widget>[
                            // Positioned.fill(
                            //   child: Image.asset(
                            //     'res/images/material_design_3.jpg',
                            //     fit: BoxFit.cover,
                            //   ),
                            // ),
                            Positioned(
                                bottom: 16.0,
                                left: 16.0,
                                right: 16.0,
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Create New Repair Ticket',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(color: Colors.white),
                                  ),
                                ))
                          ],
                        ),
                      )
                    ]),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NewRepairForm()),
                    );
                  },
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
