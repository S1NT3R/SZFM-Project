import 'package:flutter/material.dart';
import 'package:jokes_app/src/providers/joke/joke_provider.dart';
import 'package:jokes_app/src/resources/routes/routes.dart';
import 'package:jokes_app/src/resources/theme/theme.dart';
import 'package:provider/provider.dart';

class Application extends StatefulWidget {
  const Application({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  late AppRouter _appRouter;
  JokeProvider jokeProvider = JokeProvider();

  @override
  void initState() {
    _appRouter = AppRouter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => jokeProvider,
      child: MaterialApp.router(
        theme: Style.themeData(context),
        title: 'Jokes App',
        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
