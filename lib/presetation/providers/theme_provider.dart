import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Lista de cores imutaveis
final colorListProvider = Provider((ref) => colosList);

// retorna se é dark ou não
final isDarkModeProvider = StateProvider<bool>((ref) => false);

// retorna a sor selecionada do tema
final selectedIndexColorProvider = StateProvider<int>((ref) => 0);

//Um obj de tipo de dados personalizado
final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

// Controller Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  //STATE new AppTheme
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int index) {
    state = state.copyWith(selectedColor: index);
  }
}
