import 'package:flutter/material.dart';

void main() {
  runApp(const FormSignUp());
}

class FormSignUp extends StatelessWidget {
  const FormSignUp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF533680),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 144.0,
          title: Text(
            'Bem - Vindo ao Lógus',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 32.0),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Spacer(),
            ContainerTextFields(),
            Spacer(),
            BtnSignUp(
              text: 'Cadastrar',
              onPressed: () {
                // Ação a ser executada quando o botão for pressionado
                print('Botão de Cadastro pressionado!');
              },
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class ContainerTextFields extends StatelessWidget {
  const ContainerTextFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.email),
              labelText: 'E-mail ou Matrícula',
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey[400]!,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: Colors.grey[400]!,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 156, 131, 193)!,
                ),
              ),
            ),
          ),
          SizedBox(height: 15.0),
          TextField(
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.lock),
              labelText: 'Senha',
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey[400]!,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: Colors.grey[400]!,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 156, 131, 193)!,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BtnSignUp extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const BtnSignUp({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0), // Margem de 20.0 na esquerda e direita
      child: FilledButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18.0
            ),
   // Definindo o tamanho da fonte como 20.0
        ),
        style: FilledButton.styleFrom(
          minimumSize: Size(double.infinity, 50), // Largura máxima e altura 50
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0), // Arredondamento de 8.0
          ),
        ),
      ),
    );
  }
}
