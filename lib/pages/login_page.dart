import 'package:app_mensajes/widgets/boton_azul.dart';
import 'package:app_mensajes/widgets/custom_input.dart';
import 'package:app_mensajes/widgets/labels.dart';
import 'package:app_mensajes/widgets/logo.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF2F2F2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.94,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Logo(
                    titulo: "Messenger",
                  ),
                  Form(),
                  Labels(
                    ruta: 'register',
                    titulo: 'No tienes cuenta?',
                    subTitulo: 'Crea una ahora!',
                  ),
                  Text(
                    'Términos y condiciones de uso',
                    style: TextStyle(fontWeight: FontWeight.w200),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class Form extends StatefulWidget {
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.email_outlined,
            placeholder: "Correo",
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomInput(
            icon: Icons.lock,
            placeholder: "Contraseña",
            textController: passCtrl,
            isPassword: true,
          ),
          BotonAzul(
            text: "Ingrese",
            onPressed: () {
              print(emailCtrl.text);
              print(passCtrl.text);
            },
          )
        ],
      ),
    );
  }
}
