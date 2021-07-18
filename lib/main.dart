import 'package:bwa_flutix_dendy_krisna/services/services.dart';
import 'package:bwa_flutix_dendy_krisna/ui/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'bloc/blocs.dart';

void main() {
  runApp(MyApp());
}

class MyApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.userStream,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => PageBloc()),
          BlocProvider(create: (_) => UserBloc()),
          BlocProvider(create: (_) => ThemeBloc())
        ],
        child: BlocBuilder <ThemeBloc, ThemeState>(
          builder:
            (_, themeState) => MaterialApp(
              theme: themeState.themeData,
              debugShowCheckedModeBanner: false,
              home : Wrapper()
              /*
              Scaffold(
              body: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text("Sign Up"),
                    onPressed: () async {
                     SignInSignUpResult result = await AuthServices.signUp(
                        "dendykrisna@mail.com",
                        "jarananbuto",
                        "Dendy Krisna Ananda",
                        ["Action","Comedy","Anime","Tokusatsu"],
                        "Indonesia"
                        );

                        if (result.user == null) {
                          print(result.message);
                        }
                        else {
                          print(result.user.toString());
                        }
                    }),
                    RaisedButton(
                    child: Text("Sign In"),
                    onPressed: () async {
                     SignInSignUpResult result = await AuthServices.signIn(
                        "dendykrisna@mail.com",
                        "jarananbuto"
                        );

                        if (result.user == null) {
                          print(result.message);
                        }
                        else {
                          print(result.user.toString());
                        }
                    })
                ]
              ),)
          ) */
      ),
        ),
          ),
    );
  }
}
