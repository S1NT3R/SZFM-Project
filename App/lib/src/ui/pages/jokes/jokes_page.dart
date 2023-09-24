import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jokes_app/src/models/joke/joke_model.dart';
import 'package:jokes_app/src/providers/joke/joke_provider.dart';
import 'package:jokes_app/src/resources/theme/application_style.dart';
import 'package:jokes_app/src/ui/elements/custom_joke_item.dart';
import 'package:jokes_app/src/ui/widgets/custom_appbar.dart';
import 'package:provider/provider.dart';

@RoutePage()
class JokesPage extends StatefulWidget {
  const JokesPage({Key? key}) : super(key: key);

  @override
  State<JokesPage> createState() => _JokesPageState();
}

class _JokesPageState extends State<JokesPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final FocusNode jokeFocus = FocusNode();
  List<JokeModel>? jokes;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    jokes = Provider.of<JokeProvider>(context, listen: false).jokeModels!;
    return Scaffold(
      appBar: CustomAppbar(
        scaffoldKey: scaffoldKey,
        title: "My jokes",
      ),
      body: Provider.of<JokeProvider>(context, listen: true).isLoading
          ? Container(
              color: ApplicationStyle.primaryColor,
              child: const Center(
                child: CircularProgressIndicator(
                  color: ApplicationStyle.textColor,
                ),
              ),
            )
          : ListView.builder(
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
