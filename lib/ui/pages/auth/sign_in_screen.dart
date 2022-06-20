import 'package:flutter/material.dart';

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
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/auth_background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(right: 500, bottom: 250),
                child: IconButton(
                  // TODO confirm the size of icon.arrow_back and chek out why its not working when its clicked
                  icon: const Icon(
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
              color: const Color(0xFFfb7305),
              child: Container(
                // FIXME: padding requirements
                padding: const EdgeInsets.fromLTRB(28, 25, 28, 35),
                decoration: const BoxDecoration(
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
                      child: SizedBox(
                        width: 319,
                        height: 30,
                        child: Row(
                          children: [
                            const Text(
                              'Sign in',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20),
                            ),
                            const SizedBox(
                              width: 211,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.cancel,
                                size: 28,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //TODO confirm space between widgets
                    const SizedBox(height: 12),
                    const Expanded(
                      child: SizedBox(
                        width: 319,
                        height: 60,
                        // margin: EdgeInsets.only(left: 11, right: marginEdgeInsetsRight),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 16),
                            hintText: 'Your email',
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            enabledBorder: OutlineInputBorder(
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
                    const SizedBox(
                      height: 12,
                    ),
                    const Expanded(
                      child: SizedBox(
                        width: 319,
                        height: 60,
                        // margin: EdgeInsets.only(left: 11, right: marginEdgeInsetsRight),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 16),
                            hintText: 'Your password',
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            enabledBorder: OutlineInputBorder(
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
                    const SizedBox(height: 0),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color(0xFFE67F1E),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Container(
                        width: 318,
                        height: 60,
                        decoration: const BoxDecoration(
                            color: Color(0xFFFEC54B),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
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
