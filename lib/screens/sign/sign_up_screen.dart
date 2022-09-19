import 'package:flutter/material.dart';
import 'global_components.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  bool _enableNotif = false;
  bool _showedPassword = false;

  _SignUpPageState();

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
                const SignScreenIconWidget("S'inscrire"),

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
                        SignScreenTextForm(
                          hintText: 'Username',
                          icon: const Icon(Icons.person_add_alt_rounded),
                          keyboardType: TextInputType.text,
                        ),

                        // input email area
                        SignScreenTextForm(
                          hintText: 'Votre Email',
                          icon: const Icon(Icons.mail),
                          keyboardType: TextInputType.emailAddress,
                        ),

                        // input password area
                        SignScreenTextForm(
                            hintText: 'Mot de passe',
                            icon: const Icon(Icons.lock),
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
                          children: [
                            Checkbox(
                              value: _enableNotif,
                              onChanged: (value) => setState(() {
                                _enableNotif = value!;
                              }),
                            ),
                            const Text(
                              'Je souhaite recevoir les notifications par E-mail',
                              style: TextStyle(fontSize: 13),
                            )
                          ],
                        ),
                        Wrap(
                          children: [Row(
                            children: [
                              Checkbox(
                                value: _enableNotif,
                                onChanged: (value) => setState(() {
                                  _enableNotif = value!;
                                }),
                              ),
                              const Text(
                                "J'ai lue et j'accepte les conditions\n d'utilisation de l'application",
                                style: TextStyle(fontSize: 13),
                              )
                            ],
                          )],
                        ),

                        //space
                        const SizedBox(
                          height: 50,
                        ),
                        // boutons
                        // login button
                        SignScreenButtonForm(
                          text: "S'inscrire",
                          onPressed: () {},
                        ),

                        //space
                        const SizedBox(
                          height: 10,
                        ),
                        // sign-up TextButton
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Vous avez deja un compte?"),
                            TextButton(
                                onPressed: () {}, child: const Text('Connectez-Vous'))
                          ],
                        ),

                        //space
                        const SizedBox(
                          height: 30,
                        ),
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
