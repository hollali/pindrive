import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pindrive/firebase_options.dart';
import 'package:pindrive/injection_container.dart';
import 'package:pindrive/presentation/bloc/car_bloc.dart';
import 'package:pindrive/presentation/bloc/car_event.dart';
import 'package:pindrive/presentation/pages/onboarding_page.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupLocator() {
  sl.registerLazySingleton<CarBloc>(() => CarBloc(getCars: sl()));
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CarBloc>()..add(LoadCars()),
      child: MaterialApp(
        title: 'PinDrive',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true),
        home: OnboardingPage(),
      ),
    );
  }
}
