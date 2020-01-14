import 'package:flutter/material.dart';

class TabThree extends StatefulWidget {
  _TabThreeState createState() => _TabThreeState();
}

class _TabThreeState extends State<TabThree> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _aboutController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

//  ShapeDecoration _decoration = ShapeDecoration(
//    shape: BeveledRectangleBorder(
//      side: BorderSide(color: Colors.blueAccent, width: 0.5),
//      borderRadius: BorderRadius.all(Radius.circular(7.0)),
//    ),
//  );
  ShapeDecoration _decoration = ShapeDecoration(
    shape: StadiumBorder(
      side: BorderSide(color: Colors.blueAccent, width: 0.5),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        children: <Widget>[
          const SizedBox(height: 80.0),
          const SizedBox(height: 120.0),
          Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Container(
//                  decoration: _decoration,
                  child: TextFormField(
                    controller: _usernameController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                      hintText: 'Email',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    autocorrect: true,
                    autovalidate: true,
                  ),
                ),
                const SizedBox(height: 12.0),
                Container(
//                  decoration: _decoration,
                  child: TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                      hintText: 'Password',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    autocorrect: true,
                    autovalidate: true,
                  ),
                ),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('Register'),
                          shape: const StadiumBorder(),
                          onPressed: () {},
                        ),
                        FlatButton(
                          child: const Text('Forgot Password?'),
                          shape: const StadiumBorder(),
                          onPressed: () {},
                        ),
                        RaisedButton(
                          color: Colors.blue,
                          child: const Text('Sign In'),
                          elevation: 4.0,
                          shape: StadiumBorder(),
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              Scaffold.of(context).showSnackBar(
                                  SnackBar(content: Text('Processing Data')));
                            }
                          },
                        ),
                      ],
                    ),
                  ],
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
