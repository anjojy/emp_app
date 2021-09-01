import 'package:flutter/material.dart';

Container SearchBar(Size screenSize) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15),
    color: Colors.red,
    alignment: Alignment.center,
    height: screenSize.height * 0.1,
    child: TextField(
      textAlign: TextAlign.start,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: 'Search Products...',
        hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(16),
        fillColor: Colors.white,
      ),
    ),
  );
}
