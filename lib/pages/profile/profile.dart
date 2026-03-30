import 'package:care_kapital_mobile_app/pages/profile/account_details.dart';
import 'package:care_kapital_mobile_app/pages/profile/kyc_verification.dart';
import 'package:care_kapital_mobile_app/pages/profile/settings.dart';
import 'package:care_kapital_mobile_app/theme/apptheme.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundLight,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(450),
        //============== Custom AppBar with Portfolio Card ==============
        child: AppBar(
          backgroundColor: primaryBlue,
          surfaceTintColor: Colors.transparent,
          elevation: 0,

          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 4), // Tiny gap
                  Text(
                    'Profile',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // The "RS" Avatar from your design
                  SizedBox(height: 20), //
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //=========== Portfolio Value Card ============
                      SizedBox(
                        height: 300,
                        child: Card(
                          color: Colors.white.withOpacity(0.2), // Frosted card
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              spacing: 20,
                              mainAxisSize: MainAxisSize.max,

                              children: [
                                //=========== Portfolio Value Header ============
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 35,
                                      backgroundColor:
                                          Colors.white, // Frosted look
                                      child: Text(
                                        'RS',
                                        style: TextStyle(
                                          color: primaryBlue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20), //
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          ' Rahul Sharma',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge
                                              ?.copyWith(
                                                color: Colors.white,
                                                letterSpacing: 0.5,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25,
                                              ),
                                        ),
                                        Text(
                                          ' Premium investor',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium
                                              ?.copyWith(
                                                color: Colors.white70,
                                                letterSpacing: 0.5,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 25,
                                          backgroundColor: const Color.fromARGB(
                                            202,
                                            174,
                                            208,
                                            245,
                                          ), // Frosted look
                                          child: Icon(
                                            Icons.edit,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ),
                                        SizedBox(width: 4),
                                      ],
                                    ),
                                  ],
                                ),
                                //=============== Portfolio Value Content ===============
                                Divider(
                                  color: Colors.white.withOpacity(0.5),
                                  thickness: 1,
                                ),
                                Row(
                                  spacing: 10,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    const Icon(
                                      Icons.email,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      'rahul.sharma@example.com',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                    ),
                                  ],
                                ),
                                Row(
                                  spacing: 10,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    const Icon(
                                      Icons.phone,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      '+1 (555) 123-4567',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                    ),
                                  ],
                                ),
                                Row(
                                  spacing: 10,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    const Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      'India',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            KycVerification(),
            SizedBox(height: 150),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Account Details',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.grey.shade800,
                  ),
                ),
                SizedBox(height: 20),

                AccountDetails(),
              ],
            ),
             SizedBox(height: 50),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Settings',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.grey.shade800,
                  ),
                ),
                SizedBox(height: 20),

                Settings(),
                SizedBox(height: 50),
              ],
            ),
           Padding(
             padding: const EdgeInsets.all(15),
             child: Column(
               children: [
                 SizedBox(
                  width: double.infinity,
                   child: ElevatedButton(
                     onPressed: () {
                       // Add logout logic here
                     },
                     style: ElevatedButton.styleFrom(
                       backgroundColor: const Color(0xFFFFD8D8), // Soft pink/red background
                       foregroundColor: const Color(0xFFE53935), // Darker red for text and icon
                       elevation: 0, // Design usually has 0 elevation for these flat styles
                       minimumSize: const Size(double.infinity, 56), // Full width and comfortable height
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(16), // Rounded corners
                       ),
                     ),
                     child: const Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(Icons.logout_rounded, size: 20),
                         SizedBox(width: 8),
                         Text(
                           'Logout',
                           style: TextStyle(
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),
                 SizedBox(height: 20),
                 SizedBox(
                  width: double.infinity,
                   child: ElevatedButton(
                     onPressed: () {
                       
                     },
                     style: ElevatedButton.styleFrom(
                       backgroundColor: const Color.fromARGB(255, 158, 215, 251), 
                       foregroundColor:  Colors.blue, 
                       elevation: 0, 
                       minimumSize: const Size(double.infinity, 56), 
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(16), 
                       ),
                     ),
                     child: const Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(Icons.logout_rounded, size: 20),
                         SizedBox(width: 8),
                         Text(
                           'Delete Account',
                           style: TextStyle(
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),
               ],
             ),
           ),
SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
