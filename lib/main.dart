import 'package:flutter/material.dart';
import 'package:flutter_run_tracker_app/view/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

//-------------------------------
void main() async {
  //---------- ตั้งค่าการเชื่อมต่อกับ Supabase ------------
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://xkwyuqpedjolrhjjgiav.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inhrd3l1cXBlZGpvbHJoampnaWF2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzM3ODczNTYsImV4cCI6MjA4OTM2MzM1Nn0.3gD0tLNAjTL0hkPfS71onWq2EifHgS5Ak-XDPHcS_w8',
  );
  //-------------------------------------------------

  runApp(
    FlutterRunTrackerApp(),
  );
}

//-------------------------------
class FlutterRunTrackerApp extends StatefulWidget {
  const FlutterRunTrackerApp({super.key});

  @override
  State<FlutterRunTrackerApp> createState() => _FlutterRunTrackerAppState();
}

class _FlutterRunTrackerAppState extends State<FlutterRunTrackerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.promptTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}