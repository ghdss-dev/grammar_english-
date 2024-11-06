import 'package:flutter/material.dart';
import '../models/english.dart';

class EnglishDetailScreen extends StatelessWidget {
  final Function(English) onToggleFavorite;
  final bool Function(English) isFavorite;

  const EnglishDetailScreen(this.onToggleFavorite, this.isFavorite,
      {super.key});

  Widget _createSectionTitle(BuildContext context, String title) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }

  Widget _createSectionContainer(Widget child) {
    return Container(
      width: 300,
      height: 200,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.red),
          borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final english = ModalRoute.of(context)?.settings.arguments as English;

    return Scaffold(
      appBar: AppBar(
        title: Text(english.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.network(
                english.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            _createSectionTitle(context, 'Questão'),
            _createSectionContainer(ListView.builder(
              shrinkWrap: true,
              itemCount: english.questions.length,
              itemBuilder: (ctx, index) {
                return Card(
                  color: Theme.of(context).colorScheme.secondary,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: Text(
                      english.questions[index],
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            )),
            _createSectionTitle(context, 'Resposta da questão'),
            _createSectionContainer(
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: english.contents.length,
                  itemBuilder: (ctx, index) {
                    return Column(
                      children: <Widget>[
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            child: Text(
                              '${index + 1}',
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                          title: Text(english.contents[index]),
                        ),
                        const Divider()
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(isFavorite(english) ? Icons.star : Icons.star_border),
          onPressed: () {
            onToggleFavorite(english);
          }),
    );
  }
}
