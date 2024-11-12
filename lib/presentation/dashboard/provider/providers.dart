import 'package:flutter_riverpod/flutter_riverpod.dart';

final foodTypeButtonProvider = StateProvider<int>((ref) => 0);
final bottomBarIndexProvider = StateProvider<int>((ref) => 0);
final dropDownValueProvider = StateProvider<String>((ref) => 'Wedding');
