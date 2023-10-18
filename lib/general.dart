import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'dart:html' as html;

class General extends StatefulWidget {
  @override
  State<General> createState() => GeneralState();
}

String? selValue = "Sans Serif";
String? newValue = "Sans Serif";
String? selLanguage = "English(US)";
String? defCountry = "India";
String? defFont = "Normal";

class GeneralState extends State<General> {
  bool chkValue = false;
  final values = [
    "Sans Serif",
    "Serif",
    "Fixed Width",
    "Wide",
    "Narrow",
    "Comic Sans MS",
    "Garamond",
    "Georgia",
    "Tahoma",
    "Trebuchet MS",
    "Verdana"
  ];

  final fontList = ["Small", "Normal", "Huge", "Large"];
  final languages = [
    "Afrikaans",
    "Bahasa Indonesia",
    "Bahasa Malayu",
    "Catala",
    "Dansk",
    "English(UK)",
    "English(US)",
    "Espanol",
    "हिंदी",
    "தமிழ்",
    "മലയാളം",
    "русский",
    "中國人"
  ];

  final countries = [
    "Afghanistan",
    "Albania",
    "Algeria",
    "American Samoa",
    "Andorra",
    "Angola",
    "Anguilla",
    "Antarctica",
    "Antigua and Barbuda",
    "Argentina",
    "Armenia",
    "Aruba",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahamas",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    "Belize",
    "Benin",
    "Bermuda",
    "Bhutan",
    "Bolivia",
    "Bosnia and Herzegowina",
    "Botswana",
    "Bouvet Island",
    "Brazil",
    "British Indian Ocean Territory",
    "Brunei Darussalam",
    "Bulgaria",
    "Burkina Faso",
    "Burundi",
    "Cambodia",
    "Cameroon",
    "Canada",
    "Cape Verde",
    "Cayman Islands",
    "Central African Republic",
    "Chad",
    "Chile",
    "China",
    "Christmas Island",
    "Cocos Islands",
    "Colombia",
    "Comoros",
    "Congo",
    "Congo",
    "Cook Islands",
    "Costa Rica",
    "Cote d'Ivoire",
    "Croatia",
    "Cuba",
    "Cyprus",
    "Czech Republic",
    "Denmark",
    "Djibouti",
    "Dominica",
    "Dominican Republic",
    "East Timor",
    "Ecuador",
    "Egypt",
    "El Salvador",
    "Equatorial Guinea",
    "Eritrea",
    "Estonia",
    "Ethiopia",
    "Falkland Islands",
    "Faroe Islands",
    "Fiji",
    "Finland",
    "France",
    "France Metropolitan",
    "French Guiana",
    "French Polynesia",
    "Gabon",
    "Gambia",
    "Georgia",
    "Germany",
    "Ghana",
    "Gibraltar",
    "Greece",
    "Greenland",
    "Grenada",
    "Guadeloupe",
    "Guam",
    "Guatemala",
    "Guinea",
    "Guinea-Bissau",
    "Guyana",
    "Haiti",
    "Honduras",
    "Hong Kong",
    "Hungary",
    "Iceland",
    "India",
    "Indonesia",
    "Iran",
    "Iraq",
    "Ireland",
    "Israel",
    "Italy",
    "Jamaica",
    "Japan",
    "Jordan",
    "Kazakhstan",
    "Kenya",
    "Kiribati",
    "Korea",
    "Kosovo",
    "Kuwait",
    "Kyrgyzstan",
    "Lao",
    "Latvia",
    "Lebanon",
    "Lesotho",
    "Liberia",
    "Libyan Arab Jamahiriya",
    "Liechtenstein",
    "Lithuania",
    "Luxembourg",
    "Macau",
    "Macedonia",
    "Madagascar",
    "Malawi",
    "Malaysia",
    "Maldives",
    "Mali",
    "Malta",
    "Marshall Islands",
    "Martinique",
    "Mauritania",
    "Mauritius",
    "Mayotte",
    "Mexico",
    "Micronesia",
    "Moldova",
    "Monaco",
    "Mongolia",
    "Montserrat",
    "Morocco",
    "Mozambique",
    "Myanmar",
    "Namibia",
    "Nauru",
    "Nepal",
    "Netherlands",
    "Netherlands Antilles",
    "New Caledonia",
    "New Zealand",
    "Nicaragua",
    "Niger",
    "Nigeria",
    "Niue",
    "Norfolk Island",
    "Northern Mariana Islands",
    "Norway",
    "Oman",
    "Pakistan",
    "Palau",
    "Panama",
    "Papua New Guinea",
    "Paraguay",
    "Palestine",
    "Peru",
    "Philippines",
    "Pitcairn",
    "Poland",
    "Portugal",
    "Puerto Rico",
    "Qatar",
    "Reunion",
    "Romania",
    "Russian Federation",
    "Rwanda",
    "Saint Kitts and Nevis",
    "Saint Lucia",
    "Saint Vincent",
    "Samoa",
    "San Marino",
    "Sao Tome and Principe",
    "Saudi Arabia",
    "Senegal",
    "Seychelles",
    "Sierra Leone",
    "Singapore",
    "Slovakia",
    "Slovenia",
    "Solomon Islands",
    "Somalia",
    "South Africa",
    "South Georgia",
    "Spain",
    "Sri Lanka",
    "St. Helena",
    "St. Pierre and Miquelon",
    "Sudan",
    "Suriname",
    "Svalbard",
    "Swaziland",
    "Sweden",
    "Switzerland",
    "Syrian Arab Republic",
    "Taiwan",
    "Tajikistan",
    "Tanzania",
    "Thailand",
    "Tibet",
    "Togo",
    "Tokelau",
    "Tonga",
    "Trinidad and Tobago",
    "Tunisia",
    "Turkey",
    "Turkmenistan",
    "Turks and Caicos Islands",
    "Tuvalu",
    "Uganda",
    "Ukraine",
    "United Arab Emirates",
    "United Kingdom",
    "United States",
    "Uruguay",
    "Uzbekistan",
    "Vanuatu",
    "Venezuela",
    "Vietnam",
    "Virgin Islands",
    "Wallis and Futuna Islands",
    "Western Sahara",
    "Yemen",
    "Yugoslavia",
    "Zambia",
    "Zimbabwe"
  ];
  Color pickerColor = const Color(0xff443a49);
  Color currentColor = const Color(0xff133a47);
  Icon? dragIcon = const Icon(
    Icons.star,
    color: Colors.orange,
    size: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        displayLanguage(),
        const Padding(
          padding: EdgeInsets.only(right: 466),
          child: Text(
            "Show all language options",
            style: TextStyle(color: Colors.blue, fontSize: 13),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 40, right: 15),
          child: Divider(),
        ),
        phoneNumber(),
        const Padding(
          padding: EdgeInsets.only(left: 40, right: 15),
          child: Divider(),
        ),
        gmailTextStyle(),
        const Padding(
          padding: EdgeInsets.only(left: 40, right: 15),
          child: Divider(),
        ),
        stars(),
        const Padding(
          padding: EdgeInsets.only(left: 40, right: 15),
          child: Divider(),
        ),
        signature(),
      ],
    );
  }

  Widget phoneNumber() {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Row(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              "Phone numbers:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            width: 265,
          ),
          const Text(
            "Default country code:",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: SizedBox(
              width: 200,
              height: 20,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
                isDense: true,
                value: defCountry,
                items: countries
                    .map(
                      (newItem) => DropdownMenuItem(
                        value: newItem,
                        child: Text(
                          newItem,
                          style: const TextStyle(fontSize: 11),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(
                    () {
                      defCountry = value.toString();
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget displayLanguage() {
    return Row(
      children: [
        const SizedBox(width: 40),
        const Padding(
          padding: EdgeInsets.only(top: 5),
          child: Text(
            "Language:",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          width: 300,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 5),
          child: Text("Gmail display language:",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 5),
          child: SizedBox(
            width: 310,
            height: 25,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
              isDense: true,
              value: selLanguage,
              items: languages
                  .map(
                    (newItem) => DropdownMenuItem(
                      value: newItem,
                      child: Text(
                        newItem,
                        style: const TextStyle(fontSize: 11),
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                setState(
                  () {
                    selLanguage = value.toString();
                  },
                );
              },
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        InkWell(
          child: const Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              "Change language settings for other Google products",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          onTap: () async {
            html.window
                .open("https://myaccount.google.com/language", 'new tab');
          },
        ),
      ],
    );
  }

  Widget gmailTextStyle() {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Default text style:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                  "(Use the 'Remove formatting' button  on the \ntoolbar to reset the default text style)"),
            ],
          ),
          const SizedBox(
            width: 85,
          ),
          Container(
            width: 345,
            height: 70,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                )
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    ButtonTheme(
                      alignedDropdown: true,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          isDense: true,
                          items: values
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(
                                    e,
                                    style: const TextStyle(fontSize: 8),
                                  ),
                                ),
                              )
                              .toList(),
                          value: newValue,
                          onChanged: (String? value) {
                            setState(() {
                              newValue = value;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            isExpanded: false,
                            items: fontList
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e,
                                      style: const TextStyle(fontSize: 8),
                                    ),
                                  ),
                                )
                                .toList(),
                            value: defFont,
                            onChanged: (String? value) {
                              setState(() {
                                defFont = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                        child: Container(
                          width: 18,
                          height: 18,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              )
                            ],
                          ),
                          child: const Icon(
                            Icons.font_download,
                            size: 15,
                          ),
                        ),
                        onTap: () {
                          colorPickerDialog();
                        }),
                    InkWell(
                      onTap: () {
                        setState(() {
                          pickerColor = Colors.black;
                          defFont = "Normal";
                          selValue = "Sans Serif";
                          newValue = "Sans Serif";
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 10),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            )
                          ],
                        ),
                        child: const Icon(
                          Icons.format_clear,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "This is what your body text will look like.",
                        style: TextStyle(color: pickerColor),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future colorPickerDialog() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
        content: SingleChildScrollView(
          child: BlockPicker(
            pickerColor: pickerColor,
            onColorChanged: changeColor,
          ),
        ),
        actions: [
          ElevatedButton(
            child: const Text("Ok"),
            onPressed: () {
              setState(() => currentColor = pickerColor);
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  void changeColor(Color color) {
    pickerColor = color;
  }

  Widget stars() {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 30,
            ),
            const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Stars:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              width: 330,
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                      text: "Drag the stars between the lists.",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                  TextSpan(
                    text:
                        "The stars will rotate in the order shown below when you click successively. To learn the name of a star for search, hover your \nmouse over the image.",
                    style: TextStyle(fontSize: 11),
                  ),
                ],
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            children: [
              SizedBox(
                width: 405,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Presets:",
                  style: TextStyle(fontSize: 13),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "1 star",
                style: TextStyle(color: Colors.blue, fontSize: 12),
              ),
              SizedBox(
                width: 5,
              ),
              Text("4 stars",
                  style: TextStyle(color: Colors.blue, fontSize: 12)),
              SizedBox(
                width: 5,
              ),
              Text("all stars",
                  style: TextStyle(color: Colors.blue, fontSize: 12)),
            ],
          ),
        ),
        Row(
          children: [
            const SizedBox(
              width: 405,
            ),
            const Text(
              "In use:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            const SizedBox(
              width: 12,
            ),
            DragTarget<Icon>(
              onAccept: (data) {
                setState(() {
                  dragIcon = data;
                });
              },
              builder: (BuildContext context, List<Object?> candidateData,
                  List<dynamic> rejectedData) {
                return Container(
                  child: IconButton(
                    color: Colors.grey,
                    onPressed: () {},
                    icon: dragIcon!,
                  ),
                );
              },
            )
          ],
        ),
        dragTargetIcon(),
      ],
    );
  }

  Widget signature() {
    final signatureList = ["No Signature", "srikanth"];
    String? signValue = "No Signature";
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 35),
          child: Align(
            child: Text(
              "Signature:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            alignment: Alignment.topLeft,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 35),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "(appended at the end of all outgoing messages)",
              style: TextStyle(fontSize: 12),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 35),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Learn more",
              style: TextStyle(fontSize: 12, color: Colors.blue),
            ),
          ),
        ),
        const SizedBox(
          width: 400,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 370),
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: const EdgeInsets.only(left: 30),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  )
                ],
              ),
              width: 700,
              height: 120,
              child: signatureData(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 400, top: 10),
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 200,
              height: 20,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: const Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                          child: Icon(
                        Icons.add,
                        size: 16,
                        color: Colors.blue,
                      )),
                      TextSpan(
                        text: 'Create new',
                        style: TextStyle(color: Colors.blue, fontSize: 11),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 400, top: 10),
          child: Align(
            child: Text(
              "Signature defaults",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
            alignment: Alignment.topLeft,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            children: [
              SizedBox(
                width: 400,
              ),
              Text(
                "FOR NEW EMAILS USE",
                style: TextStyle(fontSize: 9),
              ),
              SizedBox(
                width: 70,
              ),
              Text(
                "ON REPLY/FORWARD USE",
                style: TextStyle(fontSize: 9),
              ),
            ],
          ),
        ),
        Row(
          children: [
            const SizedBox(
              width: 400,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                width: 140,
                height: 20,
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                  isDense: true,
                  value: signValue,
                  items: signatureList
                      .map(
                        (newItem) => DropdownMenuItem(
                          value: newItem,
                          child: Text(
                            newItem,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        selValue = value.toString();
                      },
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              width: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                width: 140,
                height: 20,
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                  isDense: true,
                  value: signValue,
                  items: signatureList
                      .map(
                        (newItem) => DropdownMenuItem(
                          value: newItem,
                          child: Text(
                            newItem,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        selValue = value.toString();
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(
              width: 390,
            ),
            Transform.scale(
              scale: 0.7,
              child: Checkbox(
                activeColor: Colors.blue,
                value: chkValue,
                onChanged: (bool? checked) {
                  setState(() {
                    chkValue = checked!;
                  });
                },
              ),
            ),
            const Text(
                "Insert signature before quoted text in replies and remove the s\"--\" line that precedes it")
          ],
        ),
      ],
    );
  }

  Widget dragTargetIcon() {
    return Row(
      children: [
        const SizedBox(
          width: 405,
        ),
        const Text(
          "Not in use:",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
        const Draggable<Icon>(
          data: Icon(
            Icons.star,
            color: Colors.orange,
          ),
          feedback: Icon(null),
          childWhenDragging: Icon(null),
          child: Icon(
            Icons.star,
            color: Colors.orange,
            size: 20,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Draggable<Icon>(
          data: Icon(
            Icons.star,
            color: Colors.red,
          ),
          feedback: Icon(null),
          childWhenDragging: Icon(null),
          child: Icon(
            Icons.star,
            color: Colors.red,
            size: 20,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Draggable<Icon>(
          data: Icon(
            Icons.star,
            color: Colors.purpleAccent,
          ),
          feedback: Icon(null),
          childWhenDragging: Icon(null),
          child: Icon(
            Icons.star,
            color: Colors.purpleAccent,
            size: 20,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Draggable<Icon>(
          data: Icon(
            Icons.star,
            color: Colors.blueAccent,
          ),
          feedback: Icon(null),
          childWhenDragging: Icon(null),
          child: Icon(
            Icons.star,
            size: 20,
            color: Colors.blueAccent,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Draggable<Icon>(
          data: Icon(
            Icons.star,
            color: Colors.green,
          ),
          feedback: Icon(null),
          childWhenDragging: Icon(null),
          child: Icon(
            Icons.star,
            color: Colors.green,
            size: 20,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          color: Colors.orange,
          child: const Draggable<Icon>(
            data: Icon(
              Icons.double_arrow,
              color: Colors.orange,
            ),
            feedback: Icon(null),
            childWhenDragging: Icon(null),
            child: Icon(
              Icons.double_arrow,
              size: 15,
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          color: Colors.yellow,
          child: const Draggable<Icon>(
            data: Icon(
              Icons.priority_high,
              color: Colors.yellow,
            ),
            feedback: Icon(null),
            childWhenDragging: Icon(null),
            child: Icon(
              Icons.priority_high,
              size: 15,
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          color: Colors.green,
          child: const Draggable<Icon>(
            data: Icon(
              Icons.check,
              color: Colors.green,
            ),
            feedback: Icon(null),
            childWhenDragging: Icon(null),
            child: Icon(
              Icons.check,
              size: 15,
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          width: 15,
          height: 15,
          color: Colors.blueAccent,
          child: const Draggable<Icon>(
            data: Icon(
              Icons.info_outline,
              color: Colors.blueAccent,
            ),
            feedback: Icon(null),
            childWhenDragging: Icon(null),
            child: Icon(
              Icons.info_outline,
              size: 10,
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          width: 15,
          height: 15,
          color: Colors.purpleAccent,
          child: const Draggable<Icon>(
            data: Icon(
              Icons.question_mark,
              color: Colors.purpleAccent,
            ),
            feedback: Icon(null),
            childWhenDragging: Icon(null),
            child: Icon(
              Icons.question_mark,
              size: 10,
            ),
          ),
        ),
      ],
    );
  }

  Widget signatureData() {
    return Row(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: 200,
            height: 118,
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text("srikanth"),
                  SizedBox(
                    width: 50,
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.edit,
                      color: Colors.black,
                      size: 15,
                    ),
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          children: [
            const Align(
              child: Divider(),
              alignment: Alignment.topCenter,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 498,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey)),
                child: Column(
                  children: [
                    iconsRow(),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget iconsRow() {
    return Row(children: [
      ButtonTheme(
        alignedDropdown: true,
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            isDense: true,
            items: values
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: Text(
                      e,
                      style: const TextStyle(fontSize: 8),
                    ),
                  ),
                )
                .toList(),
            value: newValue,
            onChanged: (String? value) {
              setState(() {
                newValue = value;
              });
            },
          ),
        ),
      ),
      SizedBox(
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              isExpanded: false,
              items: fontList
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(
                        e,
                        style: const TextStyle(fontSize: 8),
                      ),
                    ),
                  )
                  .toList(),
              value: defFont,
              onChanged: (String? value) {
                setState(() {
                  defFont = value;
                });
              },
            ),
          ),
        ),
      ),
      const Icon(
        Icons.format_bold,
        size: 20,
      ),
      const SizedBox(
        width: 5,
      ),
      const Icon(
        Icons.format_italic,
        size: 20,
      ),
      const SizedBox(
        width: 5,
      ),
      const Icon(
        Icons.format_underline,
        size: 20,
      ),
      const SizedBox(
        width: 5,
      ),
      InkWell(
          child: Container(
            width: 18,
            height: 18,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                )
              ],
            ),
            child: const Icon(
              Icons.font_download,
              size: 15,
            ),
          ),
          onTap: () {
            colorPickerDialog();
          }),
      const SizedBox(
        width: 5,
      ),
      const Icon(
        Icons.link,
        size: 20,
      ),
      const SizedBox(
        width: 5,
      ),
      const Icon(
        Icons.image,
        size: 20,
      ),
      const SizedBox(
        width: 5,
      ),
      const Icon(
        Icons.format_align_left,
        size: 20,
      ),
      const SizedBox(
        width: 5,
      ),
      const Icon(
        Icons.format_list_numbered,
        size: 20,
      ),
      const SizedBox(
        width: 5,
      ),
    ]);
  }
}
