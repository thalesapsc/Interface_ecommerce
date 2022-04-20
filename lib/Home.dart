import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Text name = Text('');
  Text price = Text('');
  Text oldPrice = Text('');
  Text rate = Text('');
  Text reviews = Text('');
  Text freeShipping = Text('');
  Text discount = Text('');
  Text id = Text('');
  Text colors = Text('');
  Text moeda = Text('RS');

  _apiPromotions() async {
    var url = Uri.parse('http://localhost:3000/promotions');
    http.Response response;
    response = await http.get(url);

    List<dynamic> lista = json.decode(response.body);

    setState(() {
      name = Text(lista.first['name'].toString());
      //, style: TextStyle(fontWeight: FontWeight.bold));

      price = Text(lista.first['price'].toString(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18));

      oldPrice = Text(lista.first['oldPrice'].toString(),
          style: TextStyle(fontSize: 12));

      rate = Text(lista.first['oldPrice'].toString());

      reviews = Text(lista.first['reviews'].toString());

      freeShipping = Text(lista.first['freeShipping'].toString());

      discount = Text(lista.first['discount'].toString());

      id = Text(lista.first['id'].toString());

      colors = Text(lista.first['colors'].toString());
    });

    // lista.forEach((promotion) => {print(promotion)});

    /*for (var promotion; promotion < retorno.length; promotion++) {
      print(retorno[promotion]);
    }

     String name = retorno['name'];
    String image = retorno['image'];
    String price = retorno['price'];
    String oldPrice = retorno['oldPrice'];
    String rate = retorno['rate'];
    String reviews = retorno['reviews'];
    String freeShipping = retorno['freeShipping'];
    String discount = retorno['discount'];
    String id = retorno['id'];
    String colors = retorno['colors'];

    setState(() {
      _resultado =
          "${name}, ${image}, ${price}, ${oldPrice}, ${rate}, ${reviews}, ${freeShipping}, ${discount}, ${id}, ${colors}";
    });*/

    // print(retorno[0]);
  }

  @override
  Widget build(BuildContext context) {
    _apiPromotions();

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        actions: [Icon(Icons.shopping_cart)],
        backgroundColor: Color.fromARGB(255, 228, 64, 64),
        title: Container(
          child: Column(
            children: [
              SizedBox(height: 5),
              Card(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.search)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: ListView(children: [
          Container(
              margin: EdgeInsets.fromLTRB(1, 1, 1, 1),
              child: Image.asset('assets/images/Banner.png')),
          Container(
            alignment: Alignment.center,
            child: Text(
              'Promoções em destaque',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 400,
            height: 900,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 180,
                    height: 420,
                    child: Column(children: [
                      Container(
                        width: 180,
                        height: 220,
                        child: Image.asset('assets/images/asics.jpg'),
                      ),
                      Container(
                        width: 180,
                        height: 20,
                        color: Colors.black54,
                        alignment: Alignment.center,
                        child: const Text(
                          'Frete Grátis',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Container(
                        child: name,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 100,
                            height: 30,
                            child: price,
                          ),
                          Container(
                            width: 80,
                            height: 30,
                            child: oldPrice,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 16,
                            height: 16,
                            child: Image.asset('assets/images/star.png'),
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            child: Image.asset('assets/images/star.png'),
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            child: Image.asset('assets/images/star.png'),
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            child: Image.asset('assets/images/star.png'),
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            child: Image.asset('assets/images/star.png'),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.topLeft,
                        child: const Text(
                          '5 cores',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        width: 180,
                        height: 30,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Comprar',
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary:
                                    const Color.fromARGB(255, 228, 64, 64))),
                      ),
                    ]),
                  ),
                  Container(
                    width: 180,
                    height: 420,
                    child: Column(children: [
                      Container(
                        width: 180,
                        height: 220,
                        child: Image.asset('assets/images/asics.jpg'),
                      ),
                      Container(
                        width: 180,
                        height: 20,
                        color: Colors.black54,
                        alignment: Alignment.center,
                        child: const Text(
                          'Frete Grátis',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Container(
                        child: name,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 100,
                            height: 30,
                            child: price,
                          ),
                          Container(
                            width: 80,
                            height: 30,
                            child: oldPrice,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 16,
                            height: 16,
                            child: Image.asset('assets/images/star.png'),
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            child: Image.asset('assets/images/star.png'),
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            child: Image.asset('assets/images/star.png'),
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            child: Image.asset('assets/images/star.png'),
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            child: Image.asset('assets/images/star.png'),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.topLeft,
                        child: const Text(
                          '5 cores',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        width: 180,
                        height: 30,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Comprar',
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary:
                                    const Color.fromARGB(255, 228, 64, 64))),
                      ),
                    ]),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 180,
                    height: 420,
                    child: Column(children: [
                      Container(
                        width: 180,
                        height: 220,
                        child: Image.asset('assets/images/asics.jpg'),
                      ),
                      Container(
                        width: 180,
                        height: 20,
                        color: Colors.black54,
                        alignment: Alignment.center,
                        child: const Text(
                          'Frete Grátis',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Container(
                        child: name,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 100,
                            height: 30,
                            child: price,
                          ),
                          Container(
                            width: 80,
                            height: 30,
                            child: oldPrice,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 16,
                            height: 16,
                            child: Image.asset('assets/images/star.png'),
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            child: Image.asset('assets/images/star.png'),
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            child: Image.asset('assets/images/star.png'),
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            child: Image.asset('assets/images/star.png'),
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            child: Image.asset('assets/images/star.png'),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.topLeft,
                        child: const Text(
                          '5 cores',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        width: 180,
                        height: 30,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Comprar',
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary:
                                    const Color.fromARGB(255, 228, 64, 64))),
                      ),
                    ]),
                  ),
                  Container(
                    width: 180,
                    height: 420,
                    child: Column(children: [
                      Container(
                        width: 180,
                        height: 220,
                        child: Image.asset('assets/images/asics.jpg'),
                      ),
                      Container(
                        width: 180,
                        height: 20,
                        color: Colors.black54,
                        alignment: Alignment.center,
                        child: const Text(
                          'Frete Grátis',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Container(
                        child: name,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 100,
                            height: 30,
                            child: price,
                          ),
                          Container(
                            width: 80,
                            height: 30,
                            child: oldPrice,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 16,
                            height: 16,
                            child: Image.asset('assets/images/star.png'),
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            child: Image.asset('assets/images/star.png'),
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            child: Image.asset('assets/images/star.png'),
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            child: Image.asset('assets/images/star.png'),
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            child: Image.asset('assets/images/star.png'),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.topLeft,
                        child: const Text(
                          '5 cores',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        width: 180,
                        height: 30,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Comprar',
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary:
                                    const Color.fromARGB(255, 228, 64, 64))),
                      ),
                    ]),
                  ),
                ],
              ),
              Container(
                width: 400,
                height: 20,
                alignment: Alignment.center,
                child: Image.asset('assets/images/LOGO.jpg'),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
