import 'package:supabase_app/notepage.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
    url: "https://hamagqhtpgkvhykvsnkl.supabase.co" ,
    anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhhbWFncWh0cGdrdmh5a3ZzbmtsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzI3OTk0ODYsImV4cCI6MjA0ODM3NTQ4Nn0.SW2AiR18Dq33N2eHfIuP5BkFYPJoJSDF46zWIR9AAXI" ,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: true,
      home: NotePage(),
    );
  }
}

