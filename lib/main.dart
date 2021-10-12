import 'package:flutter/material.dart';
import 'AR.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FullNamePage(),
    );
  }
}

class FullNamePage extends StatefulWidget {
  FullNamePage({Key? key}) : super(key: key);

  @override
  _FullNamePageState createState() => _FullNamePageState();
}

class _FullNamePageState extends State<FullNamePage> {
  // ============== //
  // COLORS SECTION //
  // ============== //
  Color wheatish = Color(0xFFF6F4D2);
  Color lightReddish = Color(0xFFDEBE9B);
  Color reddish = Color(0xFFA44A3F);

  // ====================== //
  // CUSTOM WIDGETS SECTION //
  // ====================== //
  TextField customInputField(final name, TextEditingController controller) {
    return TextField(
      cursorColor: wheatish,
      controller: controller,
      style: placeholderTextStyle(),
      decoration: InputDecoration(
        labelStyle: placeholderTextStyle(),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true,
        fillColor: lightReddish,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(5)),
        labelText: name,
      ),
    );
  }

  TextStyle placeholderTextStyle() {
    return TextStyle(decoration: TextDecoration.none, color: Color(0xFFF6F4D2));
  }

  TextStyle labelTextStyle() {
    return TextStyle(color: Color(0xFFA44A3F), fontWeight: FontWeight.w800);
  }

  // ======================== //
  // TEXT CONTROLLERS SECTION //
  // ======================== //
  TextEditingController firstNameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();

  submit() {
    return 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wheatish,
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Image.asset(
                "assets/images/phydimensions.png",
                height: 90,
                width: 136.0,
              ),
            ),

            // ================== //
            // FIRST NAME SECTION //
            // ================== //

            // First name Label
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                    child: Text(
                      "What's your First Name?",
                      style: labelTextStyle(),
                      textAlign: TextAlign.left,
                    )),
              ],
            ),

            // First Name Input
            Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                child: customInputField("First Name", firstNameController)),

            // =============== //
            // SURNAME SECTION //
            // =============== //

            // Surname Label
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                    child: Text(
                      "What's your Last Name?",
                      style: labelTextStyle(),
                      textAlign: TextAlign.left,
                    )),
              ],
            ),

            // Surname Input
            Padding(
                padding: EdgeInsets.all(15),
                child: customInputField("Surname", surnameController)),
            ElevatedButton(
              onPressed: () => {ARPage()},
              child: Text("Submit"),
              style: ElevatedButton.styleFrom(
                  primary: reddish,
                  textStyle: placeholderTextStyle(),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
            )
          ],
        ),
      ),
    );
  }
}
