import 'dart:html';

import 'package:flutter/material.dart';

final TextEditingController email_controle = TextEditingController();

class Pagina_Lista extends StatefulWidget {
  @override
  State<Pagina_Lista> createState() => _Pagina_ListaState();
}

class _Pagina_ListaState extends State<Pagina_Lista> {
  final TextEditingController mensagensControlador = TextEditingController();

  List<String> Mensagem = [];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text("Lista:",
                style: TextStyle(fontSize: 50),),
                
                
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: mensagensControlador,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Adicione uma tarefa",
                        hintText: "Digite aqui"),
                  ),
                ),
                SizedBox(width: 7),
                ElevatedButton(
                  onPressed: () {
                    String qualquercoisa = mensagensControlador.text;
                    setState(() {
                      Mensagem.add(qualquercoisa);
                    });
                    mensagensControlador.clear();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 208, 0, 250),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 30,
                  ),
                ),
                
              ],
            ),
            
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 320,
              child: ListView(
                shrinkWrap: true,
                children: [
                  for (String mensagem in Mensagem)
                    ListTile(
                      title: Text(mensagem),
                      subtitle: Text("5:00h"),
                      leading: Icon(
                        Icons.hotel_rounded,
                        size: 30,color: Colors.blue,
                      ),
                      onTap: () {
                        print("Mensagem: $Mensagem");
                      },
                    ),
                    ListTile(
                      title: Text("Café da Manhã"),
                      subtitle: Text("6:00h - 6:20h"),
                      leading: Icon(
                        Icons.free_breakfast,color: Colors.brown,
                      ),
                    ),
                    ListTile(
                      title: Text("Estudar com a amiga :)"),
                      subtitle: Text("7:15h - 12:30h"),
                      leading: Icon(
                        Icons.safety_divider_sharp,color: Colors.cyan,
                        size: 30,
                      ),
                    ),
                    ListTile(
                      title: Text("Almoçar"),
                      subtitle: Text("13:15h - 13:30h"),
                      leading: Icon(
                        Icons.flatware_sharp,color: Colors.green,
                      ),
                    ),
                    ListTile(
                      title: Text("Pré-Vestibular"),
                      subtitle: Text("13:30h - 18:15h"),
                      leading: Icon(
                        Icons.auto_stories_rounded,color: Colors.red,
                      ),
                    ),
                    ListTile(
                      title: Text("Taekwondo"),
                      subtitle: Text("18:30h - 19:30h"),
                      leading: Icon(
                        Icons.fitness_center_sharp,color: Color.fromARGB(251, 9, 80, 245),
                      ),
                    ),
                    ListTile(
                      title: Text("Jantar"),
                      subtitle: Text("19:50h - 20:30h"),
                      leading: Icon(
                        Icons.flatware_sharp,color: Colors.orange,
                      ),
                    ),
                    ListTile(
                      title: Text("Estudar Japonês"),
                      subtitle: Text("20:35h - 22:00h"),
                      leading: Icon(
                        Icons.g_translate_sharp,color: Color.fromARGB(255, 100, 128, 255),
                      ),
                    ),
                ],
              ),
              
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                    labelText: "Limpar tarrefas adicionadas recentemente",
                  ),
                )),
                SizedBox(width: 7),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Mensagem.clear();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 250, 0, 229),
                  ),
                  child: Text("Limpar"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
