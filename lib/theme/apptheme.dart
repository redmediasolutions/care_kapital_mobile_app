// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// --- COLOR PALETTE ---

final Color primaryBlue = const Color(0xFF0D63D1); 
final Color successGreen = const Color(0xFF00B167); 
final Color backgroundLight = const Color(0xFFF4F7FA); 
final Color surfaceWhite = Colors.white;
final Color textDark = const Color(0xFF1A1C1E);
final Color textGrey = const Color(0xFF6C757D);

final ThemeData appTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: backgroundLight,

  colorScheme: ColorScheme.fromSeed(
    seedColor: primaryBlue,
    primary: primaryBlue,
    onPrimary: Colors.white,
    secondary: successGreen,
    onSecondary: Colors.white,
    surface: surfaceWhite,
    onSurface: textDark,
    background: backgroundLight,
  ),

  // ✨ TYPOGRAPHY SYSTEM
 
  textTheme: TextTheme(
    // Portfolio Value Large Number
    displayMedium: TextStyle(
      fontFamily: 'Inter', // Or your chosen font
      color: Colors.white,
      fontSize: 32,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.5,
    ),
    // Section Headers (e.g., "Quick Actions")
    headlineSmall: TextStyle(
      fontFamily: 'Inter',
      color: textDark,
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ),
    // Card Titles (e.g., "Invested", "Returns")
    titleMedium: TextStyle(
      fontFamily: 'Inter',
      color: textGrey,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    // Card Amounts
    titleLarge: TextStyle(
      fontFamily: 'Inter',
      color: textDark,
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
    // Small Labels / Dates
    bodySmall: TextStyle(
      fontFamily: 'Inter',
      color: textGrey,
      fontSize: 12,
    ),
  ),

  // 🧊 CARD THEME
  // The design uses very rounded corners (approx 24px)
  cardTheme: CardThemeData(
    color: surfaceWhite,
    elevation: 0,
    margin: const EdgeInsets.all(0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
  ),

  // 🧭 BOTTOM NAVIGATION BAR
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: surfaceWhite,
    selectedItemColor: primaryBlue,
    unselectedItemColor: textGrey,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    selectedLabelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
    unselectedLabelStyle: const TextStyle(fontSize: 12),
  ),

  // 🔘 ICON THEME (For the Quick Actions)
  iconTheme: const IconThemeData(
    size: 24,
  ),
);