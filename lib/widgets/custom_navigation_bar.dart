import 'package:flutter/material.dart';
import 'package:mobile_app/common/routers.dart';

class CustomNavigationBar extends StatelessWidget {
  final int selectedIndex;

  const CustomNavigationBar({
    Key? key,
    this.selectedIndex = 0
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.search),
          label: 'Search'
        ),
        NavigationDestination(
          icon: Icon(Icons.account_circle),
          label: 'Profile'
        ),
        NavigationDestination(
          icon: Icon(Icons.history_edu),
          label: 'Documents'
        )
      ],
      selectedIndex: selectedIndex,
      onDestinationSelected: (int index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, ROUTE_SEARCH);
            break;
          case 1:
            Navigator.pushNamed(context, ROUTE_SIGN_UP);
            break;
          case 2:
            Navigator.pushNamed(context, ROUTE_LOGIN);
            break;
        }
      },
    );
  }
}
