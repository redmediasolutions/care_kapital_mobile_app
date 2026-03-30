import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

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
              //=======================presonal info card=======================
             Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),

                child: Icon(
                  Icons.location_city_outlined,
                  color: Colors.black54,
                  size: 30,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Personal Information',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      spacing: 60,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'update your bank details',
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(color: Colors.grey.shade700),
                        ),
                       
                        Icon(Icons.arrow_forward_ios, color: Colors.grey.shade700, size: 20),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
            ],
          ),
          //========================bank details card=======================
          Divider(color: Colors.grey.withOpacity(0.5), thickness: 1),
          Row(
            children: [
               Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),

                child: Icon(
                  Icons.location_city_outlined,
                  color: Colors.black54,
                  size: 30,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bank Details',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      spacing: 60,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Manage your bank accounts',
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(color: Colors.grey.shade700),
                        ),
                       
                        Icon(Icons.arrow_forward_ios, color: Colors.grey.shade700, size: 20),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          //========================notification card=======================
           Divider(color: Colors.grey.withOpacity(0.5), thickness: 1),
          Row(
            children: [
               Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),

                child: Icon(
                  Icons.location_city_outlined,
                  color: Colors.black54,
                  size: 30,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Notifications',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      spacing: 60,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Manage preferences',
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(color: Colors.grey.shade700),
                        ),
                       
                        Icon(Icons.arrow_forward_ios, color: Colors.grey.shade700, size: 20),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          //========================security card=======================
          
           Divider(color: Colors.grey.withOpacity(0.5), thickness: 1),
          Row(
            children: [
               Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),

                child: Icon(
                  Icons.location_city_outlined,
                  color: Colors.black54,
                  size: 30,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'security & privacy',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      spacing: 60,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Password, 2FA, etc',
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(color: Colors.grey.shade700),
                        ),
                       
                        Icon(Icons.arrow_forward_ios, color: Colors.grey.shade700, size: 20),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          //========================help & support card=======================
           Divider(color: Colors.grey.withOpacity(0.5), thickness: 1),
          Row(
            children: [
               Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),

                child: Icon(
                  Icons.location_city_outlined,
                  color: Colors.black54,
                  size: 30,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Help & Support',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      spacing: 60,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'FAQ, Contact Us, Feedback',
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(color: Colors.grey.shade700),
                        ),
                       
                        Icon(Icons.arrow_forward_ios, color: Colors.grey.shade700, size: 20),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}
