// ignore: avoid_web_libraries_in_flutter

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/cadastro/cadastro_page.dart';
import 'package:untitled/commons/widgets/box_form_widgets.dart';
import 'package:untitled/commons/widgets/custom_button_widgets.dart';
import 'package:untitled/commons/widgets/custom_text_widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  get child => null;

  get title => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF539FCB),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  bottom: 33,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: SizedBox(
                      child: Image.asset(
                        'assets/compilter.png',
                        color: Colors.black,
                      ),
                      width: 174,
                      height: 148,
                    ),
                  ),
                  BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 8.0,
                      sigmaY: 8.0,
                    ),
                    child: SizedBox(
                      child: Image.asset('assets/compilter.png'),
                      height: 140,
                      width: 166,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding: EdgeInsets.only(
                    bottom: 33,
                  ),
                  child: BoxForm(
                      alertText: 'Credenciais Invalidas',
                      child: Column(
                        children: [
                          CustomText(
                            text: 'Email',
                            icon: Icon(Icons.person),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          CustomText(
                            text: 'Senha',
                            obscureText: true,
                            icon: Icon(Icons.lock),
                          ),
                        ],
                      ))),
              CustomButton(
                text: 'Entrar',
                onPressed: () {},
              ),
              SizedBox(
                height: 33.0,
              ),
              CustomButton(
                text: 'Cadastrar',
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => CadastroPage()));
                },
              ),
              Transform.translate(
                offset: Offset(0, 60),
                child: SizedBox(
                    child: Image.asset(
                  'assets/paisagem.png',
                  height: 383,
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
