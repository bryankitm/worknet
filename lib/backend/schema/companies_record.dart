import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompaniesRecord extends FirestoreRecord {
  CompaniesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "industry" field.
  String? _industry;
  String get industry => _industry ?? '';
  bool hasIndustry() => _industry != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "photos" field.
  List<String>? _photos;
  List<String> get photos => _photos ?? const [];
  bool hasPhotos() => _photos != null;

  // "x" field.
  String? _x;
  String get x => _x ?? '';
  bool hasX() => _x != null;

  // "whatsApp" field.
  String? _whatsApp;
  String get whatsApp => _whatsApp ?? '';
  bool hasWhatsApp() => _whatsApp != null;

  // "facebook" field.
  String? _facebook;
  String get facebook => _facebook ?? '';
  bool hasFacebook() => _facebook != null;

  // "youtube" field.
  String? _youtube;
  String get youtube => _youtube ?? '';
  bool hasYoutube() => _youtube != null;

  // "instagram" field.
  String? _instagram;
  String get instagram => _instagram ?? '';
  bool hasInstagram() => _instagram != null;

  // "linkedin" field.
  String? _linkedin;
  String get linkedin => _linkedin ?? '';
  bool hasLinkedin() => _linkedin != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "team_size" field.
  int? _teamSize;
  int get teamSize => _teamSize ?? 0;
  bool hasTeamSize() => _teamSize != null;

  // "categoryRef" field.
  DocumentReference? _categoryRef;
  DocumentReference? get categoryRef => _categoryRef;
  bool hasCategoryRef() => _categoryRef != null;

  // "est_since" field.
  DateTime? _estSince;
  DateTime? get estSince => _estSince;
  bool hasEstSince() => _estSince != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "profile_views" field.
  List<DocumentReference>? _profileViews;
  List<DocumentReference> get profileViews => _profileViews ?? const [];
  bool hasProfileViews() => _profileViews != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _industry = snapshotData['industry'] as String?;
    _location = snapshotData['location'] as String?;
    _website = snapshotData['website'] as String?;
    _logo = snapshotData['logo'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _photos = getDataList(snapshotData['photos']);
    _x = snapshotData['x'] as String?;
    _whatsApp = snapshotData['whatsApp'] as String?;
    _facebook = snapshotData['facebook'] as String?;
    _youtube = snapshotData['youtube'] as String?;
    _instagram = snapshotData['instagram'] as String?;
    _linkedin = snapshotData['linkedin'] as String?;
    _phone = snapshotData['phone'] as String?;
    _email = snapshotData['email'] as String?;
    _teamSize = castToType<int>(snapshotData['team_size']);
    _categoryRef = snapshotData['categoryRef'] as DocumentReference?;
    _estSince = snapshotData['est_since'] as DateTime?;
    _description = snapshotData['description'] as String?;
    _profileViews = getDataList(snapshotData['profile_views']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Companies');

  static Stream<CompaniesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompaniesRecord.fromSnapshot(s));

  static Future<CompaniesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompaniesRecord.fromSnapshot(s));

  static CompaniesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompaniesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompaniesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompaniesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompaniesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompaniesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompaniesRecordData({
  String? name,
  String? industry,
  String? location,
  String? website,
  String? logo,
  DateTime? createdAt,
  String? status,
  String? x,
  String? whatsApp,
  String? facebook,
  String? youtube,
  String? instagram,
  String? linkedin,
  String? phone,
  String? email,
  int? teamSize,
  DocumentReference? categoryRef,
  DateTime? estSince,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'industry': industry,
      'location': location,
      'website': website,
      'logo': logo,
      'created_at': createdAt,
      'status': status,
      'x': x,
      'whatsApp': whatsApp,
      'facebook': facebook,
      'youtube': youtube,
      'instagram': instagram,
      'linkedin': linkedin,
      'phone': phone,
      'email': email,
      'team_size': teamSize,
      'categoryRef': categoryRef,
      'est_since': estSince,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompaniesRecordDocumentEquality implements Equality<CompaniesRecord> {
  const CompaniesRecordDocumentEquality();

  @override
  bool equals(CompaniesRecord? e1, CompaniesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.industry == e2?.industry &&
        e1?.location == e2?.location &&
        e1?.website == e2?.website &&
        e1?.logo == e2?.logo &&
        e1?.createdAt == e2?.createdAt &&
        e1?.status == e2?.status &&
        listEquality.equals(e1?.photos, e2?.photos) &&
        e1?.x == e2?.x &&
        e1?.whatsApp == e2?.whatsApp &&
        e1?.facebook == e2?.facebook &&
        e1?.youtube == e2?.youtube &&
        e1?.instagram == e2?.instagram &&
        e1?.linkedin == e2?.linkedin &&
        e1?.phone == e2?.phone &&
        e1?.email == e2?.email &&
        e1?.teamSize == e2?.teamSize &&
        e1?.categoryRef == e2?.categoryRef &&
        e1?.estSince == e2?.estSince &&
        e1?.description == e2?.description &&
        listEquality.equals(e1?.profileViews, e2?.profileViews);
  }

  @override
  int hash(CompaniesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.industry,
        e?.location,
        e?.website,
        e?.logo,
        e?.createdAt,
        e?.status,
        e?.photos,
        e?.x,
        e?.whatsApp,
        e?.facebook,
        e?.youtube,
        e?.instagram,
        e?.linkedin,
        e?.phone,
        e?.email,
        e?.teamSize,
        e?.categoryRef,
        e?.estSince,
        e?.description,
        e?.profileViews
      ]);

  @override
  bool isValidKey(Object? o) => o is CompaniesRecord;
}
