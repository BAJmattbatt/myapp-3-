  import 'package:flutter/services.dart';
  import 'package:flutter/material.dart';
  import 'package:splash_screen_view/SplashScreenView.dart';
  import 'package:sizer/sizer.dart';
  
  
  
  
  import 'package:myapp/src/pages/entry_point/page.dart';
  import 'package:teta_cms/teta_cms.dart';

  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    TetaCMS.initialize(
      token: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImltaG9mbWF0dGhpZXVAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsInByb2plY3RzIjpbOTU1NzMsMTQxNTg4LDE0NTgwNCwxNDg0OTgsMTQxNTgxLDE0NTgwNSwxNDE2MTFdLCJpbWFnZSI6Imh0dHBzOi8vbGgzLmdvb2dsZXVzZXJjb250ZW50LmNvbS9hLS9BRmRadWNxMHZIam1kQlJkOXR1SFFfUGtVblg4eFRqaENiZVNXNnZrZWZIYj1zOTYtYyIsIm5hbWUiOiJNYXR0YmF0dCIsImVtaXR0ZXIiOiJUZXRhLUF1dGgiLCJpYXQiOjE2NTgyNTY2OTcsImV4cCI6NDgxNDAxNjY5N30.be98MEpoDNQsmFZkAOq6kHOkaSynBHdnFT-tuxYWGr8',
      prjId: 95573,
    );
    
    
    
    
    runApp(MyApp());
  }
  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Sizer(
        builder: (
          final context,
          final orientation,
          final deviceType,
        ) => MaterialApp(
          title: 'Principal App',
          home: SplashScreenView(
            navigateRoute: PageEntryPoint(),
            duration: 2200,
            imageSize: 80,
            imageSrc: 'assets/teta-app.png',
            text: '',
            textType: TextType.NormalText,
            textStyle: TextStyle(
              fontSize: 30.0,
            ),
            backgroundColor: Colors.black,
          ),
        ),
      );
    }
  }
  