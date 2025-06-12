import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "full_name" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  bool hasFullName() => _fullName != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "accountType" field.
  String? _accountType;
  String get accountType => _accountType ?? '';
  bool hasAccountType() => _accountType != null;

  // "companyRef" field.
  DocumentReference? _companyRef;
  DocumentReference? get companyRef => _companyRef;
  bool hasCompanyRef() => _companyRef != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "qualification" field.
  String? _qualification;
  String get qualification => _qualification ?? '';
  bool hasQualification() => _qualification != null;

  // "experience" field.
  String? _experience;
  String get experience => _experience ?? '';
  bool hasExperience() => _experience != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "jobTitle" field.
  String? _jobTitle;
  String get jobTitle => _jobTitle ?? '';
  bool hasJobTitle() => _jobTitle != null;

  // "currentSalary" field.
  String? _currentSalary;
  String get currentSalary => _currentSalary ?? '';
  bool hasCurrentSalary() => _currentSalary != null;

  // "age" field.
  String? _age;
  String get age => _age ?? '';
  bool hasAge() => _age != null;

  // "jobType" field.
  String? _jobType;
  String get jobType => _jobType ?? '';
  bool hasJobType() => _jobType != null;

  // "expectedSalary" field.
  String? _expectedSalary;
  String get expectedSalary => _expectedSalary ?? '';
  bool hasExpectedSalary() => _expectedSalary != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "facebook" field.
  String? _facebook;
  String get facebook => _facebook ?? '';
  bool hasFacebook() => _facebook != null;

  // "x" field.
  String? _x;
  String get x => _x ?? '';
  bool hasX() => _x != null;

  // "whatsapp" field.
  String? _whatsapp;
  String get whatsapp => _whatsapp ?? '';
  bool hasWhatsapp() => _whatsapp != null;

  // "instagram" field.
  String? _instagram;
  String get instagram => _instagram ?? '';
  bool hasInstagram() => _instagram != null;

  // "linkedln" field.
  String? _linkedln;
  String get linkedln => _linkedln ?? '';
  bool hasLinkedln() => _linkedln != null;

  // "youtube" field.
  String? _youtube;
  String get youtube => _youtube ?? '';
  bool hasYoutube() => _youtube != null;

  // "career_profile_ref" field.
  DocumentReference? _careerProfileRef;
  DocumentReference? get careerProfileRef => _careerProfileRef;
  bool hasCareerProfileRef() => _careerProfileRef != null;

  // "EmploymentAvailability" field.
  EmploymentAvailabilityStruct? _employmentAvailability;
  EmploymentAvailabilityStruct get employmentAvailability =>
      _employmentAvailability ?? EmploymentAvailabilityStruct();
  bool hasEmploymentAvailability() => _employmentAvailability != null;

  // "date_of_hire" field.
  DateTime? _dateOfHire;
  DateTime? get dateOfHire => _dateOfHire;
  bool hasDateOfHire() => _dateOfHire != null;

  // "date_of_birth" field.
  DateTime? _dateOfBirth;
  DateTime? get dateOfBirth => _dateOfBirth;
  bool hasDateOfBirth() => _dateOfBirth != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _shortDescription = snapshotData['shortDescription'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _role = snapshotData['role'] as String?;
    _title = snapshotData['title'] as String?;
    _fullName = snapshotData['full_name'] as String?;
    _location = snapshotData['location'] as String?;
    _status = snapshotData['status'] as String?;
    _accountType = snapshotData['accountType'] as String?;
    _companyRef = snapshotData['companyRef'] as DocumentReference?;
    _website = snapshotData['website'] as String?;
    _qualification = snapshotData['qualification'] as String?;
    _experience = snapshotData['experience'] as String?;
    _gender = snapshotData['gender'] as String?;
    _jobTitle = snapshotData['jobTitle'] as String?;
    _currentSalary = snapshotData['currentSalary'] as String?;
    _age = snapshotData['age'] as String?;
    _jobType = snapshotData['jobType'] as String?;
    _expectedSalary = snapshotData['expectedSalary'] as String?;
    _bio = snapshotData['bio'] as String?;
    _facebook = snapshotData['facebook'] as String?;
    _x = snapshotData['x'] as String?;
    _whatsapp = snapshotData['whatsapp'] as String?;
    _instagram = snapshotData['instagram'] as String?;
    _linkedln = snapshotData['linkedln'] as String?;
    _youtube = snapshotData['youtube'] as String?;
    _careerProfileRef =
        snapshotData['career_profile_ref'] as DocumentReference?;
    _employmentAvailability =
        snapshotData['EmploymentAvailability'] is EmploymentAvailabilityStruct
            ? snapshotData['EmploymentAvailability']
            : EmploymentAvailabilityStruct.maybeFromMap(
                snapshotData['EmploymentAvailability']);
    _dateOfHire = snapshotData['date_of_hire'] as DateTime?;
    _dateOfBirth = snapshotData['date_of_birth'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? shortDescription,
  DateTime? lastActiveTime,
  String? role,
  String? title,
  String? fullName,
  String? location,
  String? status,
  String? accountType,
  DocumentReference? companyRef,
  String? website,
  String? qualification,
  String? experience,
  String? gender,
  String? jobTitle,
  String? currentSalary,
  String? age,
  String? jobType,
  String? expectedSalary,
  String? bio,
  String? facebook,
  String? x,
  String? whatsapp,
  String? instagram,
  String? linkedln,
  String? youtube,
  DocumentReference? careerProfileRef,
  EmploymentAvailabilityStruct? employmentAvailability,
  DateTime? dateOfHire,
  DateTime? dateOfBirth,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'shortDescription': shortDescription,
      'last_active_time': lastActiveTime,
      'role': role,
      'title': title,
      'full_name': fullName,
      'location': location,
      'status': status,
      'accountType': accountType,
      'companyRef': companyRef,
      'website': website,
      'qualification': qualification,
      'experience': experience,
      'gender': gender,
      'jobTitle': jobTitle,
      'currentSalary': currentSalary,
      'age': age,
      'jobType': jobType,
      'expectedSalary': expectedSalary,
      'bio': bio,
      'facebook': facebook,
      'x': x,
      'whatsapp': whatsapp,
      'instagram': instagram,
      'linkedln': linkedln,
      'youtube': youtube,
      'career_profile_ref': careerProfileRef,
      'EmploymentAvailability': EmploymentAvailabilityStruct().toMap(),
      'date_of_hire': dateOfHire,
      'date_of_birth': dateOfBirth,
    }.withoutNulls,
  );

  // Handle nested data for "EmploymentAvailability" field.
  addEmploymentAvailabilityStructData(
      firestoreData, employmentAvailability, 'EmploymentAvailability');

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.role == e2?.role &&
        e1?.title == e2?.title &&
        e1?.fullName == e2?.fullName &&
        e1?.location == e2?.location &&
        e1?.status == e2?.status &&
        e1?.accountType == e2?.accountType &&
        e1?.companyRef == e2?.companyRef &&
        e1?.website == e2?.website &&
        e1?.qualification == e2?.qualification &&
        e1?.experience == e2?.experience &&
        e1?.gender == e2?.gender &&
        e1?.jobTitle == e2?.jobTitle &&
        e1?.currentSalary == e2?.currentSalary &&
        e1?.age == e2?.age &&
        e1?.jobType == e2?.jobType &&
        e1?.expectedSalary == e2?.expectedSalary &&
        e1?.bio == e2?.bio &&
        e1?.facebook == e2?.facebook &&
        e1?.x == e2?.x &&
        e1?.whatsapp == e2?.whatsapp &&
        e1?.instagram == e2?.instagram &&
        e1?.linkedln == e2?.linkedln &&
        e1?.youtube == e2?.youtube &&
        e1?.careerProfileRef == e2?.careerProfileRef &&
        e1?.employmentAvailability == e2?.employmentAvailability &&
        e1?.dateOfHire == e2?.dateOfHire &&
        e1?.dateOfBirth == e2?.dateOfBirth;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.shortDescription,
        e?.lastActiveTime,
        e?.role,
        e?.title,
        e?.fullName,
        e?.location,
        e?.status,
        e?.accountType,
        e?.companyRef,
        e?.website,
        e?.qualification,
        e?.experience,
        e?.gender,
        e?.jobTitle,
        e?.currentSalary,
        e?.age,
        e?.jobType,
        e?.expectedSalary,
        e?.bio,
        e?.facebook,
        e?.x,
        e?.whatsapp,
        e?.instagram,
        e?.linkedln,
        e?.youtube,
        e?.careerProfileRef,
        e?.employmentAvailability,
        e?.dateOfHire,
        e?.dateOfBirth
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
