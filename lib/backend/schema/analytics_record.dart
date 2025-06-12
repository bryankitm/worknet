import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnalyticsRecord extends FirestoreRecord {
  AnalyticsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "employer_id" field.
  DocumentReference? _employerId;
  DocumentReference? get employerId => _employerId;
  bool hasEmployerId() => _employerId != null;

  // "total_jobs_posted" field.
  int? _totalJobsPosted;
  int get totalJobsPosted => _totalJobsPosted ?? 0;
  bool hasTotalJobsPosted() => _totalJobsPosted != null;

  // "applications_received" field.
  int? _applicationsReceived;
  int get applicationsReceived => _applicationsReceived ?? 0;
  bool hasApplicationsReceived() => _applicationsReceived != null;

  // "hired_count" field.
  int? _hiredCount;
  int get hiredCount => _hiredCount ?? 0;
  bool hasHiredCount() => _hiredCount != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _employerId = snapshotData['employer_id'] as DocumentReference?;
    _totalJobsPosted = castToType<int>(snapshotData['total_jobs_posted']);
    _applicationsReceived =
        castToType<int>(snapshotData['applications_received']);
    _hiredCount = castToType<int>(snapshotData['hired_count']);
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Analytics');

  static Stream<AnalyticsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnalyticsRecord.fromSnapshot(s));

  static Future<AnalyticsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnalyticsRecord.fromSnapshot(s));

  static AnalyticsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnalyticsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnalyticsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnalyticsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnalyticsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnalyticsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnalyticsRecordData({
  DocumentReference? employerId,
  int? totalJobsPosted,
  int? applicationsReceived,
  int? hiredCount,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'employer_id': employerId,
      'total_jobs_posted': totalJobsPosted,
      'applications_received': applicationsReceived,
      'hired_count': hiredCount,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnalyticsRecordDocumentEquality implements Equality<AnalyticsRecord> {
  const AnalyticsRecordDocumentEquality();

  @override
  bool equals(AnalyticsRecord? e1, AnalyticsRecord? e2) {
    return e1?.employerId == e2?.employerId &&
        e1?.totalJobsPosted == e2?.totalJobsPosted &&
        e1?.applicationsReceived == e2?.applicationsReceived &&
        e1?.hiredCount == e2?.hiredCount &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(AnalyticsRecord? e) => const ListEquality().hash([
        e?.employerId,
        e?.totalJobsPosted,
        e?.applicationsReceived,
        e?.hiredCount,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is AnalyticsRecord;
}
