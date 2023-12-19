import 'package:flutter/material.dart';

class Pagestorage extends StatefulWidget {
  const Pagestorage({super.key});

  @override
  State<Pagestorage> createState() => _PagestorageState();
}

class _PagestorageState extends State<Pagestorage> {
  PageStorageBucket bucket =PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          title: const Text(
            'Page Storage',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Storage',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const Icon(Icons.storage, size: 150),
              MaterialButton(
                color: Colors.teal,
                minWidth: 250,
                height: 40,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return PageStorage(
                        bucket: bucket,
                        child: const ProductPage());
                    },
                  ));
                },
                child: const Text(
                  'NEXT PAGE',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            ],
          ),
        ));
  }
}

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          title: const Text(
            'Product Page',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.white,
        body: ListView.builder(
          key: PageStorageKey<String>('Productkey'),
          itemCount: 30,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                'Product No - ${index.toString()}',
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            );
          },
        ));
  }
}
