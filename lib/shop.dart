import 'package:flutter/material.dart';
import 'package:flutter_application_1/Basket.dart';
import 'package:flutter_application_1/app_drawer.dart';
import '/cart_manager.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  final List<Map<String, dynamic>> hoodies = [
    {
      "name": "Classic Black Hoodie",
      "price": 39.99,
      "image":
          "https://fearofgod.com/cdn/shop/files/192AS254780F_CLASSIC_FIT_FLEECE_ZIP-UP_HOODIE-JET_BLACK_2_cb9761d3-82a0-45e8-93eb-0bf0ae541bda_1920x.jpg?v=1757442056",
    },
    {
      "name": "Gray Hoodie",
      "price": 44.99,
      "image":
          "https://cdn.shopify.com/s/files/1/1003/3354/files/ED1SP25_M20123.jpg?v=1749580199",
    },
    {
      "name": "Blue Pullover Hoodie",
      "price": 42.50,
      "image":
          "https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto/4024706e-d16a-4f56-b266-02f5bacd0644/W+NSW+PHNX+FLC+OOS+PO+HOODIE.png",
    },
    {
      "name": "White Minimalist Hoodie",
      "price": 37.25,
      "image":
          "https://static.nike.com/a/images/t_web_pw_592_v2/f_auto/9030950f-8984-4f9a-a81b-b986a52c0929/M+NK+TF+SI+BRSH+PO+HD.png",
    },
    {
      "name": "Red Street Hoodie",
      "price": 45.75,
      "image":
          "https://static.nike.com/a/images/t_web_pw_592_v2/f_auto/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/35044c7c-1aaf-4d47-931d-befe852868c9/M+J+DF+SPRT+CSVR+FLC+PO.png",
    },
    {
      "name": "Beige Oversized Hoodie",
      "price": 41.50,
      "image":
          "https://imgs.search.brave.com/EeFjDE-Ee7VDH2DqrdhcsXNR1weE_Uq8ncf4wZ2D4Ms/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9lc3Nl/bnRpYWxob29kaWVj/b20uY29tL3dwLWNv/bnRlbnQvdXBsb2Fk/cy8yMDI1LzA3L0VT/U0VOVElBTFMtT3Zl/cnNpemVkLUhvb2Rp/ZS1iZWlnZS00MzB4/NDMwLmpwZw",
    },
    {
      "name": "Green Forest Hoodie",
      "price": 46.30,
      "image":
          "https://imgs.search.brave.com/rfo2rN-sz6hz_xmjQD6GlDJJBVi5jyT5N5fVU-w_VB4/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9uaW5l/dHktOS5kZS9jZG4v/c2hvcC9wcm9kdWN0/cy9TS1UtMTAwMDEz/MTlfRVNTRU5USUFM/Uy1Ib29kaWVfR3Jl/ZW5fMDlQLmpwZz92/PTE2NzQyMTY0NTQm/d2lkdGg9MTA4MA",
    },
    {
      "name": "Purple Dream Hoodie",
      "price": 43.80,
      "image":
          "https://imgs.search.brave.com/HpQZJMV0W1CxbUPAPSwix3VrdW3jPew6Fl1_xQJVvbw/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLmV0/c3lzdGF0aWMuY29t/LzI2MTU0MTkzL2Mv/NjM4LzYzOC8xLzAv/aWwvMzZjMzg0LzM4/Nzg3MDMyOTgvaWxf/MzAweDMwMC4zODc4/NzAzMjk4Xzg0MmEu/anBn",
    },
    {
      "name": "Yellow Sunny Hoodie",
      "price": 38.90,
      "image":
          "https://esentialshoodie.com/wp-content/uploads/2025/06/61r7pL1XvRL-1024x1024.jpg",
    },
    {
      "name": "Brown Cozy Hoodie",
      "price": 40.25,
      "image":
          "https://esentialshoodie.com/wp-content/uploads/2025/06/ESSENTIALS-Oversized-Hoodie-brown-600x600-1.jpg",
    },
    {
      "name": "Teal Chill Hoodie",
      "price": 39.50,
      "image":
          "https://imgs.search.brave.com/glUeAqyV_8OixH5yMnLIN-veEUpXbo_l-VXQUqCGu1Q/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly91cy5i/bGFrZWx5Y2xvdGhp/bmcuY29tL2Nkbi9z/aG9wL2ZpbGVzLzIw/MTFXR3JlZW5fMDRE/XzgwMHguanBnP3Y9/MTcxODM3OTU2Mw",
    },
    {
      "name": "Orange Street Hoodie",
      "price": 47.75,
      "image":
          "https://imgs.search.brave.com/VbVkdyCF9fi30QJawxi-qHCKjXH5fXmLfyuazBvtXiQ/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2Q2LzFj/L2IzL2Q2MWNiMzQ4/MmFhM2U5MzdlYzVl/MDc4OTIzNjk4NzBl/LmpwZw",
    },
    {
      "name": "Sky Blue Hoodie",
      "price": 42.99,
      "image":
          "https://imgs.search.brave.com/b8oG-irlsluJ9uwHlxc66q21aX4uBbBAgS-tMduwQLA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9lc3Nl/bnRpYWxzc3dlYXRw/YW50cy5jb20vd3At/Y29udGVudC91cGxv/YWRzLzIwMjQvMDgv/U2t5LUJsdWUtRXNz/ZW50aWFscy1Ib29k/aWUuanBn",
    },
    {
      "name": "Olive Green Hoodie",
      "price": 41.90,
      "image":
          "https://imgs.search.brave.com/IYtGUPPpbdv5ougCEGARath3gFMZSnaP9tbisWO9yac/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/dnFmaXQuY29tL2Nk/bi9zaG9wL2ZpbGVz/L0ZJUlNUU0hPVC0y/MDI0LTAyLTI4VDE0/NTkxMi4yMjAuanBn/P3Y9MTcwOTEzMjQ4/MSZ3aWR0aD0yMzY3",
    },
    {
      "name": "Maroon Classic Hoodie",
      "price": 44.00,
      "image":
          "https://imgs.search.brave.com/3JVnqIZntWXlgviHXqSp5WaEKTMjROZ41XnWLzWTTVU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tdXNl/bG90LmluL2Nkbi9z/aG9wL3Byb2R1Y3Rz/L1VuaXNleC1QbGFp/bi1NYXJvb24taG9v/ZGllcy1NdXNlbG90/X2EzZGNhNmYwLWY5/YjgtNGM2OC1iNWM0/LTgwYTA2YTQwMGRl/OS5qcGc_Y3JvcD1j/ZW50ZXImaGVpZ2h0/PTc1MCZ2PTE2Mzg2/NTE0ODAmd2lkdGg9/NjAw",
    },
    {
      "name": "Dark Navy Hoodie",
      "price": 45.50,
      "image":
          "https://imgs.search.brave.com/XbkIHalnTGn1Qth88CBHv7_WHlr9JxFmsRztQnvqhCk/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZS5nb2F0LmNvbS90/cmFuc2Zvcm0vdjEv/YXR0YWNobWVudHMv/cHJvZHVjdF90ZW1w/bGF0ZV9hZGRpdGlv/bmFsX3BpY3R1cmVz/L2ltYWdlcy8xMDAv/NTc2LzYwOS9vcmln/aW5hbC83NDYyMDZf/MDEuanBnLmpwZWc_/YWN0aW9uPWNyb3Am/d2lkdGg9NzUw",
    },
    {
      "name": "Pastel Pink Hoodie",
      "price": 40.75,
      "image":
          "https://imgs.search.brave.com/pRDZjejOK6Rb-xRFDywNwGhCompZlDpLn7VqmUFVfCs/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pLmV0/c3lzdGF0aWMuY29t/LzIzNDgwNDIzL3Iv/aWwvNTVhYzgzLzIz/NDgwNjc1MzYvaWxf/MzAweDMwMC4yMzQ4/MDY3NTM2X24wNnIu/anBn",
    },
    {
      "name": "Charcoal Gray Hoodie",
      "price": 43.60,
      "image":
          "https://imgs.search.brave.com/oRpafsJ32E4omaaRVcR0FnZdKcxevQEgsn7S1RsElXM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTExd3pKbHd0Q0wu/anBn",
    },
    {
      "name": "Mint Green Hoodie",
      "price": 39.80,
      "image":
          "https://imgs.search.brave.com/YNqh_FO9pFviI9bmPtmuTq0d1kkCpDGQmTnHPhJ7Fhg/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5zdHJlZmF0ZW5p/c2EuY29tLnBsL21l/ZGlhL2ltYWdlL2My/L2UyL2E1L0FVUk9S/QV9CVjI2NTQtMzEw/X1BIU1lNMDA4LTIw/MDBfNjAweDYwMC5w/bmc",
    },
    {
      "name": "Sand Tan Hoodie",
      "price": 42.25,
      "image":
          "https://imgs.search.brave.com/K2GLRiwl5ffHlG4sFVECAX3_4HkRKdvfJ2KWqHHzS6c/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9ibGFr/ZWx5Y2xvdGhpbmcu/Y29tL2Nkbi9zaG9w/L2ZpbGVzLzIwMTFN/U2FuZF8wM0xFQURE/XzgwMHguanBnP3Y9/MTcxNTg1NjMxMQ",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hoodie Shop'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BasketPage()),
              );
            },
            icon: const Icon(Icons.add_shopping_cart),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: hoodies.length,
        itemBuilder: (context, index) {
          final hoodie = hoodies[index];
          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              leading: Image.network(
                hoodie['image'],
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              title: Text(hoodie['name']),
              subtitle: Text("\$${hoodie['price']}"),
              trailing: IconButton(
                icon: const Icon(Icons.add_shopping_cart, color: Colors.green),
                onPressed: () {
                  IconButton;
                  const Icon(Icons.favorite, color: Colors.red);

                  CartManager.instance.addToCart(hoodie);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${hoodie["name"]} added to basket'),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
