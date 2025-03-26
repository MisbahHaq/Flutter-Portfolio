import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final bool isDarkMode;
  final VoidCallback toggleTheme;
  final Function(String) onNavItemTap;

  const NavBar({
    super.key,
    required this.isDarkMode,
    required this.toggleTheme,
    required this.onNavItemTap,
  });

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 700;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:
              isDarkMode
                  ? [Colors.black87, Colors.black54]
                  : [const Color(0xFFD6F5C9), const Color(0xFFC9E7F5)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo or Name
          Text(
            "M - H",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: isDarkMode ? Colors.white : Colors.black,
            ),
          ),

          // Navigation (Shows differently on Mobile & Desktop)
          if (!isMobile)
            Row(
              children: [
                _navItem("Home", isDarkMode),
                _navItem("Work", isDarkMode),
                _navItem("Dev Notes", isDarkMode),
              ],
            )
          else
            PopupMenuButton<String>(
              onSelected: onNavItemTap,
              icon: Icon(
                Icons.menu,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
              itemBuilder:
                  (context) => [
                    _menuItem("Home"),
                    _menuItem("Work"),
                    _menuItem("Dev Notes"),
                  ],
            ),

          // Theme Toggle Button
          IconButton(
            onPressed: toggleTheme,
            icon: Icon(
              isDarkMode ? Icons.dark_mode : Icons.light_mode,
              color: isDarkMode ? Colors.white : Colors.black87,
            ),
            splashRadius: 20,
            tooltip: "Toggle Theme",
          ),
        ],
      ),
    );
  }

  Widget _navItem(String title, bool isDarkMode) {
    return GestureDetector(
      onTap: () => onNavItemTap(title),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: isDarkMode ? Colors.white70 : Colors.black87,
          ),
        ),
      ),
    );
  }

  PopupMenuItem<String> _menuItem(String title) {
    return PopupMenuItem<String>(value: title, child: Text(title));
  }
}
