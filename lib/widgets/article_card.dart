import 'package:flutter/material.dart';

class Article {
  final String title;
  final String description;
  final String readTime;

  Article({required this.title, required this.description, required this.readTime});
}

class ArticleCard extends StatelessWidget {
  final Article article;

  ArticleCard({required this.article});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: theme.cardColor,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: theme.primaryColor, 
            width: 2.0,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12, 
              blurRadius: 10.0,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              article.title,
              style: theme.textTheme.bodyLarge?.copyWith(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              article.description,
              style: theme.textTheme.bodySmall?.copyWith(
                fontSize: 14.0,
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Icon(
                  Icons.access_time,
                  size: 16.0,
                  color: theme.iconTheme.color,
                ),
                const SizedBox(width: 4.0),
                Text(
                  article.readTime,
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
