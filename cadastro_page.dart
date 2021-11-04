import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/commons/widgets/box_form_widgets.dart';
import 'package:untitled/commons/widgets/custom_button_widgets.dart';
import 'package:untitled/commons/widgets/custom_text_widgets.dart';
import 'package:untitled/endereco/endereco_page.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
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
                child: Image.asset('assets/compilter.png'),
                width: 174,
                height: 148,
              ),
              SizedBox(
                height: 53,
              ),
              Row(
                children: [
                  Text(
                    'Cadastro',
                    style: GoogleFonts.ovo(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  Expanded(
                    child: SizedBox.shrink(),
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(
                    bottom: 33,
                  ),
                  child: BoxForm(
                      child: Column(
                    children: [
                      CustomText(
                        text: 'Nome',
                        icon: Icon(Icons.person),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      CustomText(
                        text: 'Email',
                        icon: Icon(Icons.email),
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
                text: 'Proximo',
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => EnderecoPage()));
                },
              ),
              SizedBox(
                height: 33.0,
              ),
              SizedBox(
                  child: Image.asset(
                'assets/paisagem.png',
                height: 383,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
