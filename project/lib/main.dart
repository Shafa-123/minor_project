import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import './drawer.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Razorpay _razorpay;
  //_razorpay = RazorPay();

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();

    // _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    // _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    // _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void openCheckout() async {
    var options = {
      'key': 'rzp_test_pszzKCnzZwGi6P',
      'amount': 20000,
      'name': 'Linky',
      'description': 'Payment',
      'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thought-Reader"),
        centerTitle: true,
        backgroundColor: Colors.purple[400],
        elevation: 0.0,
      ),
      drawer: Menu(),
      body: Column(children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.all(5.0),
            child: Center(
              child: Image(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1476275466078-4007374efbbe?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fGJvb2t8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Text(
              'Great minds meets here!',
              style: TextStyle(
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Colors.grey[500],
              ),
            ),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              openCheckout();
            },
            child: Text('Payment Page')),
      ]),
    );
  }
}
