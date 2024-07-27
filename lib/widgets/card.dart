import 'package:flutter/material.dart';

import 'article_card.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLightMode = Theme.of(context).brightness == Brightness.light;
    final headerColor = isLightMode ? Colors.yellow : Colors.purple;

    final articles = [
      Article(
        title: 'Expandable Widget in Flutter',
        description:
            'The expandable widgets do not have a fixed size, they expand on the screen according to the available areas on the screen...',
        readTime: '3 min read',
      ),
      Article(
        title: 'Flutter - Card Widget',
        description:
            'Card is a built-in widget in flutter which derives its design from Google\'s Material Design Library. The functionality of this widget on screen is, that it is a bland space or panel with round corners and a...',
        readTime: '4 min read',
      ),
      Article(
        title: 'Flutter - ColoredBox Class Widget',
        description:
            'A Colored Box is a container that fills it with color according to its child or A widget that paints its area with a specified Color and then draws its child on top of that color. A sample image is given below to...',
        readTime: '3 min read',
      ),
    ];

    return SingleChildScrollView(
      scrollDirection:Axis.vertical,
      child: Column(
        
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: articles
                    .map((article) => ArticleCard(article: article))
                    .toList(),
              ),
            ),
          ),
          topCard(context, isLightMode, headerColor),
          secCard(context, isLightMode, headerColor, articles),
        ],
      ),
    );
  }

  Padding secCard(BuildContext context, bool isLightMode, Color headerColor,
      List<Article> articles) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: 1200,
        // height: 600,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10),
          border: isLightMode
              ? Border.all(
                  color: const Color.fromARGB(132, 158, 158, 158), width: 1)
              : null,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: headerColor,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(10)),
              ),
              child: Text(
                '@jornvi\'s project',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
              ),
            ),
            Divider(
              color: Theme.of(context).dividerColor,
              height: 1,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: articles
                    .map((article) => ArticleCard(article: article))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding topCard(BuildContext context, bool isLightMode, Color headerColor) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: 300,
        height: 350,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10),
          border: isLightMode
              ? Border.all(
                  color: const Color.fromARGB(132, 158, 158, 158), width: 1)
              : null,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: headerColor,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(10)),
              ),
              child: Text(
                '@jornvi\'s project',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
              ),
            ),
            Divider(
              color: Theme.of(context).dividerColor,
              height: 1,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Private',
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodySmall?.color,
                    ),
                  ),
                  const SizedBox(height: 8),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          "https://www.wfla.com/wp-content/uploads/sites/71/2023/05/GettyImages-1389862392.jpg?w=2560&h=1440&crop=1")),
                  const SizedBox(height: 8),
                  Text(
                    '#1 updated on Feb 2',
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodySmall?.color,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [Text("Read More")],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
