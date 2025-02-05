import 'package:flutter/material.dart';
import 'api_service.dart';

void main() {
  runApp(BankApp());
}

class BankApp extends StatelessWidget {
  const BankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bank Management',
      home: BankHomePage(),
    );
  }
}

class BankHomePage extends StatefulWidget {
  const BankHomePage({super.key});

  @override
  _BankHomePageState createState() => _BankHomePageState();
}

class _BankHomePageState extends State<BankHomePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _balanceController = TextEditingController();

  Future<void> handleCreateAccount() async {
    String name = _nameController.text;
    double balance = double.tryParse(_balanceController.text) ?? 0.0;
    await ApiService.createAccount(name, balance);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bank Management')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Account Holder Name'),
            ),
            TextField(
              controller: _balanceController,
              decoration: InputDecoration(labelText: 'Initial Balance'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: handleCreateAccount,
              child: Text('Create Account'),
            ),
          ],
        ),
      ),
    );
  }
}
