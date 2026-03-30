import 'package:care_kapital_mobile_app/theme/apptheme.dart';
import 'package:flutter/material.dart';

class KycVerification extends StatelessWidget {
  const KycVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children:[
         Stack(
        clipBehavior: Clip.none,
        children: [
          Container(height: 50, color: primaryBlue),
      
          Positioned(
            top: 10,
            left: 20,
            right: 20,
            child: Row(
              children: [
                //======================= INVESTED CARD =======================
                Container(
                  height: 140,
                  width: 400,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 210, 237, 211),
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                    border: Border.all(
                      color: Colors.green.withOpacity(0.8),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    spacing: 5,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.green, // Frosted look
                            child: Icon(Icons.shield, color: Colors.white, size: 30),
                          ),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'KYC Verification',
                                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                 
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Your account is fully verified',
                                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Icon(Icons.arrow_forward_ios, color: Colors.green, size: 20),
                                ],
                              ),
                        ],
                      ),
                      const SizedBox(height: 12),
                     
                    ],
                  ),
                    ]
                ),
                )
              
              ],
            
            ),
          ),
        ],
      ),

      ]
    );
  }
}
