import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/splash/styles/colors/colors_views.dart';

import '../models/register_service.dart';

class Registro extends StatefulWidget {
  const Registro({Key? key}) : super(key: key);

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  bool mostrar = true;
  bool ver = false;
  String? fullname = '';
  String? email = '';
  String? password = '';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: ColorsSelect.paginatorNext),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Regístrate'),
        iconTheme: const IconThemeData(color: ColorsSelect.paginatorNext),
        actions: [
          Container(
            padding: const EdgeInsets.only(left: 90),
            height: 50,
            width: 150,
            child: Image.asset('assets/images/splash.png'),
          )
        ],
        backgroundColor: ColorsSelect.txtBoHe,
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end, 
            children: [
            Container(
              margin: const EdgeInsets.only(bottom: 30, top: 40,right: 50, left: 25),
              child: const Text(
                'Crea una cuenta para empezar a usar la app ',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 18, color: ColorsSelect.txtBoSubHe,fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              margin: const EdgeInsets.only(right: 310),
              child: const Text(
                'Nombre',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20, left: 20),
              child: TextField(
                textAlign: TextAlign.left,
                style: const TextStyle(fontSize: 18),
                autofocus: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.black, width: 1)),
                  hintText: 'Nombre completo',
                ),
                onChanged: (text) {
                  fullname = text;
                },
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              margin: const EdgeInsets.only(right: 250),
              child: const Text(
                'Correo electrónico',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20, left: 20),
              child: TextField(
                textAlign: TextAlign.left,
                style: const TextStyle(fontSize: 18),
                autofocus: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.black, width: 1)),
                  hintText: 'Dirección de correo',
                ),
                onChanged: (text) {
                  email = text;
                },
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              margin: const EdgeInsets.only(right: 290),
              child: const Text(
                'Contraseña',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20, left: 20),
              child: TextField(
                obscureText: mostrar,
                textAlign: TextAlign.left,
                style: const TextStyle(fontSize: 18),
                autofocus: true,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon:
                        Icon(mostrar ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        mostrar = !mostrar;
                      });
                    },
                  ),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.black, width: 1)),
                  hintText: 'Contraseña',
                ),
                onChanged: (text) {
                  password = text;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 30, top: 15),
              margin: const EdgeInsets.only(right: 30),
              child: const Text(
                  'La contraseña tiene que tener caracteres numéricos y símbolos con un mínimo de 6 caracteres',
                  style:
                      TextStyle(fontSize: 14, color: ColorsSelect.txtBoSubHe)),
            ),
            Container(
              padding: const EdgeInsets.only(top: 18, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: ver,
                    onChanged: (check) {
                      setState(() {
                        ver = check!;
                      });
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  Container(
                    // alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(0),
                    child: const Center(
                        child: Text.rich(TextSpan(
                            text: 'Al registrarme acepto los\n',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                            children: <TextSpan>[
                          TextSpan(
                            text: 'Términos y condiciones',
                            style: TextStyle(
                              fontSize: 15,
                              color: ColorsSelect.paginatorNext,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                              text: ' y la ',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Política de privacidad',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: ColorsSelect.paginatorNext,
                                      decoration: TextDecoration.underline),
                                )
                              ])
                        ]))),
                  ),
                  
                ],
              ),
            ),
            Center(
              child: Container(
                  padding: const EdgeInsets.only(top: 60),
                  child: SizedBox(
                    width: size.width - 70,
                    height: 50,
                    child: ElevatedButton(
                        child: const Text(
                          'Crear Cuenta',
                          style: TextStyle(fontSize: 18),
                        ),
                        onPressed: () {
                          if (fullname == '' && email == '' && password == '') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              duration: Duration(milliseconds: 1000),
                              content: Text('Rellene los campos'),
                            ),
                          );
                        } else {
                          register(fullname!, email!, password!).then((value) {
                            print(value);
                            if (value) {
                              Navigator.pushReplacementNamed(context, 'login');
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  duration: Duration(milliseconds: 1000),
                                  content: Text('Usuario creado'),
                                  
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  duration: Duration(milliseconds: 1000),
                                  content: Text('No se ha podido registrar'),
                                ),
                              );
                            }
                          });
                        }
                        },
                        style: ElevatedButton.styleFrom(
                            primary: ColorsSelect.splash,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)))),
                  ),
                ),
            ),
              Container(
                  width: 300,
                  margin: const EdgeInsets.only(top: 0, left: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      const Text('¿Ya tienes una cuenta?',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
     
                      TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context, 'login');
                        },
                        child: const Text(
                          'Iniciar sesión',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: ColorsSelect.paginatorNext,
                          ),
                        ),
                      )
                    ],
                  ),
                )
          ]),
        ),
      ),
    );
  }
}
