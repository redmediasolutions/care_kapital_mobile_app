import 'package:care_kapital_mobile_app/theme/apptheme.dart';
import 'package:flutter/material.dart';

class Recentinvestment extends StatelessWidget {
  final String bankName;
  final String status;
  final Color statusColor;
  final String subtitle;
  final String subtitle1;
  final String amount;
  final String  percentageChange;
  const Recentinvestment({super.key, 
  required this.bankName,
   required this.status,
    required this.statusColor, 
    required this.subtitle, 
    required this.amount, 
    required this.percentageChange, 
    required this.subtitle1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: double.infinity,
        height: 160,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(bankName, style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.black, fontWeight: FontWeight.bold )),
                Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: statusColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(status, style: Theme.of(context).textTheme.labelLarge?.copyWith(color: statusColor, fontWeight: FontWeight.bold)),
                )
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(subtitle, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[600],fontSize: 18),),
                Text(subtitle1, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[600],fontSize: 18),),

              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Text(amount, style: Theme.of(context).textTheme.titleMedium?.copyWith(color:  Colors.black, fontWeight: FontWeight.bold, fontSize: 22),),
                Spacer(),
                const SizedBox(width: 4),
                Text(percentageChange, style: Theme.of(context).textTheme.titleLarge?.copyWith(color: primaryBlue, fontWeight: FontWeight.bold)),
              ]
            )
          ]
        )
      
      ),
    );
  }
}