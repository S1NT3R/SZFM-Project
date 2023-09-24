import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jokes_app/src/resources/theme/application_style.dart';
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
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim est, varius nec",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim est, varius nec accumsan sit amet,",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim est, varius nec accumsan sit amet, dignissim eget lorem.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim est, varius nec accumsan sit amet, dignissim eget lorem. Quisque.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eget ornare diam. Integer ut arcu tempor, aliquam risus eget, eleifend urna. In tempor pellentesque imperdiet.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        scaffoldKey: scaffoldKey,
        title: "Favorites",
      ),
      body: ListView.builder(
        itemCount: jokes.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(8.0),
            color: ApplicationStyle.primaryColor,
            child: Card(
              child: ListTile(
                contentPadding: const EdgeInsets.all(8.0),
                title: Text(
                  jokes[index],
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
    );
  }
}
