import 'package:equatable/equatable.dart';

import '../../constants/constants.dart';
import '../providers.dart';

part 'theme_state.dart';

class ThemeProvider {
  final WeatherProvider wp;
  ThemeProvider({
    required this.wp,
  });

  ThemeState get state {
    if (wp.state.weather.temp > kWarmOrNot) {
      return const ThemeState();
    } else {
      return const ThemeState(appTheme: AppTheme.dark);
    }
  }
}
