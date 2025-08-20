import 'package:flutter/material.dart';
import 'package:login_practica/util/payment_buy.dart';

class PaymentPage extends StatefulWidget {
  static const String id = 'payment_page';
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String selectedPayment = ""; // aquí guardamos la opción seleccionada

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Payment method'), centerTitle: true),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ), // separación del borde
          child: Column(
            mainAxisSize: MainAxisSize.min, // 👈 solo ocupa lo que necesita
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Visa",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Italian',
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "5055 2389 4563 1234",
                            style: TextStyle(
                              fontSize: 16,
                              letterSpacing: 5,
                              color: const Color.fromARGB(230, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 28,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "LAUTARO GEREZ",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[300],
                              fontFamily: 'ModernSans',
                            ),
                          ),
                          Text(
                            "12/30",
                            style: TextStyle(
                              fontSize: 16,
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50), // separación entre tarjetas
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Add new card",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  PaymentOption(
                    icon: Image.asset(
                      'assets/mastercard.png',
                      width: 45,
                      height: 45,
                    ),
                    name: "Mastercard",
                    groupValue: selectedPayment,
                    onChanged: (value) {
                      setState(() {
                        selectedPayment = value!;
                      });
                    },
                  ),

                  SizedBox(height: 15),
                  PaymentOption(
                    icon: Image.asset(
                      'assets/paypal.png',
                      width: 33,
                      height: 33,
                    ),
                    name: "Paypal",
                    groupValue: selectedPayment,
                    onChanged: (value) {
                      setState(() {
                        selectedPayment = value!;
                      });
                    },
                  ),
                  SizedBox(height: 15),
                  PaymentOption(
                    icon: Image.asset(
                      'assets/apple.png',
                      width: 37,
                      height: 37,
                    ),
                    name: "Apple Pay",
                    groupValue: selectedPayment,
                    onChanged: (value) {
                      setState(() {
                        selectedPayment = value!;
                      });
                    },
                  ),
                  SizedBox(height: 15),
                  PaymentOption(
                    icon: Image.asset(
                      'assets/google.png',
                      width: 32,
                      height: 32,
                    ),
                    name: "Google Pay",
                    groupValue: selectedPayment,
                    onChanged: (value) {
                      setState(() {
                        selectedPayment = value!;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 30), // separación antes del botón
              Center(
                child: SizedBox(
                  width: 350,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      // Aquí puedes manejar la acción del botón
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Selected payment method: $selectedPayment',
                          ),
                        ),
                      );
                    },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 58, 91, 209),
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 14,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Add',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
