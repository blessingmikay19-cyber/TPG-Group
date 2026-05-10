/**
 * Student Numbers: 224022456, 224111760, 223089499, 223082118, 223086046, 224107046, 220025661, 224090026
*/

import 'package:flutter/material.dart';
 
import 'views/login_screen.dart';
import 'views/home_screen.dart';
import 'views/application_form_screen.dart';
import 'views/application_detail_screen.dart';
import 'views/admin_dashboard_screen.dart';

class RouteManager {
  static const String login = '/login';
  static const String home = '/home';
  static const String applicationForm = '/applicationForm';
  static const String applicationDetail = '/applicationDetail';
  static const String adminDashboard = '/adminDashboard';
 
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
          settings: settings,
        );
 
      case home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
          settings: settings,
        );
 
      case applicationForm:
        return MaterialPageRoute(
          builder: (_) => const ApplicationFormScreen(),
          settings: settings,
        );
 
      case applicationDetail:
        return MaterialPageRoute(
          builder: (_) => const ApplicationDetailScreen(),
          settings: settings,
        );
 
      case adminDashboard:
        return MaterialPageRoute(
          builder: (_) => const AdminDashboardScreen(),
          settings: settings,
        );
 
      // If a route name is not found, go back to login.
      default:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
          settings: settings,
        );
    }
  }
}

