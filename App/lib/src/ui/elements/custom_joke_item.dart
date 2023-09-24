import 'package:flutter/material.dart';
import 'package:jokes_app/src/resources/theme/application_style.dart';

class CustomJokeItem extends StatefulWidget {
  final String? setup;
  final String? delivery;
  final String? joke;
  final bool isFavorite;
  final Function() onTapFavorite;

  const CustomJokeItem({
    Key? key,
    this.setup,
    this.delivery,
    this.joke,
    required this.isFavorite,
    required this.onTapFavorite,
  }) : super(key: key);

  @override
  State<CustomJokeItem> createState() => _CustomJokeItemState();
}

class _CustomJokeItemState extends State<CustomJokeItem> {
  @override
  Widget build(BuildContext context) {
    final bool isSingleJoke = widget.setup == null && widget.delivery == null;
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: ApplicationStyle.primaryColor,
      child: Card(
        child: ListTile(
          contentPadding: const EdgeInsets.all(8.0),
          title: isSingleJoke
              ? Text(
                  widget.joke ?? "",
                  style: Theme.of(context).textTheme.displayMedium,
                )
              : Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: const ShapeDecoration(
                            color: ApplicationStyle.textColor,
                            shape: CircleBorder(),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            widget.setup ?? "",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: const ShapeDecoration(
                            color: ApplicationStyle.textColor,
                            shape: CircleBorder(),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            widget.delivery ?? "s",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              widget.isFavorite
                  ? Icons.favorite_rounded
                  : Icons.favorite_border,
            ),
            color: ApplicationStyle.textColor,
          ),
        ),
      ),
    );
  }
}
