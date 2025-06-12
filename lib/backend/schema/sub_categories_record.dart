import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubCategoriesRecord extends FirestoreRecord {
  SubCategoriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "subCatName" field.
  String? _subCatName;
  String get subCatName => _subCatName ?? '';
  bool hasSubCatName() => _subCatName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "categoryRef" field.
  DocumentReference? _categoryRef;
  DocumentReference? get categoryRef => _categoryRef;
  bool hasCategoryRef() => _categoryRef != null;

  void _initializeFields() {
    _subCatName = snapshotData['subCatName'] as String?;
    _description = snapshotData['description'] as String?;
    _categoryRef = snapshotData['categoryRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SubCategories');

  static Stream<SubCategoriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubCategoriesRecord.fromSnapshot(s));

  static Future<SubCategoriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SubCategoriesRecord.fromSnapshot(s));

  static SubCategoriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubCategoriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubCategoriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubCategoriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubCategoriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubCategoriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubCategoriesRecordData({
  String? subCatName,
  String? description,
  DocumentReference? categoryRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'subCatName': subCatName,
      'description': description,
      'categoryRef': categoryRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubCategoriesRecordDocumentEquality
    implements Equality<SubCategoriesRecord> {
  const SubCategoriesRecordDocumentEquality();

  @override
  bool equals(SubCategoriesRecord? e1, SubCategoriesRecord? e2) {
    return e1?.subCatName == e2?.subCatName &&
        e1?.description == e2?.description &&
        e1?.categoryRef == e2?.categoryRef;
  }

  @override
  int hash(SubCategoriesRecord? e) => const ListEquality()
      .hash([e?.subCatName, e?.description, e?.categoryRef]);

  @override
  bool isValidKey(Object? o) => o is SubCategoriesRecord;
}
