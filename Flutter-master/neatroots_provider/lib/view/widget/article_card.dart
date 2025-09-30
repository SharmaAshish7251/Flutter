import 'package:flutter/material.dart';
import 'package:neatroots_provider/models/api_models.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:neatroots_provider/view/screen/details_screen.dart';

class ArticleCard extends StatelessWidget {
  final ApiModels articles;

  const ArticleCard({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => DetailsScreen(articles: articles)),
        );
      },
      child: Card(
        elevation: 9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: articles.urlToImage,
              progressIndicatorBuilder:
                  (context, url, downloadProgress) => CircularProgressIndicator(
                    value: downloadProgress.progress,
                  ),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),

            Text(articles.title),
            Text(articles.description),
            Text(articles.content),
            Text(articles.publishedAt),
            Text(articles.url),
          ],
        ),
      ),
    );
  }
}
