import 'package:flutter/material.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     
      width: 400,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(color: Colors.grey.withOpacity(0.8), width: 1),
      ),
      child: Column(
        spacing: 5,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                
                child: Icon(
                  Icons.location_city_outlined,
                  color: Colors.black54,
                  size: 30,
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PAN Number',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.grey.shade700,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ABCDE1234F',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                         
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                     
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 12),
            ],
          ),
          Divider(
            color: Colors.grey.withOpacity(0.5),
            thickness: 1,
          ),
          Row(
            children: [
              Container(
                height: 100,       
                width: 50,
                child: Icon(
                  Icons.account_balance_outlined,
                  color: Colors.black54,        
                  size: 30,
                ),
              ),
              const SizedBox(width: 16),
              Column(   
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bank Account',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.grey.shade700,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'XXXXXX5678',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                         
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      
                    ],
                  ),  

        ],
        
      ),
            ]
          ),
          ]
          ),
    );
  }
}
