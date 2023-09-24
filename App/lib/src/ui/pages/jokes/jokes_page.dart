import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jokes_app/src/models/joke/joke_model.dart';
import 'package:jokes_app/src/providers/joke/joke_provider.dart';
import 'package:jokes_app/src/resources/theme/application_style.dart';
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
  String joke = "";

  @override
  void initState() {
    super.initState();
    jokes = Provider.of<JokeProvider>(context, listen: false).jokeModels!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        scaffoldKey: scaffoldKey,
        title: "My jokes",
      ),
      body: Container(
        color: ApplicationStyle.backgroundColor,
        child: ListView.builder(
          itemCount: jokes?.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(8.0),
              color: ApplicationStyle.primaryColor,
              child: Card(
                child: ListTile(
                  contentPadding: const EdgeInsets.all(8.0),
                  title: Text(
                    jokes?[index].setup ?? "",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
