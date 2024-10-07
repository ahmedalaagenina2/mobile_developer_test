import 'package:flutter/material.dart';
import 'package:mobile_developer_test/config/routes/routes.dart';
import 'package:mobile_developer_test/features/recipes/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await CacheHelper.clear();
              RouteConfigurations.router.refresh();
            },
          ),
        ],
      ),
      body: const Column(
        children: [
          SearchFavBar(),
          Expanded(child: RecipesGrid()),
        ],
      ),
    );
  }
}
