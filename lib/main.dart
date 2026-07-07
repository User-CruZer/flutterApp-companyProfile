import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'screens/company_profile/company_profile_screen.dart';

void main() {
  runApp(const JasajokiCompanyProfileApp());
}

class JasajokiCompanyProfileApp extends StatelessWidget {
  const JasajokiCompanyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JasaJoki - Company Profile',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const CompanyProfileScreen(),
    );
  }
}
