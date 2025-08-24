import 'package:flutter/material.dart';
import '../../widgets/hero_slider.dart';
import '../../core/app_theme.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatelessWidget {
  final VoidCallback toggleTheme;
  const HomePage({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {"label": "Groceries", "icon": Iconsax.shopping_bag},
      {"label": "Cleaning", "icon": Iconsax.brush_1},
      {"label": "Energy", "icon": Iconsax.flash},
      {"label": "Deals", "icon": Iconsax.discount_shape},
      {"label": "Transport", "icon": Iconsax.bus},
      {"label": "Services", "icon": Iconsax.setting_3},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Streetwise Nairobi",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          // Top nav buttons
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/'),
            child: const Text("Home", style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/comparison'),
            child: const Text("Compare", style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/cart'),
            child: const Text("Cart", style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/services'),
            child: const Text(
              "Services",
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/account'),
            child: const Text("Account", style: TextStyle(color: Colors.white)),
          ),

          // 🌙/☀️ Theme toggle button
          IconButton(
            icon: Icon(
              Theme.of(context).brightness == Brightness.dark
                  ? Icons.light_mode
                  : Icons.dark_mode,
              color: Colors.white,
            ),
            onPressed: toggleTheme,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeroSlider(),

            // Section Title
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Browse Categories",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            // Grid Categories
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: MediaQuery.of(context).size.width > 800
                      ? 6
                      : 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return InkWell(
                    onTap: () {},
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            category["icon"] as IconData,
                            size: 40,
                            color: AppTheme.pureRed,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            category["label"] as String,
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
