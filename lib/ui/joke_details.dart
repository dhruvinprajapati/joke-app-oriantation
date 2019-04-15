import 'package:flutter/material.dart';
import 'package:joke_app_oriantation/model/joke.dart';

class JokeDetails extends StatelessWidget {
  JokeDetails({@required this.isInTablateLayout,@required this.joke});
  final bool isInTablateLayout;
  final Joke joke;
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final Widget content = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(joke?.setup ?? 'No Joke Selected',style: textTheme.headline,),
        ),
        Text(joke?.punchline ?? 'Please select a joke on the left',style: textTheme.subhead,)

      ],
    );
    if(isInTablateLayout){
      return Center(child: content,);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(joke?.type ?? 'No Jokes'),
      ),
      backgroundColor: Colors.deepPurple,
      body:Center(child: content,) ,
    );
  }
}