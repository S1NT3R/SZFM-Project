import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:forest_logger/forest_logger.dart';
import 'package:jokes_app/src/models/joke/joke_model.dart';
import 'package:jokes_app/src/providers/joke/joke_provider.dart';
import 'package:jokes_app/src/ui/elements/custom_joke_item.dart';
import 'package:jokes_app/src/ui/widgets/custom_appbar.dart';
import 'package:provider/provider.dart';

@RoutePage()
class RandomJokePage extends StatefulWidget {
  const RandomJokePage({Key? key}) : super(key: key);

  @override
  State<RandomJokePage> createState() => _RandomJokePageState();
}

class _RandomJokePageState extends State<RandomJokePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  List<JokeModel>? jokes;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      jokes = Provider.of<JokeProvider>(context, listen: false).jokeModels;
      Forest.debug(jokes!.length.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        scaffoldKey: scaffoldKey,
        title: "Random jokes",
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return CustomJokeItem(
            joke: jokes?[index].joke,
            delivery: jokes?[index].delivery,
            setup: jokes?[index].setup,
            isFavorite: false,
            onTapFavorite: () {},
          );
        },
      ),
    );
  }
}
