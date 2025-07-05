import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  void updateTheme(ThemeMode currentTheme) => emit(currentTheme);
 
  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    final theme = json['theme'] as String?;
    if (theme == 'light') {
      return ThemeMode.light;
    } else if (theme == 'dark') {
      return ThemeMode.dark;
    } else {
      return ThemeMode.system;
    }
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    return state == ThemeMode.light
        ? {'theme': 'light'}
        : state == ThemeMode.dark
            ? {'theme': 'dark'}
            : {'theme': 'system'};
  }
}
