import 'package:flutter/material.dart';
import 'package:notes/models/note_database.dart';
import 'package:provider/provider.dart';
import 'pages/notes_page.dart';

Future<void> main() async {
  // initialize the database
  WidgetsFlutterBinding.ensureInitialized();
  await NoteDatabase.init();

  runApp(ChangeNotifierProvider(
    create: (context) => NoteDatabase(),
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotesPage(),
    );
  }
}
