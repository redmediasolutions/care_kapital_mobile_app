import 'package:care_kapital_mobile_app/theme/apptheme.dart';
import 'package:flutter/material.dart';

class NextPayout extends StatelessWidget {
  const NextPayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Container(
                height: 160,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: successGreen.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                 
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Row(
                      children: [
                         Icon(Icons.check_circle, color: successGreen, size: 20),
                        const SizedBox(width: 8),
                        Text('Next Payout', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: successGreen)),
                        Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                          decoration: BoxDecoration(
                            color: successGreen,
                            borderRadius: BorderRadius.circular(20),
                          ),
                         child: Icon(Icons.euro_symbol,color: Colors.white,),
                        )

                      ],
                      
                    ),
                    Text('₹8,500 ', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: textDark, fontWeight: FontWeight.bold,fontSize: 30)),
                    Text('Due on April 15, 2026', style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.grey.withOpacity(0.7),fontSize: 18)),
                  ],
                ),
              )
            ],
          ),
        );
  }
}