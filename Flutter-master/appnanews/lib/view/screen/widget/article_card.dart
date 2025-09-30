import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../models/api_models.dart';
import '../detaails_screen.dart';

class ArticleCard extends StatelessWidget {
  final ApiModels article;

  const ArticleCard({
    super.key,
    required this.article,
  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (_) => DetaailsScreen(article: article)));
      },
      child: Card(
        elevation: 8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: article.urlToImage,
              progressIndicatorBuilder:
                  (context, url, downloadProgress) =>
                  CircularProgressIndicator(
                    value: downloadProgress.progress,
                  ),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),

            Text(
              article.title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(article.description),
            Text(article.publishedAt),
          ],
        ),
      ),
    );
  }
}
