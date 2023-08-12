import 'package:flutter/material.dart';
import 'package:etercommerce/core.dart';
import '../controller/product_detail_controller.dart';

class ProductDetailView extends StatefulWidget {
  final Map item;
  ProductDetailView({
    Key? key,
    required this.item,
  }) : super(key: key);

  Widget build(context, ProductDetailController controller) {
    controller.view = this;
    item["qty"] ??= 0;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("ProductDetail"),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Icon(
                  Icons.favorite,
                  size: 24.0,
                ),
                SizedBox(
                  width: 12.0,
                ),
                Icon(
                  Icons.share,
                  size: 24.0,
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item["product_name"],
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          item["category"],
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "\$${item["discount_price"]}",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          "\$${item["price"]}",
                          style: TextStyle(
                            fontSize: 12.0,
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                height: 220.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      item["photo"],
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: QDropdownField(
                      label: "Color",
                      validator: Validator.required,
                      items: [
                        {
                          "label": "Black",
                          "value": "black",
                        },
                        {
                          "label": "White",
                          "value": "white",
                        },
                        {
                          "label": "Red",
                          "value": "red",
                        }
                      ],
                      onChanged: (value, label) {},
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Expanded(
                    child: QDropdownField(
                      label: "Size",
                      validator: Validator.required,
                      items: [
                        {
                          "label": "M",
                          "value": "m",
                        },
                        {
                          "label": "L",
                          "value": "l",
                        },
                        {
                          "label": "XL",
                          "value": "xl",
                        },
                      ],
                      onChanged: (value, label) {},
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                "Description",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                item["description"],
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(12.0),
        child: Wrap(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    radius: 20.0,
                    child: Center(
                      child: IconButton(
                        onPressed: () => controller.decreaseQty(item),
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 12.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "${item["qty"]}",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    radius: 20.0,
                    child: Center(
                      child: IconButton(
                        onPressed: () => controller.increaseQty(item),
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 12.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 12,
              width: MediaQuery.of(context).size.width,
            ),
            Row(
              children: [
                Expanded(
                  child: QButton(
                    label: "Wishlist",
                    color: Colors.grey,
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Expanded(
                  child: QButton(
                    label: "Add to Cart",
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<ProductDetailView> createState() => ProductDetailController();
}
