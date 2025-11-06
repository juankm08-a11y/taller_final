import 'package:flutter/material.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9E9FF),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  'https://tse1.mm.bing.net/th/id/OIP.xqfYqegD58lGYXCQatVDzgHaLC?rs=1&pid=ImgDetMain&o=7&rm=3',
                  height: 40,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        'HER',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(color: Colors.yellow[700]),
                        child: const Text(
                          'IMDb',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text('4.5/5', style: TextStyle(fontSize: 16)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      _MovieInfoItem(title: 'Year', value: '2013'),
                      _MovieInfoItem(title: 'Type', value: 'Drama'),
                      _MovieInfoItem(title: 'Hour', value: '2h 6min'),
                      _MovieInfoItem(title: 'Director', value: 'Spike Jonze'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Plot summary',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'In a near future, a lonely writer develops an unlikely with an operating system designed to meet his every need.',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 20),
                  Wrap(
                    spacing: 10,
                    children: [
                      _GenreChip(label: 'Drama'),
                      _GenreChip(label: 'Romance'),
                      _GenreChip(label: 'Thriller'),
                      _GenreChip(label: 'Sci-Fi'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Cast',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      _CastAvatar(name: 'Joaquin Phoenix'),
                      _CastAvatar(name: 'Spike Jonza'),
                      _CastAvatar(name: 'Rooney Mara'),
                      _CastAvatar(name: 'Olivia Wilde'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MovieInfoItem extends StatelessWidget {
  final String title;
  final String value;

  const _MovieInfoItem({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: const TextStyle(color: Colors.grey)),
        const SizedBox(height: 6),
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class _GenreChip extends StatelessWidget {
  final String label;

  const _GenreChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(label: Text(label), backgroundColor: Colors.grey[200]);
  }
}

class _CastAvatar extends StatelessWidget {
  final String name;

  const _CastAvatar({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(radius: 25, backgroundColor: Colors.grey),
        const SizedBox(height: 5),
        SizedBox(
          width: 60,
          child: Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 10),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
