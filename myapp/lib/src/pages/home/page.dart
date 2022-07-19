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

class PageHome extends StatefulWidget {
  const PageHome({
    Key? key,
  }) : super(key: key);

  @override
  _StateHome createState() => _StateHome();
}

class _StateHome extends State<PageHome> {
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
        'name': "Home",
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
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 75,
                    ),
                    child: Text(
                      r'''Welcome Back''',
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
                      top: 10,
                    ),
                    child: Text(
                      r'''You Have 3 Occupied charging Bins ''',
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
                    top: 10,
                  ),
                  child: Text(
                    r'''Yours Bins ''',
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
                        top: 10,
                        right: 30,
                        bottom: 10,
                      ),
                      child: Container(
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        width: 500,
                        height: 83,
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
                        child: TextButton(
                          onPressed: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageCasierA1(),
                              ),
                            );
                          },
                          onLongPress: () async {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 3,
                                ),
                                child: Text(
                                  r'''Casier A32 | In Use ''',
                                  style: GoogleFonts.aBeeZee(
                                    textStyle: TextStyle(
                                      color: Color(0xFF000000).withOpacity(1),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.left,
                                  textDirection: TextDirection.ltr,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 260,
                                ),
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Color(0xFF26BB3E).withOpacity(1)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 5,
                                ),
                                child: GestureDetector(
                                  onTap: () async {},
                                  onLongPress: () async {},
                                  child: Container(
                                      width: 60,
                                      height: 20,
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
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              color: Color(0xFFFFFFFF)
                                                  .withOpacity(1),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
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
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
                        top: 10,
                        right: 30,
                        bottom: 10,
                      ),
                      child: Container(
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        width: double.maxFinite,
                        height: 87,
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
                        child: TextButton(
                          onPressed: () async {},
                          onLongPress: () async {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 3,
                                ),
                                child: Text(
                                  r'''Casier C56 | Paused''',
                                  style: GoogleFonts.aBeeZee(
                                    textStyle: TextStyle(
                                      color: Color(0xFF000000).withOpacity(1),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.left,
                                  textDirection: TextDirection.ltr,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 260,
                                  top: 5,
                                ),
                                child: Icon(
                                  MdiIcons.fromString('pause'),
                                  size: 36,
                                  color: Color(0xFF000000).withOpacity(1),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 5,
                                ),
                                child: GestureDetector(
                                  onTap: () async {},
                                  onLongPress: () async {},
                                  child: Container(
                                      width: 60,
                                      height: 20,
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
                                          '''Resume ''',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              color: Color(0xFFFFFFFF)
                                                  .withOpacity(1),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
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
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
                        top: 10,
                        right: 30,
                        bottom: 10,
                      ),
                      child: Container(
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        width: double.maxFinite,
                        height: 95,
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
                        child: TextButton(
                          onPressed: () async {},
                          onLongPress: () async {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 5,
                                ),
                                child: Text(
                                  r'''Casier F12 | Problem ! Need Support''',
                                  style: GoogleFonts.aBeeZee(
                                    textStyle: TextStyle(
                                      color: Color(0xFF000000).withOpacity(1),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.left,
                                  textDirection: TextDirection.ltr,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 260,
                                  top: 5,
                                ),
                                child: Icon(
                                  MdiIcons.fromString('alert'),
                                  size: 38,
                                  color: Color(0xFF000000).withOpacity(1),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 5,
                                ),
                                child: GestureDetector(
                                  onTap: () async {},
                                  onLongPress: () async {},
                                  child: Container(
                                      width: 90,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF920909).withOpacity(1),
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
                                          '''Contact Support''',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              color: Color(0xFFFFFFFF)
                                                  .withOpacity(1),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
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
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
                        top: 10,
                        right: 30,
                      ),
                      child: Container(
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        width: double.maxFinite,
                        height: 87,
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
                        child: TextButton(
                          onPressed: () async {},
                          onLongPress: () async {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 3,
                                ),
                                child: Text(
                                  r'''Casier F7 | In Use''',
                                  style: GoogleFonts.aBeeZee(
                                    textStyle: TextStyle(
                                      color: Color(0xFF000000).withOpacity(1),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.left,
                                  textDirection: TextDirection.ltr,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 260,
                                ),
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Color(0xFF26BB3E).withOpacity(1)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 5,
                                ),
                                child: GestureDetector(
                                  onTap: () async {},
                                  onLongPress: () async {},
                                  child: Container(
                                      width: 60,
                                      height: 20,
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
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              color: Color(0xFFFFFFFF)
                                                  .withOpacity(1),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
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
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
                        top: 10,
                        right: 30,
                        bottom: 10,
                      ),
                      child: Container(
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        width: double.maxFinite,
                        height: 87,
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
                        child: TextButton(
                          onPressed: () async {},
                          onLongPress: () async {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 3,
                                ),
                                child: Text(
                                  r'''Casier G3 | In Use ''',
                                  style: GoogleFonts.aBeeZee(
                                    textStyle: TextStyle(
                                      color: Color(0xFF000000).withOpacity(1),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.left,
                                  textDirection: TextDirection.ltr,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 260,
                                ),
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Color(0xFF26BB3E).withOpacity(1)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 5,
                                ),
                                child: GestureDetector(
                                  onTap: () async {},
                                  onLongPress: () async {},
                                  child: Container(
                                      width: 60,
                                      height: 20,
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
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              color: Color(0xFFFFFFFF)
                                                  .withOpacity(1),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
                        right: 35,
                        bottom: 12,
                      ),
                      child: TextButton(
                        onPressed: () async {},
                        onLongPress: () async {},
                        child: Icon(
                          MdiIcons.fromString('home'),
                          size: 24,
                          color: Color(0xFF000000).withOpacity(1),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 35,
                        right: 35,
                        bottom: 12,
                      ),
                      child: TextButton(
                        onPressed: () async {},
                        onLongPress: () async {},
                        child: Icon(
                          MdiIcons.fromString('lightning-bolt'),
                          size: 24,
                          color: Color(0xFF000000).withOpacity(1),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
                        right: 35,
                        bottom: 12,
                      ),
                      child: TextButton(
                        onPressed: () async {},
                        onLongPress: () async {},
                        child: Icon(
                          MdiIcons.fromString('account'),
                          size: 24,
                          color: Color(0xFF000000).withOpacity(1),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
