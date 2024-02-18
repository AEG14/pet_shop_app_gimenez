import 'package:flutter/material.dart';

class Pet {
  final String type;
  final String breed;
  final String country;
  final double metersFar;
  final double weight;
  final double height;
  final String color;
  final String description;
  final double price;
  final String image;

  Pet({
    required this.type,
    required this.breed,
    required this.country,
    required this.metersFar,
    required this.weight,
    required this.height,
    required this.color,
    required this.description,
    required this.price,
    required this.image,
  });
}

final List<Pet> PETS = [
  Pet(
    type: 'Cat',
    breed: 'Bengal',
    country: 'United States',
    metersFar: 7.2,
    weight: 5.4,
    height: 18.3,
    color: 'Spotted Rosetted',
    description:
        'The Bengal cat is known for its distinctive spotted or marbled coat.',
    price: 800.0,
    image: 'assets/images/petImages/bengal_cat.jpg',
  ),
  Pet(
    type: 'Dog',
    breed: 'Golden Retriever',
    country: 'United Kingdom',
    metersFar: 12.8,
    weight: 13.6,
    height: 21.3,
    color: 'Golden',
    description:
        'The Golden Retriever is a friendly, intelligent, and devoted companion.',
    price: 1200.0,
    image: 'assets/images/petImages/golden_retriever.jpg',
  ),
  Pet(
    type: 'Dog',
    breed: 'Siberian Husky',
    country: 'Russia',
    metersFar: 10.5,
    weight: 11,
    height: 24.3,
    color: 'Black and White',
    description:
        'The Siberian Husky is known for its thick double coat and distinctive markings.',
    price: 1000.0,
    image: 'assets/images/petImages/siberian_husky.jpg',
  ),
  Pet(
    type: 'Bird',
    breed: 'Cockatoo',
    country: 'Australia',
    metersFar: 5.0,
    weight: 0.68,
    height: 9,
    color: 'White',
    description:
        'The Cockatoo is known for its distinctive crest and lively personality.',
    price: 500.0,
    image: 'assets/images/petImages/cockatoo.jpg',
  ),
  Pet(
    type: 'Dog',
    breed: 'Dachshund',
    country: 'Germany',
    metersFar: 4.5,
    weight: 7,
    height: 14,
    color: 'Black and Orange',
    description:
        'The Dachshund is a small dog with a long body and short legs.',
    price: 600.0,
    image: 'assets/images/petImages/dachshund.jpg',
  ),
  Pet(
    type: 'Cat',
    breed: 'Persian',
    country: 'Iran',
    metersFar: 6.0,
    weight: 3.6,
    height: 12,
    color: 'Cream',
    description:
        'The Persian cat is known for its long, luxurious fur and calm demeanor.',
    price: 900.0,
    image: 'assets/images/petImages/persian_cat.jpg',
  ),
  Pet(
    type: 'Dog',
    breed: 'Poodle',
    country: 'France',
    metersFar: 3.5,
    weight: 5.2,
    height: 13,
    color: 'Apricot',
    description:
        'The Poodle is known for its intelligence, hypoallergenic coat, and elegant appearance.',
    price: 700.0,
    image: 'assets/images/petImages/poodle.jpg',
  ),
  Pet(
    type: 'Bird',
    breed: 'Parakeet',
    country: 'Australia',
    metersFar: 2.0,
    weight: 3,
    height: 8,
    color: 'Blue',
    description:
        'The Parakeet is a small and colorful pet bird with a cheerful disposition.',
    price: 150.0,
    image: 'assets/images/petImages/parakeet.jpg',
  ),
  Pet(
    type: 'Dog',
    breed: 'Labrador Retriever',
    country: 'Canada',
    metersFar: 8.0,
    weight: 25.0,
    height: 19,
    color: 'White',
    description:
        'The Labrador Retriever is a friendly and versatile breed known for its intelligence and gentle nature.',
    price: 800.0,
    image: 'assets/images/petImages/labrador_retriever.jpg',
  ),
  Pet(
    type: 'Cat',
    breed: 'Maine Coon',
    country: 'United States',
    metersFar: 7.0,
    weight: 6.8,
    height: 22,
    color: 'Tabby',
    description:
        'The Maine Coon is one of the largest domesticated cat breeds, known for its tufted ears and bushy tail.',
    price: 1000.0,
    image: 'assets/images/petImages/maine_coon.jpg',
  ),
  Pet(
    type: 'Dog',
    breed: 'Bulldog',
    country: 'England',
    metersFar: 6.5,
    weight: 20,
    height: 5.1,
    color: 'Brown',
    description:
        'The Bulldog is a medium-sized breed with a distinct wrinkled face and muscular build.',
    price: 750.0,
    image: 'assets/images/petImages/bulldog.jpg',
  ),
  Pet(
    type: 'Bird',
    breed: 'African Grey Parrot',
    country: 'Africa',
    metersFar: 3.5,
    weight: 0.8,
    height: 15,
    color: 'Grey',
    description:
        'The African Grey Parrot is known for its exceptional talking ability and high intelligence.',
    price: 1200.0,
    image: 'assets/images/petImages/african_grey_parrot.jpg',
  ),
  Pet(
    type: 'Cat',
    breed: 'Siamese',
    country: 'Thailand',
    metersFar: 5.0,
    weight: 25,
    height: 6.8,
    color: 'Seal Point',
    description:
        'The Siamese cat is recognized for its striking blue almond-shaped eyes and short coat with color points.',
    price: 850.0,
    image: 'assets/images/petImages/siamese.jpg',
  ),
  Pet(
    type: 'Dog',
    breed: 'Golden Retriever',
    country: 'Scotland',
    metersFar: 9.0,
    weight: 30,
    height: 28,
    color: 'Golden',
    description:
        'The Golden Retriever is a friendly, intelligent, and devoted breed with a dense, water-repellent coat.',
    price: 900.0,
    image: 'assets/images/petImages/golden_retriever2.jpg',
  ),
];
