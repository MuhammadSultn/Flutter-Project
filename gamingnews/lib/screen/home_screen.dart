import 'package:flutter/material.dart';
import 'package:gamingnews/models/article_model.dart';
import 'package:gamingnews/screen/article_screen.dart';
import 'package:gamingnews/widgets/bottom_navbar.dart';
import 'package:gamingnews/widgets/custom_Tag.dart';

import '../widgets/image_container.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({Key? key}) : super(key: key);

  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    Article article = Article.articles[0];
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBar: const BottomNavbar(index: 0),
      extendBodyBehindAppBar: true,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          NewsOfTheDay(article: article),
          _HotNews(articles: Article.articles)
        ],
      ),
    );
  }
}

class _HotNews extends StatelessWidget {
  const _HotNews({Key? key, required this.articles}) : super(key: key);

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hot News",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                'More',
                style: Theme.of(context).textTheme.bodyLarge,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      Article_Screen.routeName,
                      arguments: articles[index],
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    margin: const EdgeInsets.only(right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ImageContainer(
                            width: MediaQuery.of(context).size.width * 0.5,
                            imageUrl: articles[index].imageUrl),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          articles[index].title,
                          maxLines: 2,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontWeight: FontWeight.bold, height: 1.5),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '${DateTime.now().difference(articles[index].createdAt).inHours} hours ago',
                          style: Theme.of(context).textTheme.bodySmall!,
                        ),
                        Text(
                          'by ${articles[index].author}',
                          style: Theme.of(context).textTheme.bodySmall!,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class NewsOfTheDay extends StatelessWidget {
  const NewsOfTheDay({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return ImageContainer(
      height: MediaQuery.of(context).size.height * 0.45,
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      imageUrl: Article.articles[0].imageUrl,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTag(
              backgroundColor: Colors.grey.withAlpha(150),
              children: [
                Text(
                  "Gaming News of the Day",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              article.title,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    height: 1.25,
                  ),
            ),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Row(
                  children: [
                    Text(
                      'Learn More',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.arrow_right_alt,
                      color: Colors.white,
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
