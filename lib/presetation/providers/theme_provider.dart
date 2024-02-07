import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Lista de cores imutaveis
final colorListProvider = Provider((ref) => colosList);

final isDarkModeProvider = StateProvider<bool>((ref) => false);

final selectedIndexColorProvider = StateProvider<int>((ref) => 0);
