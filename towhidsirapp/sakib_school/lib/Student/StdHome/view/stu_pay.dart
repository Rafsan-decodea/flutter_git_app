import 'package:flutter/material.dart';

class StudentPay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Option'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose a Payment Method',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('Credit Card'),
              subtitle: Text('Pay with your credit card'),
              onTap: () {
                // Add your action here
              },
            ),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text('PayPal'),
              subtitle: Text('Pay with PayPal'),
              onTap: () {
                // Add your action here
              },
            ),
            ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('Google Pay'),
              subtitle: Text('Pay with Google Pay'),
              onTap: () {
                // Add your action here
              },
            ),
          ],
        ),
      ),
    );
  }
}
