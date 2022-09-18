import 'package:flutter/material.dart';
import 'global_components.dart';

class ForgotPasswdordPage extends StatefulWidget {
  const ForgotPasswdordPage({super.key});

  @override
  State<ForgotPasswdordPage> createState() => _ForgotPasswdordPageState();
}

class _ForgotPasswdordPageState extends State<ForgotPasswdordPage> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  bool _enableNotif = false;
  bool _showedPassword = false;

  _ForgotPasswdordPageState();

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
                const SignScreenIconWidget("Mot de passe oublié?"),

                const SizedBox(
                  height: 50,
                ),
                // form section
                Container(
                  width: (MediaQuery.of(context).size.width * 85) / 100,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [

                        // input email area
                        SignScreenTextForm(
                          hintText: 'Votre Email',
                          icon: const Icon(Icons.mail),
                          keyboardType: TextInputType.emailAddress,
                        ),

                        //space
                        const SizedBox(
                          height: 50,
                        ),
                        // boutons
                        // login button
                        SignScreenButtonForm(
                          text: "Soumettre votre Email",
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
                            const Text("Vous receverez un email \ndans quelques instants. "),
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
