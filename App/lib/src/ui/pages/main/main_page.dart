import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jokes_app/src/providers/joke/joke_provider.dart';
import 'package:jokes_app/src/resources/routes/routes.dart';
import 'package:jokes_app/src/resources/theme/application_style.dart';
import 'package:jokes_app/src/ui/elements/custom_text_button.dart';
import 'package:jokes_app/src/ui/widgets/custom_appbar.dart';
import 'package:provider/provider.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> categories = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Provider.of<JokeProvider>(context, listen: false).getCategories();
      await Provider.of<JokeProvider>(context, listen: false)
          .getJokesByCategory("any", 10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        scaffoldKey: scaffoldKey,
        title: "Main Page",
      ),
      body: Container(
        color: ApplicationStyle.backgroundColor,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: CustomTextButton(
                title: "Make your day with a JOKE",
                onPressed: () {
                  AutoRouter.of(context).navigate(
                    const RandomJokeRoute(),
                  );
                },
              ),
            ),
            CustomTextButton(
              title: "Categories",
              onPressed: () {
                AutoRouter.of(context).navigate(
                  const CategoriesRoute(),
                );
              },
            ),
            CustomTextButton(
              title: "Favorites",
              onPressed: () {
                AutoRouter.of(context).navigate(
                  const FavoritesRoute(),
                );
              },
            ),
            CustomTextButton(
              title: "Add your own",
              onPressed: () {
                AutoRouter.of(context).navigate(
                  const MyJokesRoute(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
