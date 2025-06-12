import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfileViewsRecord extends FirestoreRecord {
  ProfileViewsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "viewed_at" field.
  DateTime? _viewedAt;
  DateTime? get viewedAt => _viewedAt;
  bool hasViewedAt() => _viewedAt != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as DocumentReference?;
    _viewedAt = snapshotData['viewed_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('profile_views');

  static Stream<ProfileViewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProfileViewsRecord.fromSnapshot(s));

  static Future<ProfileViewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProfileViewsRecord.fromSnapshot(s));

  static ProfileViewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProfileViewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProfileViewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProfileViewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProfileViewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProfileViewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProfileViewsRecordData({
  DocumentReference? userId,
  DateTime? viewedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'viewed_at': viewedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProfileViewsRecordDocumentEquality
    implements Equality<ProfileViewsRecord> {
  const ProfileViewsRecordDocumentEquality();

  @override
  bool equals(ProfileViewsRecord? e1, ProfileViewsRecord? e2) {
    return e1?.userId == e2?.userId && e1?.viewedAt == e2?.viewedAt;
  }

  @override
  int hash(ProfileViewsRecord? e) =>
      const ListEquality().hash([e?.userId, e?.viewedAt]);

  @override
  bool isValidKey(Object? o) => o is ProfileViewsRecord;
}
