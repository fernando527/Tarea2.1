import 'package:flutter/material.dart';
import 'package:inicio_de_sesion/inputs.dart';
import 'package:inicio_de_sesion/pantalla_sesion.dart';

//el correo es: fj.murillo@unah.hn
//la contraseña es: 20222001186

void main() => runApp(pantalla_inicio());

class pantalla_inicio extends StatelessWidget {
  pantalla_inicio({super.key});

  final TextEditingController correoController = TextEditingController();
  final TextEditingController contraseniaController = TextEditingController();

  // equivalente al controller del formulario
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String correo = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            'Iniciar Sesión',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const Icon(
                  Icons.email_outlined,
                  size: 100.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                const SizedBox(height: 48),
                CuntomInput(
                  controller: correoController,
                  label: 'Correo',
                  icon: Icons.email,
                  maxLength: 50,
                  //validacion de datos del correo
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'El correo es obligatorio';
                    }

                    if (!value.contains('@') || !value.contains('.hn')) {
                      return 'El correo no es válido';
                    }
                    if (value != 'fj.murillo@unah.hn') {
                      return 'Correo Incorrecto';
                    }

                    return null;
                  },
                ),
                const SizedBox(height: 28),
                CuntomInput(
                  controller: contraseniaController,
                  label: 'Contraseña',
                  icon: Icons.lock,
                  obscureText: true,
                  maxLength: 30,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (value) {
                    //validacion de contraseña
                    if (value == null || value.isEmpty) {
                      return 'La contraseña es obligatoria';
                    }
                    if (value != '20222001186') {
                      return 'La contraseña es incorrecta';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 46),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {
                        correo = correoController.text;

                        if (!formKey.currentState!.validate()) {
                          return;
                        }

                        final data = {
                          'correo': correoController.text,
                          'contraseniaa': contraseniaController.text,
                        };

                        print(data);

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => pantalla_sesion()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        side: MaterialStateProperty.all<BorderSide>(
                          BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                      child: Text('Iniciar Sesión',
                          style: TextStyle(color: Colors.grey, fontSize: 20))),
                ),
                const SizedBox(height: 26),

                //boton para registrarse

                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () => Navigator.of(context)
                          .pushReplacementNamed('pantalla2'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        side: MaterialStateProperty.all<BorderSide>(
                          BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                      child: Text('Registrarse',
                          style: TextStyle(color: Colors.grey, fontSize: 20))),
                ),
                const SizedBox(height: 10),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.help,
                        size: 50,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.account_circle_sharp,
                        size: 50,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.add_call,
                        size: 50,
                        color: Colors.white,
                      ),
                    ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
