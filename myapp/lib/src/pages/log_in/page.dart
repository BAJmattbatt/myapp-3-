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

class PageLogIn extends StatefulWidget {
  const PageLogIn({
    Key? key,
  }) : super(key: key);

  @override
  _StateLogIn createState() => _StateLogIn();
}

class _StateLogIn extends State<PageLogIn> {
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
        'name': "LogIn",
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
                      Navigator.of(context, rootNavigator: true).pop(null);
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
                      top: 50,
                    ),
                    child: Text(
                      r'''Welcome Back''',
                      style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                          color: Color(0xFF110606).withOpacity(1),
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
                    padding: EdgeInsets.zero,
                    child: Text(
                      r'''Please Log In With your IDs''',
                      style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                          color: Color(0xFF000000).withOpacity(1),
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 70,
                  ),
                  child: Text(
                    r'''ID or e-mail adress''',
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
                    padding: EdgeInsets.zero,
                    child: Container(
                      margin: const EdgeInsets.only(
                        left: 16,
                        top: 8,
                        right: 16,
                        bottom: 8,
                      ),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color(0xFFD3D3D3).withOpacity(1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
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
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.transparent, width: 1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.transparent, width: 1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          hintText: r'''Enter your id or e-mail adress''',
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
                        autocorrect: false,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 10,
                  ),
                  child: Text(
                    r'''Password''',
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
                    padding: EdgeInsets.zero,
                    child: Container(
                      margin: const EdgeInsets.only(
                        left: 16,
                        top: 8,
                        right: 16,
                        bottom: 8,
                      ),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color(0xFFD3D3D3).withOpacity(1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
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
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.transparent, width: 1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.transparent, width: 1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          hintText: r'''Enter your password''',
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
                        obscureText: true,
                        showCursor: true,
                        autocorrect: false,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 75,
                      top: 10,
                      right: 75,
                      bottom: 10,
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
                      onLongPress: () async {},
                      child: Container(
                          width: double.maxFinite,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Color(0xFF000000).withOpacity(1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                              bottomLeft: Radius.circular(16),
                            ),
                            border: null,
                          ),
                          child: Center(
                            child: Text(
                              '''Log In ''',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xFFFFFFFF).withOpacity(1),
                                  fontWeight: FontWeight.w400,
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
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                    ),
                    child: Text(
                      r'''Or Log In With 3rd Party Services''',
                      style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                          color: Color(0xFF000000).withOpacity(1),
                          fontWeight: FontWeight.w500,
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
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      top: 15,
                      right: 25,
                    ),
                    child: SizedBox(
                      width: double.maxFinite,
                      height: 42,
                      child: AppleAuthButton(
                        onPressed: () async {},
                        onLongPress: () async {},
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      top: 10,
                      right: 25,
                    ),
                    child: SizedBox(
                      width: double.maxFinite,
                      height: 42,
                      child: GoogleAuthButton(
                        onPressed: () async {},
                        onLongPress: () async {},
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      top: 10,
                      right: 25,
                    ),
                    child: SizedBox(
                      width: double.maxFinite,
                      height: 42,
                      child: GithubAuthButton(
                        onPressed: () async {},
                        onLongPress: () async {},
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 75,
                    ),
                    child: Text(
                      r'''© 2022 | Mattbatt Industries''',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xFF000000).withOpacity(1),
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.ltr,
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
