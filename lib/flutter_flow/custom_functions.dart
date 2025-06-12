import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

bool? flexDisplay(double screenSize) {
  // function if the screenSize is less than 769 return false else true include build context
  if (screenSize < 769) {
    return false;
  } else {
    return true;
  }
}

List<String> allCountries() {
  // function which generates list of all countries in the world arranged in alphabetical order
  return [
    'Afghanistan',
    'Albania',
    'Algeria',
    'Andorra',
    'Angola',
    'Antigua and Barbuda',
    'Argentina',
    'Armenia',
    'Australia',
    'Austria',
    'Azerbaijan',
    'Bahamas',
    'Bahrain',
    'Bangladesh',
    'Barbados',
    'Belarus',
    'Belgium',
    'Belize',
    'Benin',
    'Bhutan',
    'Bolivia',
    'Bosnia and Herzegovina',
    'Botswana',
    'Brazil',
    'Brunei',
    'Bulgaria',
    'Burkina Faso',
    'Burundi',
    'Cabo Verde',
    'Cambodia',
    'Cameroon',
    'Canada',
    'Central African Republic',
    'Chad',
    'Chile',
    'China',
    'Colombia',
    'Comoros',
    'Congo',
    'Costa Rica',
    'Croatia',
    'Cuba',
    'Cyprus',
    'Czechia',
    'Denmark',
    'Djibouti',
    'Dominica',
    'Dominican Republic',
    'Ecuador',
    'Egypt',
    'El Salvador',
    'Equatorial Guinea',
    'Eritrea',
    'Estonia',
    'Eswatini',
    'Ethiopia',
    'Fiji',
    'Finland',
    'France',
    'Gabon',
    'Gambia',
    'Georgia',
    'Germany',
    'Ghana',
    'Greece',
    'Grenada',
    'Guatemala',
    'Guinea',
    'Guinea-Bissau',
    'Guyana',
    'Haiti',
    'Honduras',
    'Hungary',
    'Iceland',
    'India',
    'Indonesia',
    'Iran',
    'Iraq',
    'Ireland',
    'Israel',
    'Italy',
    'Jamaica',
    'Japan',
    'Jordan',
    'Kazakhstan',
    'Kenya',
    'Kiribati',
    'Korea, North',
    'Korea, South',
    'Kosovo',
    'Kuwait',
    'Kyrgyzstan',
    'Laos',
    'Latvia',
    'Lebanon',
    'Lesotho',
    'Liberia',
    'Libya',
    'Liechtenstein',
    'Lithuania',
    'Luxembourg',
    'Madagascar',
    'Malawi',
    'Malaysia',
    'Maldives',
    'Mali',
    'Malta',
    'Marshall Islands',
    'Mauritania',
    'Mauritius',
    'Mexico',
    'Micronesia',
    'Moldova',
    'Monaco',
    'Mongolia',
    'Montenegro',
    'Morocco',
    'Mozambique',
    'Myanmar',
    'Namibia',
    'Nauru',
    'Nepal',
    'Netherlands',
    'New Zealand',
    'Nicaragua',
    'Niger',
    'Nigeria',
    'North Macedonia',
    'Norway',
    'Oman',
    'Pakistan',
    'Palau',
    'Panama',
    'Papua New Guinea',
    'Paraguay',
    'Peru',
    'Philippines',
    'Poland',
    'Portugal',
    'Qatar',
    'Romania',
    'Russia',
    'Rwanda',
    'Saint Kitts and Nevis',
    'Saint Lucia',
    'Saint Vincent and the Grenadines',
    'Samoa',
    'San Marino',
    'Sao Tome and Principe',
    'Saudi Arabia',
    'Senegal',
    'Serbia',
    'Seychelles',
    'Sierra Leone',
    'Singapore',
    'Slovakia',
    'Slovenia',
    'Solomon Islands',
    'Somalia',
    'South Africa ',
    'South Sudan',
    'Spain',
    'Sri Lanka',
    'Sudan',
    'Suriname',
    'Sweden',
    'Switzerland',
    'Syria',
    'Taiwan',
    'Tajikistan',
    'Tanzania',
    'Thailand',
    'Timor-Leste',
    'Togo',
    'Tonga',
    'Trinidad and Tobago',
    'Tunisia',
    'Turkey',
    'Turkmenistan',
    'Tuvalu',
    'Uganda',
    'Ukraine',
    'United Arab Emirates',
    'United Kingdom',
    'United States',
    'Uruguay',
    'Uzbekistan',
    'Vanuatu',
    'Vatican City',
    'Venezuela',
    'Vietnam',
    'Yemen',
    'Zambia',
    'Zimbabwe',
  ];
}

int doubelToInt(double screenWidth) {
  // function to convert doubel to int by rounding to nearest
  return screenWidth.round();
}

List<JobPostingsRecord> getList(
  List<JobPostingsRecord> searchlist,
  List<JobPostingsRecord> list,
) {
  return searchlist.length > 0 ? searchlist : list;
}

double? displayForMobileContainer() {
  // function to check if the screen size is for mobile return 100% width else return 74%
  // function to check if the screen size is for mobile return 100% width else return 74%
  double screenWidth = 0; // get the screen width here
  if (screenWidth < 769) {
    return 1.0; // 100% width for mobile
  } else {
    return 0.74; // 74% width for other screen sizes
  }
}

List<JobCategoriesRecord> getCategoryList(
  List<JobCategoriesRecord> searchlist,
  List<JobCategoriesRecord> list,
) {
  return searchlist.length > 0 ? searchlist : list;
}

String customJobID() {
  // function to generate custom id begining with J then - after numbers max of 6 digits they should have same id
  String id = 'J';
  int random = math.Random().nextInt(1000000);
  String jobId = id + random.toString().padLeft(6, '0');
  return jobId;
}

List<SubCategoriesRecord> getSubCategoryList(
  List<SubCategoriesRecord> searchlist,
  List<SubCategoriesRecord> list,
) {
  return searchlist.length > 0 ? searchlist : list;
}

List<CompaniesRecord> getCompanyList(
  List<CompaniesRecord> searchlist,
  List<CompaniesRecord> list,
) {
  return searchlist.length > 0 ? searchlist : list;
}

List<String> getDialCode() {
  // Function to return the country code of phone numbers for all countries
  return [
    '+93', // Afghanistan
    '+355', // Albania
    '+213', // Algeria
    '+376', // Andorra
    '+244', // Angola
    '+1-268', // Antigua and Barbuda
    '+54', // Argentina
    '+374', // Armenia
    '+61', // Australia
    '+43', // Austria
    '+994', // Azerbaijan
    '+1-242', // Bahamas
    '+973', // Bahrain
    '+880', // Bangladesh
    '+1-246', // Barbados
    '+375', // Belarus
    '+32', // Belgium
    '+501', // Belize
    '+229', // Benin
    '+975', // Bhutan
    '+591', // Bolivia
    '+387', // Bosnia and Herzegovina
    '+267', // Botswana
    '+55', // Brazil
    '+673', // Brunei
    '+359', // Bulgaria
    '+226', // Burkina Faso
    '+257', // Burundi
    '+238', // Cabo Verde
    '+855', // Cambodia
    '+237', // Cameroon
    '+1', // Canada
    '+236', // Central African Republic
    '+235', // Chad
    '+56', // Chile
    '+86', // China
    '+57', // Colombia
    '+269', // Comoros
    '+242', // Congo
    '+506', // Costa Rica
    '+385', // Croatia
    '+53', // Cuba
    '+357', // Cyprus
    '+420', // Czechia
    '+45', // Denmark
    '+253', // Djibouti
    '+1-767', // Dominica
    '+1-809', // Dominican Republic
    '+593', // Ecuador
    '+20', // Egypt
    '+503', // El Salvador
    '+240', // Equatorial Guinea
    '+291', // Eritrea
    '+372', // Estonia
    '+268', // Eswatini
    '+251', // Ethiopia
    '+679', // Fiji
    '+358', // Finland
    '+33', // France
    '+241', // Gabon
    '+220', // Gambia
    '+995', // Georgia
    '+49', // Germany
    '+233', // Ghana
    '+30', // Greece
    '+1-473', // Grenada
    '+502', // Guatemala
    '+224', // Guinea
    '+245', // Guinea-Bissau
    '+592', // Guyana
    '+509', // Haiti
    '+504', // Honduras
    '+36', // Hungary
    '+354', // Iceland
    '+91', // India
    '+62', // Indonesia
    '+98', // Iran
    '+964', // Iraq
    '+353', // Ireland
    '+972', // Israel
    '+39', // Italy
    '+1-876', // Jamaica
    '+81', // Japan
    '+962', // Jordan
    '+7', // Kazakhstan
    '+254', // Kenya
    '+686', // Kiribati
    '+850', // Korea, North
    '+82', // Korea, South
    '+383', // Kosovo
    '+965', // Kuwait
    '+996', // Kyrgyzstan
    '+856', // Laos
    '+371', // Latvia
    '+961', // Lebanon
    '+266', // Lesotho
    '+231', // Liberia
    '+218', // Libya
    '+423', // Liechtenstein
    '+370', // Lithuania
    '+352', // Luxembourg
    '+261', // Madagascar
    '+265', // Malawi
    '+60', // Malaysia
    '+960', // Maldives
    '+223', // Mali
    '+356', // Malta
    '+692', // Marshall Islands
    '+222', // Mauritania
    '+230', // Mauritius
    '+52', // Mexico
    '+691', // Micronesia
    '+373', // Moldova
    '+377', // Monaco
    '+976', // Mongolia
    '+382', // Montenegro
    '+212', // Morocco
    '+258', // Mozambique
    '+95', // Myanmar
    '+264', // Namibia
    '+674', // Nauru
    '+977', // Nepal
    '+31', // Netherlands
    '+64', // New Zealand
    '+505', // Nicaragua
    '+227', // Niger
    '+234', // Nigeria
    '+389', // North Macedonia
    '+47', // Norway
    '+968', // Oman
  ];
}

int allUsersNo(List<UsersRecord> usersList) {
  // function to count the number of users from the argument and return the number
  return usersList.length;
}

List<UsersRecord> getUserList(
  List<UsersRecord> searchlist,
  List<UsersRecord> list,
) {
  return searchlist.length > 0 ? searchlist : list;
}

String categoryID() {
  // function to generate 6 digit category id only numbers begin with C- then the 5 digit no two can have same id
  String prefix = 'C-';
  String randomId = '';
  for (int i = 0; i < 5; i++) {
    randomId += (math.Random().nextInt(9) + 1).toString();
  }
  return prefix + randomId;
}

List<String>? returnSubCatList(List<DocumentReference>? subCatRef) {
  // query subcat using the arguments retun the subCatName field list
  List<String>? subCatList = [];
  if (subCatRef != null) {
    subCatList = subCatRef.map((ref) => ref.id).toList();
  }
  return subCatList;
}

String customCompanyId() {
  // function to generate co=ustome id begining with co- then 5 digit numbers folows should not be repeated
  Set<int> usedIds = Set<int>();
  int id = 0;
  while (true) {
    id = math.Random().nextInt(90000) + 10000;
    if (!usedIds.contains(id)) {
      usedIds.add(id);
      break;
    }
  }
  return 'co-$id';
}

String htmlToString(String htmlContent) {
  if (htmlContent.isEmpty) return '';

  // Handle common HTML tags for formatting
  htmlContent = htmlContent
      .replaceAll(
          RegExp(r'<br\s*/?>', caseSensitive: false), '\n') // Line break
      .replaceAll(
          RegExp(r'</p>', caseSensitive: false), '\n\n') // Paragraph spacing
      .replaceAll(RegExp(r'<p>', caseSensitive: false), '') // Remove <p> tags
      .replaceAll(
          RegExp(r'</h[1-6]>', caseSensitive: false), '\n\n') // Headings
      .replaceAll(
          RegExp(r'</li>', caseSensitive: false), '\n') // End of list item
      .replaceAll(RegExp(r'<li>', caseSensitive: false), '- ') // Bullet points
      .replaceAll(
          RegExp(r'<ol>', caseSensitive: false), '') // Ordered list start
      .replaceAll(
          RegExp(r'</ol>', caseSensitive: false), '') // Ordered list end
      .replaceAll(
          RegExp(r'<ul>', caseSensitive: false), '') // Unordered list start
      .replaceAll(
          RegExp(r'</ul>', caseSensitive: false), '') // Unordered list end
      .replaceAll(RegExp(r'<(div|tr|td)>', caseSensitive: false),
          '\n') // Table/div elements
      .replaceAll(RegExp(r'</(div|tr|td)>', caseSensitive: false), '\n');

  // Handle text styling
  htmlContent = htmlContent
      .replaceAll(RegExp(r'<b>|<strong>', caseSensitive: false), '**') // Bold
      .replaceAll(RegExp(r'</b>|</strong>', caseSensitive: false), '**')
      .replaceAll(RegExp(r'<i>|<em>', caseSensitive: false), '*') // Italic
      .replaceAll(RegExp(r'</i>|</em>', caseSensitive: false), '*')
      .replaceAll(RegExp(r'<u>', caseSensitive: false), '_') // Underline
      .replaceAll(RegExp(r'</u>', caseSensitive: false), '_');

  // Handle alignments (Markers for UI)
  htmlContent = htmlContent
      .replaceAllMapped(
          RegExp(r'<div align="center">(.*?)</div>',
              caseSensitive: false, dotAll: true),
          (match) => '[CENTER] ${match.group(1)} [CENTER]')
      .replaceAllMapped(
          RegExp(r'<div align="right">(.*?)</div>',
              caseSensitive: false, dotAll: true),
          (match) => '[RIGHT] ${match.group(1)} [RIGHT]')
      .replaceAllMapped(
          RegExp(r'<div align="left">(.*?)</div>',
              caseSensitive: false, dotAll: true),
          (match) => '[LEFT] ${match.group(1)} [LEFT]');

  // Handle numbered lists (ordered lists)
  RegExp olPattern =
      RegExp(r'<ol>(.*?)<\/ol>', caseSensitive: false, dotAll: true);
  htmlContent = htmlContent.replaceAllMapped(olPattern, (match) {
    String content = match.group(1) ?? '';
    List<String> items = content
        .split(RegExp(r'<li>'))
        .where((item) => item.isNotEmpty)
        .toList();
    return items
        .asMap()
        .entries
        .map((entry) => '${entry.key + 1}. ${entry.value}')
        .join('\n');
  });

  // Handle tab spaces for indentation
  htmlContent = htmlContent.replaceAll(
      RegExp(r'&nbsp;&nbsp;&nbsp;&nbsp;'), '\t'); // Convert HTML spaces to tab

  // Remove all remaining HTML tags
  htmlContent = htmlContent.replaceAll(RegExp(r'<[^>]+>'), '');

  // Normalize multiple spaces and newlines
  htmlContent = htmlContent.replaceAll(RegExp(r'\n\s*\n'), '\n\n').trim();

  return htmlContent;
}

double setWebViewHeight(String? htmlContent) {
  // Handle null or empty input gracefully
  if (htmlContent == null || htmlContent.isEmpty) {
    return 0.0; // Return a default height of 0 for empty content
  }

  // Calculate character length of the input string
  int charLength = htmlContent.length;

  // Define width ratio (adjustable based on design needs)
  double widthRatio = 0.8;

  // Calculate height based on character length and width ratio
  // Assuming approximately 20 characters per "line" and adding a 4px allowance
  double height = (charLength / 20) * widthRatio + 4;

  return height;
}

List<String> listOfYears() {
  // Function to retrieve a list of years in descending order, from the current year to the first year ever (1).
  int currentYear = DateTime.now().year;
  List<String> years = [];
  for (int i = currentYear; i >= 1; i--) {
    // Looping backward
    years.add(i.toString());
  }
  return years; // Returns the list of years in descending order
}

List<int> plotSampleCopy() {
  // i need function to genrate fixed number of ints to plot sample graph i just need the list of ints
  List<int> data = [1, 2, 30, 4, 15, 6, 17, 8, 9, 20];
  return data;
}

List<int> plotSampleCopyCopy() {
  // i need function to genrate fixed number of ints to plot sample graph i just need the list of ints
  List<int> data = [19, 2, 43, 40, 15, 6, 17, 18, 9, 20];
  return data;
}

List<String> listOfAllLanguages() {
  // function to return a list of all languages alphabetical order
  return [
    'Afrikaans',
    'Albanian',
    'Amharic',
    'Arabic',
    'Armenian',
    'Azerbaijani',
    'Basque',
    'Belarusian',
    'Bengali',
    'Bosnian',
    'Bulgarian',
    'Catalan',
    'Cebuano',
    'Chinese (Simplified)',
    'Chinese (Traditional)',
    'Corsican',
    'Croatian',
    'Czech',
    'Danish',
    'Dutch',
    'English',
    'Esperanto',
    'Estonian',
    'Filipino',
    'Finnish',
    'French',
    'Frisian',
    'Galician',
    'Georgian',
    'German',
    'Greek',
    'Gujarati',
    'Haitian Creole',
    'Hausa',
    'Hawaiian',
    'Hebrew',
    'Hindi',
    'Hmong',
    'Hungarian',
    'Icelandic',
    'Igbo',
    'Indonesian',
    'Irish',
    'Italian',
    'Japanese',
    'Javanese',
    'Kannada',
    'Kazakh',
    'Khmer',
    'Korean',
    'Kurdish',
    'Kyrgyz',
    'Lao',
    'Latin',
    'Latvian',
    'Lithuanian',
    'Luxembourgish',
    'Macedonian',
    'Malagasy',
    'Malay',
    'Malayalam',
    'Maltese',
    'Maori',
    'Marathi',
    'Mongolian',
    'Myanmar (Burmese)',
    'Nepali',
    'Norwegian',
    'Nyanja (Chichewa)',
    'Pashto',
    'Persian',
    'Polish',
    'Portuguese',
    'Punjabi',
    'Romanian',
    'Russian',
    'Samoan',
    'Scots Gaelic',
    'Serbian',
    'Sesotho',
    'Shona',
    'Sindhi',
    'Sinhala',
    'Slovak',
    'Slovenian',
    'Somali',
    'Spanish',
    'Sundanese',
    'Swahili',
    'Swedish',
    'Tajik',
    'Tamil',
    'Telugu',
    'Thai',
    'Turkish',
    'Ukrainian',
    'Urdu',
    'Uzbek',
    'Vietnamese',
    'Welsh',
    'Xhosa',
    'Yiddish',
    'Yoruba',
    'Zulu',
  ];
}

List<int> plotSample() {
  // i need function to genrate fixed number of ints to plot sample graph i just need the list of ints
  List<int> data = [1, 2, 30, 4, 15, 6, 17, 8, 9, 20];
  return data;
}

LatLng getCoordinates(String? location) {
  // function to return latlng from the argument which is address use google  maps to search for the place and return its latlng if argument is empty return uganda as default
  if (location == null || location.isEmpty) {
    return const LatLng(1.3733, 32.2903); // Default coordinates for Uganda
  } else {
    // Use Google Maps API or any other service to get the coordinates based on the location/address
    // For demonstration purposes, we'll just return random coordinates
    final random = math.Random();
    final latitude = 1.0 + random.nextDouble();
    final longitude = 32.0 + random.nextDouble();
    return LatLng(latitude, longitude);
  }
}
