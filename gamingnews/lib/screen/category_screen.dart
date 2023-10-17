import 'package:flutter/material.dart';

class Category_screen extends StatelessWidget {
  const Category_screen({Key? key}) : super(key: key);

  static const routeName = '/category';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Title(
              color: Colors.black,
              child: const Text(
                "Category",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              )),
        ),
        body: InkWell(
          child: Container(
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shield_moon,
                        size: 70,
                      ),
                    ),
                    Text("Action",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.black,
                            )),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.rowing,
                        size: 70,
                      ),
                    ),
                    Text("Adventure",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.black,
                            )),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.book,
                        size: 70,
                      ),
                    ),
                    Text("Puzzle",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.black,
                            )),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.ramen_dining,
                        size: 70,
                      ),
                    ),
                    Text("Cooking",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.black,
                            )),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.roofing,
                        size: 70,
                      ),
                    ),
                    Text("Simulation",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.black,
                            )),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.run_circle,
                        size: 70,
                      ),
                    ),
                    Text("RPG",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.black,
                            )),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.science,
                        size: 70,
                      ),
                    ),
                    Text("Science",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.black,
                            )),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.sports_basketball,
                        size: 70,
                      ),
                    ),
                    Text("Sports",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.black,
                            )),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.games,
                        size: 70,
                      ),
                    ),
                    Text("Casual",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.black,
                            )),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
