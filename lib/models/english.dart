enum Complexity {

  Simple,
  Medium,
  Hard
}

enum Cost {
  Cheap,
  Fair,
  Expensive,
}

class English {

  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> questions;
  final List<String> contents;
  final int duration;
  final bool a_an;
  final bool adjectives;
  final bool identification_words;
  final bool linking_words;
  final bool plural_of_nouns;
  final bool preposition;
  final bool uncountable_countable;
  final bool verbs;
  final bool expression;
  final bool word_formations;
  final bool pharsal_verbs;
  final Complexity complexity;
  final Cost cost;

  const English({

    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.questions,
    required this.contents,
    required this.duration,
    required this.a_an,
    required this.adjectives,
    required this.identification_words,
    required this.linking_words,
    required this.plural_of_nouns,
    required this.preposition,
    required this.uncountable_countable,
    required this.verbs,
    required this.expression,
    required this.word_formations,
    required this.pharsal_verbs,
    required this.complexity,
    required this.cost,
  });

  String get complexityText{

    switch (complexity) {

      case Complexity.Simple:
        return 'Simples';

      case Complexity.Medium:
        return 'Normal';

      case Complexity.Hard:
        return 'Difícil';

      default:
        return 'Desconhecida';
    }
  }

  String get constText{

    switch (cost) {

      case Cost.Cheap:
        return 'Barato';

      case Cost.Fair:
        return 'Justo';

      case Cost.Expensive:
        return 'Caro';

      default:
        return 'Desconhecida';
    }
  }
}


