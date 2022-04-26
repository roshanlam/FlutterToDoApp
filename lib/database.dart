import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore _db = FirebaseFirestore.instance;
final CollectionReference _collection = _db.collection('Tasks');

class Database {
  static String? userId;

  static Future<void> addItem({
    required String title,
    required String description,
  }) async {
    DocumentReference docRef =
        _collection.doc(userId).collection('items').doc();

    Map<String, dynamic> data = <String, dynamic>{
      'title': title,
      'description': description,
      'createdAt': FieldValue.serverTimestamp(),
      'updatedAt': FieldValue.serverTimestamp(),
    };

    await docRef
        .set(data)
        .whenComplete(() => print('Item added'))
        .catchError((e) => print(e));
  }

  static Future<void> updateItem({
    required String id,
    required String title,
    required String description,
  }) async {
    DocumentReference docRef =
        _collection.doc(userId).collection('items').doc(id);

    Map<String, dynamic> data = <String, dynamic>{
      'title': title,
      'description': description,
      'updatedAt': FieldValue.serverTimestamp(),
    };

    await docRef
        .update(data)
        .whenComplete(() => print('Item updated'))
        .catchError((e) => print(e));
  }

  static Stream<QuerySnapshot> readItems() {
    CollectionReference tasksCollection =
        _collection.doc(userId).collection('items');
    return tasksCollection.snapshots();
  }

  static Future<void> deleteItem({
    required String docid,
  }) async {
    DocumentReference docRef =
        _collection.doc(userId).collection('items').doc(docid);

    await docRef
        .delete()
        .whenComplete(() => print('Item deleted'))
        .catchError((e) => print(e));
  }
}
