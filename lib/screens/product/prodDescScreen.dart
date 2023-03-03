import 'package:flutter/material.dart';

class ProdDescScreen extends StatefulWidget {
  const ProdDescScreen({super.key});

  @override
  State<ProdDescScreen> createState() => _ProdDescScreenState();
}

class _ProdDescScreenState extends State<ProdDescScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Text("Product page"),
    );
  }
}
