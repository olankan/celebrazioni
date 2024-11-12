import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:celebrazioni/presentation/Drawer/presentation/model/sideBarModel.dart';

final drawerIconProvider = Provider<List>((ref) => [
      'list',
      'list',
      'refresh',
      'clipboard-check',
      'edit',
      'setting',
      'question-mark-circle',
      'logout'
    ]);
final drawerItemTextProvider = Provider<List>((ref) => [
      'Dashboard',
      'Payroll',
      'Transaction',
      'Invoice',
      'Reporting',
      'Settings',
      'FAQs',
      'Log out',
    ]);
final drawerItemIndexProvider = StateProvider<int>((ref) => 3);
final sideBarItemsProvider = Provider<List<SideBarModel>>((ref) => [
      SideBarModel(icon: 'Profile', text: 'Profile'),
      SideBarModel(icon: 'Notification', text: 'Notification'),
      SideBarModel(icon: 'TicketStar', text: 'My Impact'),
      SideBarModel(icon: 'Star', text: 'My Badges'),
      SideBarModel(icon: 'Paper', text: 'My Listings'),
    ]);
