// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class PayoutCard extends StatelessWidget {
  final String title;
  final String date;
  final String amount;
  final String status;
  final bool ispaid;

  const PayoutCard({
    super.key,
    required this.title,
    required this.date,
    required this.amount,
    required this.status,
    this.ispaid = false,
  });

  @override
  Widget build(BuildContext context) {
    final Color statusBg = ispaid ? const Color(0xFFE8F7EE) : const Color(0xFFFFF4DA);
    final Color statusFg = ispaid ? const Color(0xFF16A34A) : const Color(0xFFF59E0B);
    final IconData statusIcon = ispaid ? Icons.check_circle : Icons.schedule;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFE2E6EC)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: const Color(0xFF111827),
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: statusBg,
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(statusIcon, size: 16, color: statusFg),
                    const SizedBox(width: 6),
                    Text(
                      status,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: statusFg,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.event, size: 18, color: Color(0xFF6B7280)),
              const SizedBox(width: 8),
              Text(
                date,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: const Color(0xFF64748B),
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          const Divider(height: 1, color: Color(0xFFE6E9EF)),
          const SizedBox(height: 12),
          Text(
            'Payout Amount',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: const Color(0xFF6B7280),
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Expanded(
                child: Text(
                  amount,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: const Color(0xFF111827),
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
              if (ispaid)
                Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: const Color(0xFF16A34A), width: 2),
                  ),
                  child: const Icon(Icons.check, color: Color(0xFF16A34A), size: 18),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
