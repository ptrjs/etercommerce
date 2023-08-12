import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView> {
  static late DashboardController instance;
  late DashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();

  List categories = ["Tech", "Music", "Apparel", "Sport"];

  List<Map<String, dynamic>> products = [
    {
      "id": 1,
      "photo": "https://i.ibb.co/3Ybg7GT/71y-B5-Ef-CU-L-AC-UY1000.jpg",
      "product_name": "Striped T-Shirt",
      "price": 20,
      "category": "Clothes",
      "description": "A comfortable striped T-shirt made from soft cotton.",
      "discount_price": 18,
      "is_favorite": false,
    },
    {
      "id": 2,
      "photo": "https://i.ibb.co/FbxpMwt/71yb-jn4-4-L-AC-SY550-SX-UX-SY-UY.jpg",
      "product_name": "Denim Jacket",
      "price": 40,
      "category": "Clothes",
      "description": "A stylish denim jacket to keep you warm in style.",
      "discount_price": 35,
      "is_favorite": true,
    },
    {
      "id": 3,
      "photo": "https://i.ibb.co/THtzFGm/91xw1-ZXMv-VL-SL1500.jpg6",
      "product_name": "Casual Dress",
      "price": 30,
      "category": "Clothes",
      "description": "A versatile casual dress for any occasion.",
      "discount_price": 25,
      "is_favorite": true,
    },
    {
      "id": 4,
      "photo": "https://i.ibb.co/vH7fZRf/51-j1s-GHTp-L-AC-UX522.jpg",
      "product_name": "Formal Blouse",
      "price": 35,
      "category": "Clothes",
      "description": "A sophisticated formal blouse for business meetings.",
      "discount_price": 30,
      "is_favorite": false,
    },
    {
      "id": 5,
      "photo": "https://i.ibb.co/HNVKc9W/61fjaakp-He-L-AC-UX679.jpg",
      "product_name": "Sporty Hoodie",
      "price": 28,
      "category": "Clothes",
      "description": "A cozy hoodie for your active lifestyle.",
      "discount_price": 25,
      "is_favorite": false,
    },
    {
      "id": 6,
      "photo": "https://i.ibb.co/WzTvwGJ/51-JEx6s-N8k-L-AC-UX679.jpg",
      "product_name": "Slim Fit Jeans",
      "price": 30,
      "category": "Pants",
      "description": "Comfortable slim fit jeans for a modern look.",
      "discount_price": 28,
      "is_favorite": false,
    },
    {
      "id": 7,
      "photo": "https://i.ibb.co/s3LYymX/716fe-VZ-vk-L-AC-UX569.jpg",
      "product_name": "Chinos",
      "price": 25,
      "category": "Pants",
      "description": "Classic chinos for a versatile style.",
      "discount_price": 22,
      "is_favorite": true,
    },
    {
      "id": 8,
      "photo": "https://i.ibb.co/x2Wxd2d/71-Aih16-Huo-L-AC-UX569.jpg",
      "product_name": "Cropped Pants",
      "price": 28,
      "category": "Pants",
      "description": "Stylish cropped pants for a trendy look.",
      "discount_price": 25,
      "is_favorite": false,
    },
    {
      "id": 9,
      "photo": "https://i.ibb.co/xXyFsDm/51-YZ39v0o-L-AC-UY741.jpg",
      "product_name": "Cargo Pants",
      "price": 35,
      "category": "Pants",
      "description": "Functional cargo pants with plenty of pockets.",
      "discount_price": 32,
      "is_favorite": true,
    },
    {
      "id": 10,
      "photo": "https://i.ibb.co/8sbmSQf/71-IGGv-XT-p-L-AC-UX569.jpg",
      "product_name": "Corduroy Pants",
      "price": 32,
      "category": "Pants",
      "description": "Comfortable corduroy pants for a classic touch.",
      "discount_price": 28,
      "is_favorite": false,
    },
  ];
}
