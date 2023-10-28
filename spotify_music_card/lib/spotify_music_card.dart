import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpotifyMusicCard extends StatelessWidget {
  const SpotifyMusicCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(29, 185, 84, 1),
        elevation: 0,
        title: const Text(
          'Spotify Music Card',
          style: TextStyle(
            letterSpacing: 1,
            fontFamily: 'Raleway_bold',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1.5,
                  ),
                ),
                height: 9 * MediaQuery.of(context).size.height / 20,
                width: 2 * MediaQuery.of(context).size.width / 3,
                child: Image.asset(
                  'assets/beast.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 30),
            child: const Text(
              'Beast Mode (From "Beast")',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Raleway_medium',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Anirudh Ravichander',
                  style: TextStyle(
                    fontFamily: 'Raleway_medium',
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                Icon(
                  CupertinoIcons.heart_fill,
                  size: 20,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Slider(
              onChanged: (value) {},
              value: 0.05,
              activeColor: Colors.black,
              inactiveColor: Colors.black,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '0:01',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '-2:54',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const Icon(
                  Icons.skip_previous_rounded,
                  color: Colors.black,
                  size: 50,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const Icon(
                  Icons.pause_circle_filled,
                  color: Colors.black,
                  size: 60,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const Icon(
                  Icons.skip_next_rounded,
                  color: Colors.black,
                  size: 50,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
