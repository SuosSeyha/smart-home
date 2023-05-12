import 'package:flutter/material.dart';

class HomeModel{
  final String name,brand;
  final IconData icon;
  
  HomeModel({
    required this.icon,
    required this.name,
    required this.brand
  });

  static List<HomeModel> listHome=[
    HomeModel(
      icon: Icons.emoji_objects, 
      name: 'Lamp1',
      brand: 'LG 1'
    ),
    HomeModel(
      icon: Icons.kitchen, 
      name: 'Refrigerator',
      brand: 'SAMSUNG'
    ),
    HomeModel(
      icon: Icons.heat_pump, 
      name: 'Air conditioning',
      brand: 'LG D1'
    ),
    HomeModel(
      icon: Icons.tv, 
      name: 'TV',
      brand: 'LG R5'
    ),
    HomeModel(
      icon: Icons.mode_fan_off, 
      name: 'Fan',
      brand: 'LG R45'
    ),
    HomeModel(
      icon: Icons.volume_up, 
      name: 'Speaker',
      brand: 'USA'
    ),

  ];
}