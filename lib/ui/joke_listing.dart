import 'package:flutter/material.dart';
import 'package:joke_app_oriantation/model/joke.dart';

class JokeListing extends StatelessWidget {
  JokeListing({@required this.jokeSelectCallback,this.jokeSelected});
  final ValueChanged<Joke> jokeSelectCallback;
  final Joke jokeSelected;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: jokesList.map((joke) {
        return Container(
          child: ListTile(
            title: Text(joke.setup),
            onTap: () => jokeSelectCallback(joke),
            selected: jokeSelected == joke,
            
          ),
          decoration: BoxDecoration(
            color: Colors.red[200],
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(4.5),
          ),
        );
      }).toList(),
    );
  }
}