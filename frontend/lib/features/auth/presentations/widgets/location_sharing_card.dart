import 'package:flutter/material.dart';
import 'package:frontend/core/constants/app_strings.dart';
import 'package:frontend/core/theme/app_colors.dart';
import 'package:frontend/core/theme/app_text_styles.dart';

class LocationSharingCard extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const LocationSharingCard({
    super.key,
    required this.value,
    required this.onChanged,
  });
    @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.location_on, color: AppColors.cyan, size: 28),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                AppStrings.enableLocation,
                style: AppTextStyles.cardTitle,
              ),
            ),
            Switch(
              value: value,
              onChanged: onChanged,
              activeColor: AppColors.cyan,
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          AppStrings.locationDescription,
          style: AppTextStyles.body,
        ),
      ],
    );
  }
}