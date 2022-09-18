import 'package:flutter/material.dart';

class SignScreenIconWidget extends StatelessWidget {
  final String text;
  const SignScreenIconWidget(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(
        height: 50,
      ),
      // Icon Area
      const Padding(
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            radius: 70,
            child: Icon(
              Icons.person,
              size: 120,
            ),
          )),
      Text(
        text,
        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      )
    ]);
  }
}

class SignScreenTextForm extends StatelessWidget {
  
  final String hintText;
  final TextInputType keyboardType;
  final Icon icon;
  Widget? suffixIcon;
  final bool obscureText;

  SignScreenTextForm(
      {required this.hintText,
      this.keyboardType = TextInputType.text,
      required this.icon,
      this.suffixIcon,
      this.obscureText = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        keyboardType: keyboardType,
        decoration:
            InputDecoration(
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50))
              ),
              prefixIcon: icon,
              suffixIcon: suffixIcon,
              hintText: hintText, 
            ),
        
        obscureText: obscureText,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}

class SignScreenButtonForm extends StatelessWidget {
  
  final String text;
  final void Function() onPressed;

  const SignScreenButtonForm({required this.text, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, 
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text, style: const TextStyle(fontSize: 25,),),
      ),
      style: ButtonStyle(
        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))
        ))
      ),
    );
  }
}