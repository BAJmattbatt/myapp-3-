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

class PageCasierA1 extends StatefulWidget {
  const PageCasierA1({
    Key? key,
  }) : super(key: key);

  @override
  _StateCasierA1 createState() => _StateCasierA1();
}

class _StateCasierA1 extends State<PageCasierA1> {
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
        'name': "CasierA1",
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
                      top: 50,
                      bottom: 60,
                    ),
                    child: Text(
                      r'''Casier A21''',
                      style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                          color: Color(0xFF000000).withOpacity(1),
                          fontWeight: FontWeight.w900,
                          fontSize: 40,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                ),
                GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 2,
                    crossAxisCount: 2,
                    crossAxisSpacing: 2,
                    childAspectRatio: 1,
                  ),
                  shrinkWrap: true,
                  primary: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 7,
                        top: 10,
                        right: 5,
                        bottom: 5,
                      ),
                      child: Container(
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Color(0xFFD3D3D3).withOpacity(1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          ),
                          border: Border(
                            left: BorderSide(
                                width: 0,
                                color: Color(0xFF000000).withOpacity(1)),
                            top: BorderSide(
                                width: 0,
                                color: Color(0xFF000000).withOpacity(1)),
                            right: BorderSide(
                                width: 0,
                                color: Color(0xFF000000).withOpacity(1)),
                            bottom: BorderSide(
                                width: 0,
                                color: Color(0xFF000000).withOpacity(1)),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                ),
                                child: Text(
                                  r'''In Use ''',
                                  style: GoogleFonts.aBeeZee(
                                    textStyle: TextStyle(
                                      color: Color(0xFF000000).withOpacity(1),
                                      fontWeight: FontWeight.w900,
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
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 50,
                                ),
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Color(0xFF26BB3E).withOpacity(1)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        top: 10,
                        right: 7,
                        bottom: 5,
                      ),
                      child: Container(
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Color(0xFFD3D3D3).withOpacity(1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          ),
                          border: Border(
                            left: BorderSide(
                                width: 0,
                                color: Color(0xFF000000).withOpacity(1)),
                            top: BorderSide(
                                width: 0,
                                color: Color(0xFF000000).withOpacity(1)),
                            right: BorderSide(
                                width: 0,
                                color: Color(0xFF000000).withOpacity(1)),
                            bottom: BorderSide(
                                width: 0,
                                color: Color(0xFF000000).withOpacity(1)),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                ),
                                child: Text(
                                  r'''In Use Since''',
                                  style: GoogleFonts.aBeeZee(
                                    textStyle: TextStyle(
                                      color: Color(0xFF000000).withOpacity(1),
                                      fontWeight: FontWeight.w900,
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
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 50,
                                ),
                                child: Icon(
                                  MdiIcons.fromString('infinity'),
                                  size: 50,
                                  color: Color(0xFF000000).withOpacity(1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 7,
                        top: 10,
                        right: 5,
                        bottom: 5,
                      ),
                      child: Container(
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Color(0xFFD3D3D3).withOpacity(1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          ),
                          border: Border(
                            left: BorderSide(
                                width: 0,
                                color: Color(0xFF000000).withOpacity(1)),
                            top: BorderSide(
                                width: 0,
                                color: Color(0xFF000000).withOpacity(1)),
                            right: BorderSide(
                                width: 0,
                                color: Color(0xFF000000).withOpacity(1)),
                            bottom: BorderSide(
                                width: 0,
                                color: Color(0xFF000000).withOpacity(1)),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                ),
                                child: Text(
                                  r'''Something Soon''',
                                  style: GoogleFonts.aBeeZee(
                                    textStyle: TextStyle(
                                      color: Color(0xFF000000).withOpacity(1),
                                      fontWeight: FontWeight.w900,
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
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 50,
                                ),
                                child: Icon(
                                  MdiIcons.fromString('plus'),
                                  size: 24,
                                  color: Color(0xFF000000).withOpacity(1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        top: 10,
                        right: 7,
                        bottom: 5,
                      ),
                      child: Container(
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Color(0xFFD3D3D3).withOpacity(1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          ),
                          border: Border(
                            left: BorderSide(
                                width: 0,
                                color: Color(0xFF000000).withOpacity(1)),
                            top: BorderSide(
                                width: 0,
                                color: Color(0xFF000000).withOpacity(1)),
                            right: BorderSide(
                                width: 0,
                                color: Color(0xFF000000).withOpacity(1)),
                            bottom: BorderSide(
                                width: 0,
                                color: Color(0xFF000000).withOpacity(1)),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                ),
                                child: Text(
                                  r'''Something Soon''',
                                  style: GoogleFonts.aBeeZee(
                                    textStyle: TextStyle(
                                      color: Color(0xFF000000).withOpacity(1),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.left,
                                  textDirection: TextDirection.ltr,
                                ),
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 50,
                                ),
                                child: Icon(
                                  MdiIcons.fromString('plus'),
                                  size: 24,
                                  color: Color(0xFF000000).withOpacity(1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      top: 20,
                      right: 25,
                    ),
                    child: GestureDetector(
                      onTap: () async {},
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
                              '''Pause''',
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
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      top: 10,
                      right: 25,
                    ),
                    child: GestureDetector(
                      onTap: () async {
                        await Navigator.push<void>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PageContactSupport(),
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
                              '''Contact Support''',
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
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      top: 10,
                      right: 25,
                    ),
                    child: GestureDetector(
                      onTap: () async {},
                      onLongPress: () async {},
                      child: Container(
                          width: double.maxFinite,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Color(0xFFB02020).withOpacity(1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(19),
                              topRight: Radius.circular(19),
                              bottomRight: Radius.circular(19),
                              bottomLeft: Radius.circular(19),
                            ),
                            border: null,
                          ),
                          child: Center(
                            child: Text(
                              '''Cancel Subscription''',
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
