import 'package:flutter/material.dart';

// ignore: constant_identifier_names
const Color PRIMARY_COLOR = Colors.yellow;
// ignore: constant_identifier_names
const Color ACCENT_COLOR = Colors.brown;
// ignore: constant_identifier_names
const Color BACKGROUND_COLOR = Colors.purple;

// ignore: constant_identifier_names
const Color SECONDARY_COLOR = Colors.pinkAccent;

ThemeData _buildTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: PRIMARY_COLOR,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary:SECONDARY_COLOR),
    backgroundColor: BACKGROUND_COLOR,
    appBarTheme: _appBarTheme(base.appBarTheme),
    textTheme: _textTheme(base.textTheme),
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: PRIMARY_COLOR,
    ),
    cardTheme: _cardTheme(base.cardTheme),
  );
}

AppBarTheme _appBarTheme(AppBarTheme base) => base.copyWith(
    color: BACKGROUND_COLOR,
    // ignore: deprecated_member_use
    brightness: Brightness.light,
    // ignore: deprecated_member_use
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 88.0,
          fontFamily: 'Montserrat',
          color: ACCENT_COLOR),),

    iconTheme: const IconThemeData(color: PRIMARY_COLOR));


CardTheme _cardTheme(CardTheme base) => base.copyWith(
  color: ACCENT_COLOR,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
);


TextTheme _textTheme(TextTheme base) {
  return base.copyWith(
    headline1: base.headline1!.copyWith(
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
        color: ACCENT_COLOR),
    headline2: base.headline2!.copyWith(
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
        color: ACCENT_COLOR),
    headline3: base.headline3!.copyWith(
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
        color: ACCENT_COLOR),
    headline4: base.headline4!.copyWith(
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
        color: ACCENT_COLOR),
    headline5: base.headline5!.copyWith(
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
        color: ACCENT_COLOR),
    headline6: base.headline6!.copyWith(
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
        color: ACCENT_COLOR),
    subtitle1: base.subtitle1!.copyWith(
        fontSize: 20,
        fontFamily: 'Montserrat',
        color: ACCENT_COLOR),
    subtitle2: base.subtitle2!.copyWith(
        fontSize: 20,
        fontFamily: 'Montserrat',
        color: ACCENT_COLOR),
    caption: base.caption!.copyWith(
        fontWeight: FontWeight.w400,
        fontFamily: 'Montserrat',
        color: ACCENT_COLOR),
    bodyText1: base.bodyText1!.copyWith(
        fontWeight: FontWeight.w400,
        fontFamily: 'Montserrat',
        color: ACCENT_COLOR),
    bodyText2: base.bodyText2!.copyWith(
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
        color: ACCENT_COLOR),
    button: const TextStyle(
        color: Colors.yellow,
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
        fontSize: 26),
  );
}


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _buildTheme(),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
          onPressed: (){},
          icon: const Icon(Icons.menu),
        ),
          centerTitle: true,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          title:  Text("APPBAR THEME",
          style: Theme.of(context).textTheme.headline5!.copyWith(color: PRIMARY_COLOR),
          ),
        ),
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  <Widget>[
              const MyWidget(),
              const SizedBox(height: 90,),
              // ignore: deprecated_member_use
              RaisedButton(
                  onPressed: (){},
                  child: Text(
                    "BUTTON THEME",
                    style: Theme.of(context).textTheme.button!.copyWith(
                      color: SECONDARY_COLOR,
                    ),
                  )),
              const SizedBox(height: 40,),
                Card(
                child: SizedBox(
                  height: 70,
                  width: 150,
                  child: Padding(
                      padding: const EdgeInsets.all(25),
                       child: Text("CARD THEME",
                       style: Theme.of(context).textTheme.bodyText1!.copyWith(
                         color: SECONDARY_COLOR
                       ),
                       textAlign: TextAlign.center,),)
                )
              ),
              const SizedBox(height: 40,),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  child:  Text('C',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: SECONDARY_COLOR,),
                ),),
                label:  Text('CHIP THEME',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: SECONDARY_COLOR,
                      fontSize: 20,
                  ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Hello, World!', style: Theme.of(context).textTheme.bodyText1!.copyWith(
      color: ACCENT_COLOR,
      fontSize: 40,
    ));
  }
}