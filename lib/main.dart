import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'product.dart';
import 'remote_config.dart';
import 'dart:convert';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static List<Product> products = new List<Product>();
  bool loading = true;

  AutoCompleteTextField searchTextField;
  GlobalKey<AutoCompleteTextFieldState<Product>> key = new GlobalKey();



  Widget row(Product product) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          product.name,
          style: TextStyle(fontSize: 16.0),
        ),

      ],
    );
  }

  @override
  void initState() {
    //_getOrder();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'search',
              style: Theme.of(context).textTheme.headline4,
            ),
            loading
                ? CircularProgressIndicator():
            AutoCompleteTextField(
                key: key,
                clearOnSubmit: false,
                decoration: InputDecoration(
                  hintText: "seach name",
                ),
                itemSubmitted: (item) {
                  searchTextField.textField.controller.text = item.name;
                },
                suggestions: products,
                itemBuilder: (context, item) {
                  return row(item);
                },
                itemSorter: (a, b) {
                  return a.name.compareTo(b.name);
                },
                itemFilter: (item, query) {
                  return item.name
                      .toLowerCase()
                      .startsWith(query.toLowerCase());
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _getOrder();
        },
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Future<List<Product>> _getOrder() async {
    //var response = await http.get("https://dev.sebpo.net/hellobox/wp-json/wc/v3/products?page=$index&per_page=20",
    //var response = await http.get("https://sneho.com.bd/beta/wp-json/wc/v3/products?page=$index&per_page=20",
    var response = await http.get(
      "https://dev.sebpo.net/hellobox/wp-json/wc/v3/products?search=kodomo&page=1&per_page=5",
      headers: {
        "Authorization": RemoteConfig.config["AuthorizationToken"],
      },
    );
    setState(() {
      loading = false;
    });

    if (response.statusCode == 200) {
      print("=======ProductFromResponse=======" + response.body);
      products = productFromJson(response.body);

      //List<Product> product = loadProducts(response.body);
      print("=======product=======${products}");
      return products;

      // return json.decode(response.body);
      // products = productFromJson(response.body);
      // print("=======Product count per API call=======${products.length}");
    } else {
      throw Exception('Failed to load data');
    }
  }

  static List<Product> loadProducts(String jsonString) {
    final parsed = json.decode(jsonString).cast<Map<String, dynamic>>();
    return parsed.map<Product>((json) => Product.fromJson(json)).toList();
  }
}
