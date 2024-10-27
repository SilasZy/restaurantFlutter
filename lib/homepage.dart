import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

// provavelmente colocar no estado inicial e depois do 1
String pessoas = 'pessoas';
String naoFoi = 'entrou';

class _HomepageState extends State<Homepage> {
  int cont = 0;
  void inserirCont() {
    setState(() {
      cont++;
      cont == 0 ? naoFoi = 'saiu' : naoFoi = 'entrou';
      cont == 1 ? pessoas = 'pessoa' : pessoas = 'pessoas';

    });
  }
// nao foi for igual a true ai ta certo pq e essa condicao

  void removerCont() {
    setState(() {
      cont--;
      cont == 0 ? naoFoi = 'entrou' : naoFoi = 'agora tem';
        cont == 1 ? pessoas = 'pessoa' : pessoas = 'pessoas';

    });
  }
  //exercicio resolvido


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Center(
          child: Image.asset(
            'assets/images/rest.jpg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      SizedBox(height: 120,),   Column(
          children: [
            SizedBox(
              height: 230,
            ),
            Center(
              child: Text(
                ' Pode entrar',
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'sans-serif',
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                child: Text(
                  ' $naoFoi  $cont $pessoas',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'sans-serif',
                      color: Colors.white),
                ),
              ),
            ]),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    inserirCont();
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '+',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'arial'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
                InkWell(
                  onTap: () {
                    removerCont();
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '-',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'arial'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ]),
      persistentFooterAlignment: AlignmentDirectional(20, 120),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(
          Icons.restaurant_menu_rounded,
          size: 60,
          color: Colors.redAccent,
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
/*

Image.network(
          'https://cdn.goomer.com.br/website/base/9b8/619/251/6-dicas-para-deixar-o-seu-restaurante-moderno.jpeg',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
          color: Colors.redAccent,
          colorBlendMode: BlendMode.darken,
        ), 
        
      ),

*/