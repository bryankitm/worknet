import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobCategoriesRecord extends FirestoreRecord {
  JobCategoriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "photoUrl" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _photoUrl = snapshotData['photoUrl'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Job_Categories');

  static Stream<JobCategoriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobCategoriesRecord.fromSnapshot(s));

  static Future<JobCategoriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobCategoriesRecord.fromSnapshot(s));

  static JobCategoriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JobCategoriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobCategoriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobCategoriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobCategoriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobCategoriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobCategoriesRecordData({
  String? name,
  String? description,
  String? photoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'photoUrl': photoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobCategoriesRecordDocumentEquality
    implements Equality<JobCategoriesRecord> {
  const JobCategoriesRecordDocumentEquality();

  @override
  bool equals(JobCategoriesRecord? e1, JobCategoriesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.photoUrl == e2?.photoUrl;
  }

  @override
  int hash(JobCategoriesRecord? e) =>
      const ListEquality().hash([e?.name, e?.description, e?.photoUrl]);

  @override
  bool isValidKey(Object? o) => o is JobCategoriesRecord;
}
