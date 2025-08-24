import 'package:flutter/material.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'icon': Icons.local_grocery_store, 'label': 'Groceries'},
      {'icon': Icons.cleaning_services, 'label': 'Cleaning'},
      {'icon': Icons.bolt, 'label': 'Energy'},
      {'icon': Icons.local_offer, 'label': 'Deals'},
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        return Card(
          child: InkWell(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(category['icon'] as IconData, size: 40, color: Colors.red),
                const SizedBox(height: 8),
                Text(category['label'] as String),
              ],
            ),
          ),
        );
      },
    );
  }
}
