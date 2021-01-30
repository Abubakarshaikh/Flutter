// import 'package:clima/services/location.dart';
// import 'networking.dart';

// // create apiKey variable for save key
// const apiKey = '3b6e092d4f187c048a959981a45fb2a7';

// // create openWeatherMapURL variable for save url
// const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

// class WeatherModel {
//   // create getCityWeather function for input cityname and get city weather
//   Future<dynamic> getCityWeather(String cityName) async {
//     // use NetworkHelper constructor for getting URL
//     // create NetworkHelper object for access getData function.
//     NetworkHelper networkHelper = NetworkHelper(
//         '$openWeatherMapURL?q=$cityName&appid=$apiKey&units=metric');

//     // create weatherdata variable for getting https request response from openWeatherMap
//     var weatherData = await networkHelper.getData();
//     return weatherData;
//   }

//   // we are now using Geolocatr Api for getting getCurrentPosition weather .. aahahaha
//   // create getLocationWeather function for getting current location weather.
//   Future<dynamic> getLocationWeather() async {
//     // create Location object for access getCurrentLocation function
//     Location location = Location();
//     location.getCurrentLocation();

//     // use NetworkHelper constructor for getting URL
//     // create NetworkHelper object for access getData function.
//     NetworkHelper networkHelper = NetworkHelper(
//         '$openWeatherMapURL?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');
//     var weatherData = networkHelper.getData();
//     return weatherData;
//   }

//   String getWeatherIcon(int condition) {
//     if (condition < 300) {
//       return '🌩';
//     } else if (condition < 400) {
//       return '🌧';
//     } else if (condition < 600) {
//       return '☔️';
//     } else if (condition < 700) {
//       return '☃️';
//     } else if (condition < 800) {
//       return '🌫';
//     } else if (condition == 800) {
//       return '☀️';
//     } else if (condition <= 804) {
//       return '☁️';
//     } else {
//       return '🤷‍';
//     }
//   }

//   String getMessage(int temp) {
//     if (temp > 25) {
//       return 'It\'s 🍦 time';
//     } else if (temp > 20) {
//       return 'Time for shorts and 👕';
//     } else if (temp < 10) {
//       return 'You\'ll need 🧣 and 🧤';
//     } else {
//       return 'Bring a 🧥 just in case';
//     }
//   }
// }

import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

const apiKey = '3b6e092d4f187c048a959981a45fb2a7';
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherMapURL?q=$cityName&appid=$apiKey&units=metric');

    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherMapURL?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');

    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}