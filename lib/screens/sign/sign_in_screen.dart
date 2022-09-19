import 'package:flutter/material.dart';
import 'global_components.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  bool _rememberMe = false;
  bool _showedPassword = false;

  _SignInPageState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: <Widget>[
                const SignScreenIconWidget('Se Connecter'),

                const SizedBox(
                  height: 20,
                ),
                // form section
                Container(
                  width: (MediaQuery.of(context).size.width * 85) / 100,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        // input name area
                        //const SignScreenTextForm(
                        //  hintText: 'Votre Nom',
                        //  icon: Icon(Icons.person_add_alt_rounded),
                        //  keyboardType: TextInputType.text,
                        //),

                        // input email area
                        SignScreenTextForm(
                          hintText: 'Votre Email',
                          icon: Icon(Icons.mail),
                          keyboardType: TextInputType.emailAddress,
                        ),

                        // input password area
                        SignScreenTextForm(
                            hintText: 'Mot de passe',
                            icon: Icon(Icons.lock),
                            keyboardType: TextInputType.text,
                            obscureText: !_showedPassword,
                            suffixIcon: IconButton(
                                    onPressed: () => setState(() {
                                          _showedPassword = !_showedPassword;
                                        }),
                                    icon: Icon(_showedPassword? Icons.visibility : Icons.visibility_off))
                        ),

                        // Remember Me
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: _rememberMe,
                                  onChanged: (value) => setState(() {
                                    _rememberMe = value!;
                                  }),
                                ),
                                const Text(
                                  'Se Souvenir de moi',
                                  style: TextStyle(fontSize: 14),
                                )
                              ],
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Mot de passe oublié?',
                                style: TextStyle(fontSize: 13),
                              ),
                            )
                          ],
                        ),

                        //space
                        SizedBox(
                          height: 50,
                        ),
                        // boutons
                        // login button
                        SignScreenButtonForm(
                          text: 'Se Connecter',
                          onPressed: () {},
                        ),

                        //space
                        SizedBox(
                          height: 10,
                        ),
                        // sign-up TextButton
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Vous n'avez pas de compte? "),
                            TextButton(
                                onPressed: () {}, child: Text('Inscrivez-Vous'))
                          ],
                        ),

                        //space
                        SizedBox(
                          height: 30,
                        ),
                        // Social Media Login

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.facebook_rounded,
                                  color: Colors.blue,
                                ),
                                iconSize: 35),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.whatsapp_rounded,
                                  color: Colors.green,
                                ),
                                iconSize: 35),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.tiktok_rounded,
                                    color: Colors.black),
                                iconSize: 35),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
