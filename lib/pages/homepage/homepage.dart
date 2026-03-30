import 'package:care_kapital_mobile_app/components/recentinvestment.dart';
import 'package:care_kapital_mobile_app/pages/homepage/invertments_card.dart';
import 'package:care_kapital_mobile_app/pages/homepage/next_payout.dart';
import 'package:care_kapital_mobile_app/pages/homepage/quickactions.dart';
import 'package:care_kapital_mobile_app/theme/apptheme.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
                  Text(
                    'Welcome back,',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white70,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 4), // Tiny gap
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rahul Sharma',
                        style: Theme.of(context).textTheme.headlineMedium
                            ?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      // The "RS" Avatar from your design
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.white.withOpacity(
                          0.2,
                        ), // Frosted look
                        child: const Text(
                          'RS',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Space before the card
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //=========== Portfolio Value Card ============
                      SizedBox(
                        height: 200,
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
                                    Text(
                                      ' Total Portfolio Value',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            color: Colors.white70,
                                            letterSpacing: 0.5,
                                          ),
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.trending_up,
                                          color: Colors.greenAccent,
                                          size: 16,
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          '+8.5%',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge
                                              ?.copyWith(
                                                color: Colors.greenAccent,
                                                fontSize: 18,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                //=========== Portfolio Value Amount ============
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    const Icon(
                                      Icons.account_balance_wallet,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      '₹13,45,000',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge
                                          ?.copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
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
            InvertmentsCard(),

            SizedBox(height: 150),
            NextPayout(),
            SizedBox(height: 50),
            Quickactions(),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Text(
                    'Recent Investments',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: textDark,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'View All',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: primaryBlue,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),

            Recentinvestment(
              bankName: 'Hdfc Bank',
              status: 'Active',
              statusColor: Colors.green,
              subtitle: 'Amount Invested',
              subtitle1: 'Invest Rate ',
              amount: '₹5.0L',
              percentageChange: '+10.2%',
            ),
            SizedBox(height: 150),
          ],
        ),
      ),
    );
  }
}
