import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class Pizza extends Equatable {
  final String id;
  final String name;
  final Image image;

  // Named Contructor
  const Pizza({required this.id, required this.name, required this.image});

  @override
  List<Object?> get props => [id, name, image];

  static List<Pizza> pizzas = [
    Pizza(
      id: "0",
      name: "Mozarella ",
      image: Image.asset("assets/pizzaMozarella.png"),
    ),
    Pizza(
      id: "1",
      name: "Peperoni",
      image: Image.asset("assets/pizzaSayur.png"),
    )
  ];
}
