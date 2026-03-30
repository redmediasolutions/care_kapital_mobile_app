import 'package:care_kapital_mobile_app/theme/apptheme.dart';
import 'package:flutter/material.dart';

class Quickactions extends StatelessWidget {
  const Quickactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 📈 Investments
          Expanded(
            child: _buildActionItem(
              context,
              icon: Icons.trending_up,
              label: 'Invest', // Shortened to prevent text wrap
              color: primaryBlue,
            ),
          ),
          const SizedBox(width: 12),

          // 💰 Payouts
          Expanded(
            child: _buildActionItem(
              context,
              icon: Icons.currency_rupee, // Updated to Rupee to match design
              label: 'Payouts',
              color: successGreen,
            ),
          ),
          const SizedBox(width: 12),

          // 📄 Certificates
          Expanded(
            child: _buildActionItem(
              context,
              icon: Icons.description_outlined,
              label: 'Docs',
              color: containerpurple,
            ),
          ),
          const SizedBox(width: 12),

          // 💬 Support
          Expanded(
            child: _buildActionItem(
              context,
              icon: Icons.chat_bubble_outline,
              label: 'Support',
              color: containerorange, // Updated to your new Orange color
            ),
          ),
        ],
      ),
    );
  }

  // I've inlined the logic here as a private helper to keep the build method readable
  Widget _buildActionItem(BuildContext context,
      {required IconData icon, required String label, required Color color}) {
    return Column(
      children: [
        Container(
         
          child: AspectRatio(
            aspectRatio: 1, 
            child: Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 12,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Icon(icon, color: Colors.white, size: 40),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: textDark,
                fontWeight: FontWeight.w600,
                fontSize: 18, // Reduced size to fit 4 items comfortably
              ),
        ),
      ],
    );
  }
}