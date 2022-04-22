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

  Text name2 = Text('');
  Text price2 = Text('');
  Text oldPrice2 = Text('');
  Text rate2 = Text('');
  Text reviews2 = Text('');
  Text freeShipping2 = Text('');
  Text discount2 = Text('');
  Text id2 = Text('');
  Text colors2 = Text('');
  Text moeda2 = Text('RS');

  Text name3 = Text('');
  Text price3 = Text('');
  Text oldPrice3 = Text('');
  Text rate3 = Text('');
  Text reviews3 = Text('');
  Text freeShipping3 = Text('');
  Text discount3 = Text('');
  Text id3 = Text('');
  Text colors3 = Text('');
  Text moeda3 = Text('RS');

  Text name4 = Text('');
  Text price4 = Text('');
  Text oldPrice4 = Text('');
  Text rate4 = Text('');
  Text reviews4 = Text('');
  Text freeShipping4 = Text('');
  Text discount4 = Text('');
  Text id4 = Text('');
  Text colors4 = Text('');
  Text moeda4 = Text('');

  _apiPromotions() async {
    var url = Uri.parse('http://localhost:3000/promotions');
    http.Response response;
    response = await http.get(url);

    List<dynamic> lista = json.decode(response.body);

    setState(() {
      name = Text(lista.elementAt(0)['name'].toString());
      //, style: TextStyle(fontWeight: FontWeight.bold));

      price = Text(lista.elementAt(0)['price'].toString(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18));

      oldPrice = Text(lista.elementAt(0)['oldPrice'].toString(),
          style: TextStyle(fontSize: 12));

      rate = Text(lista.elementAt(0)['oldPrice'].toString());

      reviews = Text(lista.elementAt(0)['reviews'].toString());

      freeShipping = Text(lista.elementAt(0)['freeShipping'].toString());

      discount = Text(lista.elementAt(0)['discount'].toString());

      id = Text(lista.elementAt(0)['id'].toString());

      colors = Text(lista.elementAt(0)['colors'].toString());

      name2 = Text(lista.elementAt(1)['name'].toString());
      //, style: TextStyle(fontWeight: FontWeight.bold));

      price2 = Text(lista.elementAt(1)['price'].toString(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18));

      oldPrice2 = Text(lista.elementAt(1)['oldPrice'].toString(),
          style: TextStyle(fontSize: 12));

      rate2 = Text(lista.elementAt(1)['oldPrice'].toString());

      reviews2 = Text(lista.elementAt(1)['reviews'].toString());

      freeShipping2 = Text(lista.elementAt(1)['freeShipping'].toString());

      discount2 = Text(lista.elementAt(1)['discount'].toString());

      id2 = Text(lista.elementAt(1)['id'].toString());

      colors2 = Text(lista.elementAt(1)['colors'].toString());
      name3 = Text(lista.elementAt(2)['name'].toString());
      //, style: TextStyle(fontWeight: FontWeight.bold));

      price3 = Text(lista.elementAt(2)['price'].toString(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18));

      oldPrice3 = Text(lista.elementAt(2)['oldPrice'].toString(),
          style: TextStyle(fontSize: 12));

      rate3 = Text(lista.elementAt(2)['oldPrice'].toString());

      reviews3 = Text(lista.elementAt(2)['reviews'].toString());

      freeShipping3 = Text(lista.elementAt(2)['freeShipping'].toString());

      discount3 = Text(lista.elementAt(2)['discount'].toString());

      id3 = Text(lista.elementAt(2)['id'].toString());

      colors3 = Text(lista.elementAt(2)['colors'].toString());
      name4 = Text(lista.elementAt(3)['name'].toString());
      //, style: TextStyle(fontWeight: FontWeight.bold));

      price4 = Text(lista.elementAt(3)['price'].toString(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18));

      oldPrice4 = Text(lista.elementAt(3)['oldPrice'].toString(),
          style: TextStyle(fontSize: 12));

      rate4 = Text(lista.elementAt(3)['oldPrice'].toString());

      reviews4 = Text(lista.elementAt(3)['reviews'].toString());

      freeShipping4 = Text(lista.elementAt(3)['freeShipping'].toString());

      discount4 = Text(lista.elementAt(3)['discount'].toString());

      id4 = Text(lista.elementAt(3)['id'].toString());

      colors = Text(lista.elementAt(3)['colors'].toString());
    });
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
                    Container(
                        height: 35, color: Color.fromARGB(255, 228, 64, 64)),
                    Container(
                      width: 450,
                      height: 35,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.search)),
                      ),
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
                        child: Image.network(
                            'https://imgcentauro-a.akamaihd.net/250x250/9469584WA1/tenis-asics-gel-dedicate-6-masculino-img.jpg'),
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
                      //item 1
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
                  //item2
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
                        child: name2,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 100,
                            height: 30,
                            child: price2,
                          ),
                          Container(
                            width: 80,
                            height: 30,
                            child: oldPrice2,
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
                      //item3
                      Container(
                        child: name3,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 100,
                            height: 30,
                            child: price3,
                          ),
                          Container(
                            width: 80,
                            height: 30,
                            child: oldPrice3,
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

                      //item 4
                      Container(
                        child: name4,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 100,
                            height: 30,
                            child: price4,
                          ),
                          Container(
                            width: 80,
                            height: 30,
                            child: oldPrice4,
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
