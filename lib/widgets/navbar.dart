import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.compare), label: "Compare"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        BottomNavigationBarItem(
          icon: Icon(Icons.room_service),
          label: "Services",
        ),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushReplacementNamed(context, '/');
            break;
          case 1:
            Navigator.pushReplacementNamed(context, '/comparison');
            break;
          case 2:
            Navigator.pushReplacementNamed(context, '/cart');
            break;
          case 3:
            Navigator.pushReplacementNamed(context, '/account');
            break;
          case 4:
            Navigator.pushReplacementNamed(context, '/services');
            break;
        }
      },
    );
  }
}
