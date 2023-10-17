import 'package:flutter/material.dart';
import 'package:gamingnews/models/article_model.dart';
import 'package:gamingnews/widgets/bottom_navbar.dart';
import 'package:gamingnews/widgets/image_container.dart';
import 'package:gamingnews/screen/screen.dart';

class Discover_Screen extends StatelessWidget {
  const Discover_Screen({Key? key}) : super(key: key);

  static const routeName = '/discover';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Category_screen.routeName);
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            )),
      ),
      bottomNavigationBar: const BottomNavbar(index: 1),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [_DiscoverNews(), _CategoryNews()],
      ),
    );
  }
}

class _CategoryNews extends StatelessWidget {
  const _CategoryNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final articles = Article.articles;
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: articles.length,
        itemBuilder: ((context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                Article_Screen.routeName,
                arguments: articles[index],
              );
            },
            child: Row(
              children: [
                ImageContainer(
                  width: 80,
                  height: 80,
                  margin: const EdgeInsets.all(10.0),
                  borderRadius: 5,
                  imageUrl: articles[index].imageUrl,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        articles[index].title,
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.schedule,
                            size: 18,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '${DateTime.now().difference(articles[index].createdAt).inHours}',
                            style: const TextStyle(fontSize: 12),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Icon(
                            Icons.visibility,
                            size: 18,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class _DiscoverNews extends StatelessWidget {
  const _DiscoverNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Discover',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 5,
          ),
          Text(
            'All News About Gaming',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Search',
              fillColor: Colors.grey.shade200,
              filled: true,
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              suffixIcon: const RotatedBox(
                quarterTurns: 1,
                child: Icon(
                  Icons.tune,
                  color: Colors.grey,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
