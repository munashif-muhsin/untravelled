import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  Widget _buildEmailField() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white10,
          style: BorderStyle.solid,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: 'EMAIL',
              hintStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.8,
                  fontSize: 12),
              border: OutlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordRow() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white10,
          style: BorderStyle.solid,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'PASSWORD',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.8,
                      fontSize: 12,
                    ),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  'FORGOT?',
                  style: TextStyle(
                    color: Colors.white30,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.8,
                    fontSize: 12,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoginBtn() {
    return FlatButton(
      onPressed: () {},
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xFFB79B7E),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          'LOG IN',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            letterSpacing: 0.9,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  Widget _buildORrow() {
    return Row(
      children: <Widget>[
        Container(
          color: Colors.white12,
          margin: EdgeInsets.symmetric(horizontal: 15),
          height: 1,
          width: (MediaQuery.of(context).size.width - 90) / 2,
        ),
        Container(
          width: 30,
          alignment: Alignment.center,
          child: Text(
            'OR',
            style: TextStyle(
                color: Colors.white70, fontSize: 10, letterSpacing: 1),
          ),
        ),
        Container(
          color: Colors.white12,
          margin: EdgeInsets.symmetric(horizontal: 15),
          height: 1,
          width: (MediaQuery.of(context).size.width - 90) / 2,
        ),
      ],
    );
  }

  Widget _buildFBLoginBtn() {
    return FlatButton(
      onPressed: () {},
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white24,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(FontAwesomeIcons.facebookSquare, color: Colors.white),
            SizedBox(width: 10),
            Text(
              'LOG IN WITH FACEBOOK',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                letterSpacing: 0.9,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimatedSignUpView() {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      height: 140,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35), topRight: Radius.circular(35))),
      child: Container(
        padding: EdgeInsets.only(top: 30.0, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'New user?',
              style: TextStyle(
                  color: Color(0xFFB79B7E),
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Sign up',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 34),
                ),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.arrowCircleRight,
                    color: Color(0xFFB79B7E),
                  ),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          child: Stack(
            fit: StackFit.loose,
            children: <Widget>[
              Positioned(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/background.png',
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAndSlideIn(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 34,
                        ),
                      ),
                    ),
                    $this: this,
                    delay: Duration(milliseconds: 0),
                  ),
                  FadeAndSlideIn(
                    $this: this,
                    child: _buildEmailField(),
                    delay: Duration(milliseconds: 500),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  FadeAndSlideIn(
                    $this: this,
                    child: _buildPasswordRow(),
                    delay: Duration(milliseconds: 500),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAndSlideIn(
                    $this: this,
                    child: Column(
                      children: <Widget>[
                        _buildLoginBtn(),
                        SizedBox(height: 20),
                        _buildORrow(),
                        SizedBox(height: 20),
                        _buildFBLoginBtn(),
                      ],
                    ),
                    delay: Duration(milliseconds: 800),
                  ),
                  SizedBox(height: 30),
                  _buildAnimatedSignUpView(),
                ],
              ),
            ],
          ),
        ));
  }
}

class FadeAndSlideIn extends StatelessWidget {
  final Widget child;
  final $this;
  final Duration delay;

  FadeAndSlideIn({this.child, this.$this, this.delay});

  @override
  Widget build(BuildContext context) {
    AnimationController _animationController = AnimationController(
        vsync: $this, duration: Duration(milliseconds: 500));
    Animation _fadeAnimation =
        CurvedAnimation(parent: _animationController, curve: Curves.easeOut);
    Animation _offsetAnimation =
        Tween<Offset>(begin: Offset(0, 0.5), end: Offset.zero)
            .animate(_animationController);
    Future.delayed(delay).then((_) {
_animationController.forward();
    });

    return SlideTransition(
      position: _offsetAnimation,
      child: FadeTransition(opacity: _fadeAnimation, child: child),
    );
  }
}
