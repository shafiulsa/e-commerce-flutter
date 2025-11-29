import 'package:e_commerce_app/firebase_options.dart';
import 'package:e_commerce_app/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async{
  /// Widgets Binding
  final  widgetsBinding = WidgetsFlutterBinding.ensureInitialized();


  //firebase config
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // the divide will not auto roated in phone roatation
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}


