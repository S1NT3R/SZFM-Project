import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jokes_app/src/resources/preferences/joke_preference.dart';
import 'package:jokes_app/src/resources/theme/application_style.dart';
import 'package:jokes_app/src/ui/widgets/custom_appbar.dart';

@RoutePage()
class MyJokesPage extends StatefulWidget {
  const MyJokesPage({Key? key}) : super(key: key);

  @override
  State<MyJokesPage> createState() => _MyJokesPageState();
}

class _MyJokesPageState extends State<MyJokesPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final FocusNode jokeFocus = FocusNode();
  List<String> jokes = [];
  String joke = "";

  void loadJokes() async {
    jokes = await JokePreference().getJokes();
  }

  @override
  void initState() {
    loadJokes();
    super.initState();
  }

  void addJokeModalBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: true,
      builder: (BuildContext context) {
        return GestureDetector(
          onTap: () {
            if (jokeFocus.hasFocus) {
              jokeFocus.unfocus();
            }
          },
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).viewInsets.bottom +
                  MediaQuery.of(context).size.height * 0.3,
              color: Colors.transparent,
              child: Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Add your own joke"),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Enter your joke here",
                          ),
                          focusNode: jokeFocus,
                          onSaved: (val) {
                            joke = val!;
                          },
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please enter your joke";
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                            setState(() {
                              jokes.add(joke);
                              JokePreference().setJokes(jokes);
                              Navigator.of(context).pop();
                            });
                          }
                        },
                        child: const Text("Add"),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    loadJokes();
    return Scaffold(
      appBar: CustomAppbar(
        scaffoldKey: scaffoldKey,
        title: "My jokes",
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addJokeModalBottomSheet,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: ApplicationStyle.textColor,
        child: const Icon(Icons.add),
      ),
      body: Container(
          color: ApplicationStyle.backgroundColor,
          child: FutureBuilder<List<String>>(
            future: JokePreference().getJokes(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(8.0),
                      color: ApplicationStyle.primaryColor,
                      child: Card(
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(8.0),
                          title: Text(
                            snapshot.data![index],
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_border_rounded),
                          ),
                        ),
                      ),
                    );
                  },
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          )
          // ListView.builder(
          //   itemCount: jokes.length,
          //   itemBuilder: (context, index) {
          //     return Container(
          //       padding: const EdgeInsets.all(8.0),
          //       color: ApplicationStyle.primaryColor,
          //       child: Card(
          //         child: ListTile(
          //           contentPadding: const EdgeInsets.all(8.0),
          //           title: Text(
          //             jokes[index],
          //             style: Theme.of(context).textTheme.displayMedium,
          //           ),
          //           trailing: IconButton(
          //             onPressed: () {},
          //             icon: const Icon(Icons.favorite_border),
          //           ),
          //         ),
          //       ),
          //     );
          //   },
          // ),
          ),
    );
  }
}
