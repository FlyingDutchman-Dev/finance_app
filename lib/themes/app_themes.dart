import 'package:flutter/material.dart';
import 'app_colors.dart'; // Importe as cores globais

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor, // Usando a cor primária definida em AppColors
    accentColor: AppColors.secondaryColor, // Usando a cor secundária definida em AppColors
    // Outras definições de tema, como fontes, estilos de texto, etc.
  );

  static ThemeData darkTheme = ThemeData(
    // Definições de tema para o modo escuro
  );
}
