import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../routes/app_routes.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.arkaplan,
      body: const Center(child: Text("kisinin profili")),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
        onTap: (index) {
          if (index == 3) return;

          if (index == 1) {
            Navigator.pushReplacementNamed(context, AppRoutes.seruven);
          } else if (index == 2) {
            Navigator.pushReplacementNamed(context, AppRoutes.pusulaAi);
          } else if (index == 0) {
            Navigator.pushReplacementNamed(context, AppRoutes.homepage);
          }
        },
        backgroundColor: const Color(0xFF0D0F14),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF7B8FF7),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded),
            label: "Anasayfa",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_rounded),
            label: "Serüven",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_awesome_rounded),
            label: "Pusula AI",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: "Profil",
          ),
        ],
      ),
    );
  }
}
