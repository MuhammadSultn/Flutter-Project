import 'package:flutter/material.dart';
import 'package:gamingnews/models/article_model.dart';
import 'package:gamingnews/widgets/custom_tag.dart';
import 'package:gamingnews/widgets/image_container.dart';

class Article_Screen extends StatelessWidget {
  const Article_Screen({Key? key}) : super(key: key);

  static const routeName = '/article';
  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments as Article;
    // TODO: implement build
    return ImageContainer(
      width: double.infinity,
      imageUrl: article.imageUrl,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Color.fromARGB(240, 255, 255, 255)),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    article.title,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        height: 1.5),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      CustomTag(
                        backgroundColor: Colors.black,
                        children: [
                          Text(
                            article.author,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CustomTag(
                          backgroundColor: Colors.grey.shade200,
                          children: [
                            const Icon(
                              Icons.timer,
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '${DateTime.now().difference(article.createdAt).inHours}h',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                            ),
                          ]),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    article.body,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.black, height: 1.5, fontSize: 18),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
