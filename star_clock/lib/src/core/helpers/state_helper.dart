import 'package:digital_clock/star_clock.dart';
import 'package:flutter_clock_helper/model.dart';

bool isDark(ClockTheme theme, DateTime dateTime, WeatherCondition weather) {
  if (theme == ClockTheme.night) {
    return true;
  }

  // Weather exceptions
  if (weather == WeatherCondition.thunderstorm ||
      weather == WeatherCondition.rainy ||
      weather == WeatherCondition.windy ||
      weather == WeatherCondition.cloudy) {
    return true;
  }

  // Default color for day/night
  if (dateTime.hour < 11 || dateTime.hour >= 19) {
    return true;
  } else {
    return false;
  }
}
