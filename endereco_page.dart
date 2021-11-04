import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/commons/widgets/box_form_widgets.dart';
import 'package:untitled/commons/widgets/custom_button_widgets.dart';
import 'package:untitled/commons/widgets/custom_text_widgets.dart';

TextEditingController controllerCep = TextEditingController();

class EnderecoPage extends StatefulWidget {
  const EnderecoPage({
    Key? key,
  }) : super(key: key);

  @override
  State<EnderecoPage> createState() => _EnderecoPageState();
}

class _EnderecoPageState extends State<EnderecoPage> {
  get child => null;

  get title => null;

  get children => null;

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
                  Text('Endereço',
                      style: GoogleFonts.ovo(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 30,
                      )),
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(
                    bottom: 33,
                  ),
                  child: BoxForm(
                      child: Column(
                    children: [
                      Row(children: [
                        SizedBox(
                          height: 8,
                        ),
                        Expanded(
                          child: CustomText(
                            text: 'CEP',
                            controller: controllerCep,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                          width: 150,
                        ),
                      ]),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: CustomText(
                              text: 'Rua',
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            flex: 1,
                            child: CustomText(
                              text: 'Num',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: CustomText(
                              text: 'Bairro',
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            flex: 1,
                            child: CustomText(
                              text: 'Complemento',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomText(
                              text: 'Cidade',
                              obscureText: true,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                            width: 70,
                          ),
                        ],
                      ),
                    ],
                  ))),
              SizedBox(
                height: 10,
              ),
              CustomButton(
                text: 'Finalizar',
                onPressed: () {
                  printOntap();
                },
              ),
              SizedBox(
                height: 15.0,
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

printOntap() {
  print(controllerCep.text);
}
