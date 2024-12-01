import 'package:supabase_app/note.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class NoteDatabase {
  final database= Supabase.instance.client.from('notes');
  

  //Create
Future createNote(Note newNote) async {
  await database.insert(newNote.toMap());
}
  // Read
// ignore: non_constant_identifier_names
final  Stream=Supabase.instance.client.from('notes').stream(primaryKey: ['id'],
).map((data) => data.map((noteMap) =>Note.fromMap(noteMap)).toList());
  // Update 
Future updateNote(Note oldNote, String newContent) async {
  await database.update({
    'content':newContent,}).eq('id',oldNote.id!);
}
  // Delete 
  Future deleteNote(Note note) async{
    await database.delete().eq('id', note.id!);
  }
}