import 'package:botttom_bar_with_bloc/Bloc/BottomNavigationBarBloc/bottom_navigation_bar_bloc.dart';
import 'package:botttom_bar_with_bloc/Bloc/CheckBoxBloc/check_box_bloc.dart';
import 'package:botttom_bar_with_bloc/Bloc/ShowPassword/bloc/show_pass_word_bloc.dart';
import 'package:botttom_bar_with_bloc/Routes/routes.dart';
import 'package:botttom_bar_with_bloc/screens/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ShowPassWordBloc>(
          create: (context) => ShowPassWordBloc(),
        ),
        BlocProvider<BottomNavigationBarBloc>(
          create: (context) => BottomNavigationBarBloc(),
        ),
        BlocProvider<CheckBoxBloc>(
          create: (context) => CheckBoxBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'BottomNavigationBar With Bloc',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: PageRoutes.generateRoutes,
        initialRoute: Pages.SPLASH_PAGE,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
  
      ),
    );
  }
}
