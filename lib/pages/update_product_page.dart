// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class UpdateProductPage extends StatefulWidget {
  const UpdateProductPage({super.key});
  static String id='UpdateProductPage';
  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? price;
  String? image;
  String? desc;
  String? cate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, 
        title:const Text('Update Product', style: TextStyle(color:Colors.black),),
        centerTitle: true, 
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomTextField(val:price, hintText: 'price',),
            ],
          ),
        ),
      )
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, this.val, required this.hintText,
  });
  final String? val;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value){
        
      },
      decoration:InputDecoration(
        hintText: hintText,
         
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8), 
        ), 
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8), 
        ),                 
      )
    );
  }
}