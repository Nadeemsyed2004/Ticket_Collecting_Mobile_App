import 'package:flutter/material.dart';

class Ticket extends StatefulWidget {
  @override
  State<Ticket> createState() => _TicketState();
}

class _TicketState extends State<Ticket> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
