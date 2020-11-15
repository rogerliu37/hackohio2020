import 'package:flutter/material.dart';

class Product {
  final String image, title, description, renter;
  final int price, deposit, id;
  final double milesAway, rating;
  int daysRented;
  final Color color;
  Product({
    this.id,
    this.renter,
    this.image,
    this.title,
    this.rating,
    this.price,
    this.description,
    this.deposit,
    this.color,
    this.daysRented,
    this.milesAway,
  });
}

List<Product> products = [
  Product(
      id: 1,
      renter: "Roger",
      title: "Office Code",
      price: 234,
      rating: 3.5,
      deposit: 12,
      daysRented: 0,
      milesAway: 1.0,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      renter: "Sarah",
      title: "Belt Bag",
      price: 234,
      rating: 5.0,
      deposit: 8,
      daysRented: 0,
      milesAway: 3.4,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      renter: "Natalie",
      title: "Hang Top",
      price: 234,
      rating: 4.9,
      deposit: 10,
      daysRented: 0,
      milesAway: 20.0,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      renter: "Andrew",
      title: "Old Fashion",
      price: 234,
      deposit: 11,
      rating: 3.9,
      daysRented: 0,
      milesAway: 36.0,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      renter: "Steven",
      title: "Office Code",
      price: 234,
      deposit: 12,
      rating: 1.1,
      daysRented: 0,
      milesAway: 2.3,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    renter: "Emily",
    title: "Office Code",
    price: 234,
    deposit: 12,
    rating: 2.5,
    daysRented: 0,
    milesAway: 15.0,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
