import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jokes_app/src/resources/theme/application_style.dart';
import 'package:jokes_app/src/ui/elements/custom_joke_item.dart';
import 'package:jokes_app/src/ui/widgets/custom_appbar.dart';

@RoutePage()
class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> jokes = [
    "Is it still work in progress?",
    "Of course it is still work in progress, sorry for the inconvenience",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        scaffoldKey: scaffoldKey,
        title: "Favorites",
      ),
      body: Container(
        color: ApplicationStyle.primaryColor,
        child: ListView.builder(
          itemCount: jokes.length,
          itemBuilder: (context, index) {
            return CustomJokeItem(
              joke: jokes[index],
              isFavorite: true,
              onTapFavorite: () {},
            );
          },
        ),
      ),
    );
  }
}
