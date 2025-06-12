import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookmarkedJobsRecord extends FirestoreRecord {
  BookmarkedJobsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "job_id" field.
  DocumentReference? _jobId;
  DocumentReference? get jobId => _jobId;
  bool hasJobId() => _jobId != null;

  // "saved_date" field.
  DateTime? _savedDate;
  DateTime? get savedDate => _savedDate;
  bool hasSavedDate() => _savedDate != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as DocumentReference?;
    _jobId = snapshotData['job_id'] as DocumentReference?;
    _savedDate = snapshotData['saved_date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Bookmarked_Jobs');

  static Stream<BookmarkedJobsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookmarkedJobsRecord.fromSnapshot(s));

  static Future<BookmarkedJobsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookmarkedJobsRecord.fromSnapshot(s));

  static BookmarkedJobsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookmarkedJobsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookmarkedJobsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookmarkedJobsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookmarkedJobsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookmarkedJobsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookmarkedJobsRecordData({
  DocumentReference? userId,
  DocumentReference? jobId,
  DateTime? savedDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'job_id': jobId,
      'saved_date': savedDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookmarkedJobsRecordDocumentEquality
    implements Equality<BookmarkedJobsRecord> {
  const BookmarkedJobsRecordDocumentEquality();

  @override
  bool equals(BookmarkedJobsRecord? e1, BookmarkedJobsRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.jobId == e2?.jobId &&
        e1?.savedDate == e2?.savedDate;
  }

  @override
  int hash(BookmarkedJobsRecord? e) =>
      const ListEquality().hash([e?.userId, e?.jobId, e?.savedDate]);

  @override
  bool isValidKey(Object? o) => o is BookmarkedJobsRecord;
}
