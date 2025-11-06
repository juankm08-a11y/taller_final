import 'package:flutter/material.dart';
import 'package:taller_final/screens/movie_detail_screen.dart';
import 'package:taller_final/widgets/date_selector.dart';
import 'package:taller_final/widgets/movie_card.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9E9EF),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Explorer',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Top Movies',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 20),
            const DateSelector(),
            const SizedBox(height: 20),
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MovieCard(
                    title: 'The irishman',
                    imageUrl: '',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const MovieDetailScreen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 20),
                  MovieCard(
                    title: 'Her',
                    imageUrl:
                        'https://tse3.mm.bing.net/th/id/OIP.TJ4J-terls0z3jqy8amShQHaJ_?rs=1&pid=ImgDetMain&o=7&rm=3',
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Trailers',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
