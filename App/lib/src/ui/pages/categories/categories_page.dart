import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jokes_app/src/providers/joke/joke_provider.dart';
import 'package:jokes_app/src/resources/routes/routes.dart';
import 'package:jokes_app/src/resources/theme/application_style.dart';
import 'package:jokes_app/src/ui/elements/custom_text_button.dart';
import 'package:jokes_app/src/ui/widgets/custom_appbar.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> categories = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      categories =
          Provider.of<JokeProvider>(context, listen: false).categories!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        scaffoldKey: scaffoldKey,
        title: "Categories",
      ),
      body: Container(
        color: ApplicationStyle.backgroundColor,
        width: double.infinity,
        height: double.infinity,
        child: Provider.of<JokeProvider>(context).isLoading
            ? const Center(
                child: CircularProgressIndicator(
                  color: ApplicationStyle.textColor,
                ),
              )
            : ListView.builder(
                itemCount:
                    Provider.of<JokeProvider>(context).categories?.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
                  return CustomTextButton(
                    title:
                        Provider.of<JokeProvider>(context).categories![index],
                    onPressed: () {
                      Provider.of<JokeProvider>(context, listen: false)
                          .getJokesByCategory(categories[index], 10);
                      AutoRouter.of(context).push(
                        const JokesRoute(),
                      );
                    },
                  );
                },
              ),
      ),
    );
  }
}
