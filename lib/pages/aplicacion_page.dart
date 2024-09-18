import 'package:flutter/material.dart';

class AplicacionPage extends StatefulWidget {
  const AplicacionPage({super.key});

  @override
  State<AplicacionPage> createState() => _AplicacionPageState();
}

class _AplicacionPageState extends State<AplicacionPage> {
  //AQUI VAN LAS VARIABLES
//comentario
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: Padding(
      // padding: const EdgeInsets.all(8.0),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/electronica.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Image.asset("assets/images/electronica.jpg"),
                /**const Image(
                    image: AssetImage('assets/images/Logo.png'),
                    //width: 150,
                    //height: 150,
                    ),*/

                const SizedBox(
                    height: 30.0,
                    width: 200.0,
                    child: Center(
                      child: Card(
                          child: const Text('PELIGRO RADIOACTIVO',
                            style: const TextStyle(fontSize: 13),
                        )
                      ),
                    )),
                TextFormField(
                  //controller: _name,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Digite su nombre",
                      prefixIcon: Icon(Icons.person)),
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  //controller: _email,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Digite su email",
                      helperText: "*Campo Obligatorio",
                      prefixIcon: Icon(Icons.email)),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage('assets/images/radioactivo.png'),
                      width: 80,
                      height: 80,
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    const Image(
                      image: AssetImage('assets/images/radioactivo.png'),
                      width: 80,
                      height: 80,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(82, 170, 94, 1.0),
        tooltip: 'Increment',
        onPressed: () {},
        child: const Icon(Icons.navigation, color: Colors.white, size: 33),
      ),
    );
  }
}