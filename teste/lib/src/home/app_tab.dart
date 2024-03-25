import 'package:flutter/material.dart';
import 'package:teste/src/config/custom_colors.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        centerTitle: true,
        title: Text.rich(
          TextSpan(
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: "SHCore", // Corrija o uso de TextSpan
                style: TextStyle(
                  color: CustomColors.customSwatchColor,
                ),
              ),
              TextSpan(
                text: "Studio", // Corrija o uso de TextSpan
                style: TextStyle(
                  color: CustomColors.customContrastColors,
                ),
              ),
            ],
          ),
        ),       
      ),
      // Corpo da tela removido temporariamente
      body: Container(), // Use um Container vazio temporariamente
    );
  }
}
