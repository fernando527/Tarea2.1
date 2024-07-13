import 'package:flutter/material.dart';

void main() => runApp(const pantalla_sesion());

class pantalla_sesion extends StatelessWidget {
  const pantalla_sesion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Correo Institucional',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(
                  'Bienvenido:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  '${ModalRoute.of(context)?.settings.arguments?.toString() ?? 'fj.murillo@unah.hn'}',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
                trailing: Icon(
                  Icons.supervised_user_circle,
                  size: 50,
                  color: Color.fromARGB(255, 0, 152, 246),
                ),
              ),
              Text(
                'Mas informacion de su cuenta',
                style: TextStyle(
                  fontSize: 13,
                  color: Color.fromARGB(255, 0, 152, 246),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Verificacion de privacidad',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Elige la configuracion de la privacidad indicada para ti con esta guia paso a paso\n',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
                trailing: Icon(
                  Icons.shield,
                  size: 50,
                  color: Color.fromARGB(255, 0, 152, 246),
                ),
              ),
              Text(
                'Realizar la verificaccion de privacidad',
                style: TextStyle(
                  fontSize: 13,
                  color: Color.fromARGB(255, 40, 158, 231),
                ),
              ),
              Divider(),
              Text(
                '¿Buscas otra informacion?\n',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  Text(
                    ' Buscar en la cuenta de google         ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.help,
                    color: Colors.white,
                  ),
                  Text(
                    ' Ver las opciones de ayuda               ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                  Text(
                    ' Enviar comentarios                          ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Divider(),
              ListTile(
                subtitle: Text(
                  'Solo tu puedes ver la configuracion. Tambien puedes revisar la configuracion de Map'
                  'la Busqueda o cualquier servicio de Google que uses con frecuencia. '
                  'Google protege la privacidad y la seguridad de tus datos',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
                trailing: Icon(
                  Icons.shield,
                  size: 40,
                  color: Color.fromARGB(255, 0, 152, 246),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    ' Mas informacion',
                    style: TextStyle(
                        fontSize: 13, color: Color.fromARGB(255, 40, 158, 231)),
                  ),
                  Icon(Icons.help, color: Color.fromARGB(255, 40, 158, 231)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
