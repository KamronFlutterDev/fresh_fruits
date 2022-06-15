import 'package:flutter/material.dart';
import 'package:fresh_fruits/constants/reusable_card.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/placeholder.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(right: 500, bottom: 250),
                child: IconButton(
                  // TODO confirm the size of icon.arrow_back and chek out why its not working when its clicked
                  icon: Icon(
                    Icons.arrow_back,
                    size: 40,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xFFfb7305),
              child: Container(
                // TODO Fix padding requirements
                padding: EdgeInsets.fromLTRB(28, 25, 28, 35),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Container(
                        width: 319,
                        height: 30,
                        child: Row(
                          children: [
                            Text(
                              'Sign in',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              width: 211,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.cancel,
                                size: 28,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //TODO confirm space between widgets
                    SizedBox(
                      height: 12,
                    ),
                    Expanded(
                      child: Container(
                        width: 319,
                        height: 60,
                        // margin: EdgeInsets.only(left: 11, right: marginEdgeInsetsRight),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 16),
                            hintText: 'Your email',
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFE67F1E),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Expanded(
                      child: Container(
                        width: 319,
                        height: 60,
                        // margin: EdgeInsets.only(left: 11, right: marginEdgeInsetsRight),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 16),
                            hintText: 'Your password',
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFE67F1E),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 0),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color(0xFFE67F1E),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Container(
                        width: 318,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color(0xFFFEC54B),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'SIGN IN',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                            //TODO figure it out textAlignment style is right or not
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
