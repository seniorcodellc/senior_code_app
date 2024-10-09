import 'package:flutter/material.dart'; // Ensure you have this import
import 'package:senior_code_app/core/extensions.dart';
import '../../../../exports.dart';
import '../widgets/trems_and_conditions_screen_body_section.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const TremsAndConditionsScreenBodySection(),
          ),
        ),
      ),
    );
  }
}
