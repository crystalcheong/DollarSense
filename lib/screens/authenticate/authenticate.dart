import 'package:flutter/widgets.dart';

import './sign_in.dart';
import './sign_up.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;

  void toggleView(){
    //Toggles boolean value regardless of T/F
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    //Toggle between forms
    if(showSignIn) return SignIn(toggleView: toggleView);
    else return SignUp(toggleView: toggleView);
  }
}