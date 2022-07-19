import 'package:flutter/material.dart';
import 'package:myapp/src/pages/index.dart';
import 'package:collection/collection.dart';
import 'package:myapp/src/components/index.dart';
import 'package:myapp/auth/auth_state.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:teta_cms/teta_cms.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PageContactSupport extends StatefulWidget {
  const PageContactSupport({
    Key? key,
  }) : super(key: key);

  @override
  _StateContactSupport createState() => _StateContactSupport();
}

class _StateContactSupport extends State<PageContactSupport> {
  var datasets = <String, dynamic>{};
  int index = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    TetaCMS.instance.analytics.insertEvent(
      TetaAnalyticsType.usage,
      'App usage: view page',
      <String, dynamic>{
        'name': "ContactSupport",
      },
      isUserIdPreferableIfExists: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF).withOpacity(1),
              border: Border(
                left: BorderSide(
                    width: 0, color: Color(0xFF000000).withOpacity(1)),
                top: BorderSide(
                    width: 0, color: Color(0xFF000000).withOpacity(1)),
                right: BorderSide(
                    width: 0, color: Color(0xFF000000).withOpacity(1)),
                bottom: BorderSide(
                    width: 0, color: Color(0xFF000000).withOpacity(1)),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 17,
                    top: 24,
                  ),
                  child: GestureDetector(
                    onTap: () async {
                      await Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageHome(),
                        ),
                      );
                    },
                    onDoubleTap: () async {},
                    onLongPress: () async {},
                    child: Icon(
                      MdiIcons.fromString('keyboard-backspace'),
                      size: 35,
                      color: Color(0xFF000000).withOpacity(1),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                    ),
                    child: Text(
                      r'''Contact Support ''',
                      style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                          color: Color(0xFF000000).withOpacity(1),
                          fontWeight: FontWeight.w900,
                          fontSize: 40,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 10,
                      right: 10,
                    ),
                    child: Text(
                      r'''We Are Sorry If you Have Problems With Our Application. Please Fill The follow Instructions To Report An Problem, So We Can Solve Him.''',
                      style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                          color: Color(0xFF000000).withOpacity(1),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 10,
                      ),
                      child: Text(
                        r'''E-mail adress''',
                        style: GoogleFonts.aBeeZee(
                          textStyle: TextStyle(
                            color: Color(0xFF000000).withOpacity(1),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                        ),
                        child: Container(
                          margin: const EdgeInsets.only(
                            left: 16,
                            top: 5,
                            right: 16,
                            bottom: 8,
                          ),
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: Color(0xFFD3D3D3).withOpacity(1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                              bottomLeft: Radius.circular(16),
                            ),
                            border: null,
                          ),
                          child: TextField(
                            onChanged: (String value) async {},
                            onSubmitted: (String value) async {},
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFD3D3D3).withOpacity(1),
                              counterStyle: TextStyle(
                                color: Color(0xFFD3D3D3).withOpacity(1),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                  bottomLeft: Radius.circular(16),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                  bottomLeft: Radius.circular(16),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                  bottomLeft: Radius.circular(16),
                                ),
                              ),
                              hintText: r'''Enter your E-mail Adress''',
                              contentPadding: const EdgeInsets.only(
                                left: 16,
                              ),
                            ),
                            style: GoogleFonts.aBeeZee(
                              textStyle: TextStyle(
                                color: Color(0xFFFFFFFF).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            maxLines: 1,
                            minLines: 1,
                            maxLength: null,
                            obscureText: false,
                            showCursor: true,
                            autocorrect: true,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text(
                        r'''Name''',
                        style: GoogleFonts.aBeeZee(
                          textStyle: TextStyle(
                            color: Color(0xFF000000).withOpacity(1),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                        ),
                        child: Container(
                          margin: const EdgeInsets.only(
                            left: 16,
                            top: 5,
                            right: 16,
                            bottom: 8,
                          ),
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: Color(0xFFD3D3D3).withOpacity(1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                              bottomLeft: Radius.circular(16),
                            ),
                            border: null,
                          ),
                          child: TextField(
                            onChanged: (String value) async {},
                            onSubmitted: (String value) async {},
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFD3D3D3).withOpacity(1),
                              counterStyle: TextStyle(
                                color: Color(0xFFD3D3D3).withOpacity(1),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                  bottomLeft: Radius.circular(16),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                  bottomLeft: Radius.circular(16),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                  bottomLeft: Radius.circular(16),
                                ),
                              ),
                              hintText: r'''Enter Your Name & Your Surname''',
                              contentPadding: const EdgeInsets.only(
                                left: 16,
                              ),
                            ),
                            style: GoogleFonts.aBeeZee(
                              textStyle: TextStyle(
                                color: Color(0xFFD3D3D3).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            maxLines: 1,
                            minLines: 1,
                            maxLength: null,
                            obscureText: false,
                            showCursor: true,
                            autocorrect: false,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text(
                        r'''Type Of Problem''',
                        style: GoogleFonts.aBeeZee(
                          textStyle: TextStyle(
                            color: Color(0xFF000000).withOpacity(1),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                        ),
                        child: Container(
                          margin: const EdgeInsets.only(
                            left: 16,
                            top: 5,
                            right: 16,
                            bottom: 8,
                          ),
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: Color(0xFFD3D3D3).withOpacity(1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                              bottomLeft: Radius.circular(16),
                            ),
                            border: null,
                          ),
                          child: TextField(
                            onChanged: (String value) async {},
                            onSubmitted: (String value) async {},
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFD3D3D3).withOpacity(1),
                              counterStyle: TextStyle(
                                color: Color(0xFFD3D3D3).withOpacity(1),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                  bottomLeft: Radius.circular(16),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                  bottomLeft: Radius.circular(16),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                  bottomLeft: Radius.circular(16),
                                ),
                              ),
                              hintText:
                                  r'''Enter The Type Of Problem ( ex. Bug )''',
                              contentPadding: const EdgeInsets.only(
                                left: 16,
                              ),
                            ),
                            style: GoogleFonts.aBeeZee(
                              textStyle: TextStyle(
                                color: Color(0xFFFFFFFF).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            maxLines: 1,
                            minLines: 1,
                            maxLength: null,
                            obscureText: false,
                            showCursor: true,
                            autocorrect: true,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text(
                        r'''Explain Your Problem''',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFF000000).withOpacity(1),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                        ),
                        child: Container(
                          margin: const EdgeInsets.only(
                            left: 16,
                            top: 5,
                            right: 16,
                            bottom: 8,
                          ),
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: Color(0xFFD3D3D3).withOpacity(1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                              bottomLeft: Radius.circular(16),
                            ),
                            border: null,
                          ),
                          child: TextField(
                            onChanged: (String value) async {},
                            onSubmitted: (String value) async {},
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFD3D3D3).withOpacity(1),
                              counterStyle: TextStyle(
                                color: Color(0xFFD3D3D3).withOpacity(1),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                  bottomLeft: Radius.circular(16),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                  bottomLeft: Radius.circular(16),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                  bottomLeft: Radius.circular(16),
                                ),
                              ),
                              hintText:
                                  r'''Please Explain Your Problem With  Maximum Of Details''',
                              contentPadding: const EdgeInsets.only(
                                left: 16,
                              ),
                            ),
                            style: GoogleFonts.aBeeZee(
                              textStyle: TextStyle(
                                color: Color(0xFFFFFFFF).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            maxLines: 1,
                            minLines: 1,
                            maxLength: null,
                            obscureText: false,
                            showCursor: true,
                            autocorrect: true,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                  ),
                  child: Checkbox(
                    value: false,
                    onChanged: (bool? value) async {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                    right: 20,
                  ),
                  child: Text(
                    r'''I certify that my postponement is legitimate, and that I will be subject to sanctions if I do not ''',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xFF000000).withOpacity(1),
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    textAlign: TextAlign.left,
                    textDirection: TextDirection.ltr,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      top: 40,
                      right: 25,
                    ),
                    child: GestureDetector(
                      onTap: () async {
                        await Future<void>.delayed(Duration(milliseconds: 100));
                        if (await canLaunchUrlString(
                            '''https://youtu.be/dQw4w9WgXcQ''')) {
                          await launchUrlString(
                            '''https://youtu.be/dQw4w9WgXcQ''',
                            mode: LaunchMode.inAppWebView,
                          );
                        }
                      },
                      onLongPress: () async {},
                      child: Container(
                          width: double.maxFinite,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Color(0xFF000000).withOpacity(1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                            ),
                            border: null,
                          ),
                          child: Center(
                            child: Text(
                              '''Send Report''',
                              style: GoogleFonts.aBeeZee(
                                textStyle: TextStyle(
                                  color: Color(0xFFFFFFFF).withOpacity(1),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.center,
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
