import 'package:flutter/material.dart';
import 'package:weather/views/search_view.dart';
import 'package:weather/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          GestureDetector(
              onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SearchView(),
                    ),
                  ),
              child: const Icon(Icons.search))
        ],
      ),
      body: const WeatherInfoBody(),
    );
  }
}
