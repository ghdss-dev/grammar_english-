import 'package:flutter/material.dart';
import 'screens/english_detail_screen.dart';
import 'screens/question_frequently.dart';
import 'utils/app_routes.dart';
import 'screens/categories_screen.dart';
import 'screens/categories_english_screen.dart';
import 'screens/tabs_screen.dart';
import 'screens/settings_screen.dart';
import 'models/settings.dart';

import 'models/english.dart';
import 'data/dummy_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Settings _settings = Settings(
    is_A_An_Free: false,
    is_Adjetive_Free: false,
    is_Identification_Words_Free: false,
    is_Linking_Words_Free: false,
    is_Plural_Of_Nouns_Free: false,
    is_Preposion_Free: false,
    is_Countable_Uncountable_Free: false,
    is_Verbs_Free: false,
    is_Expression_Free: false,
    is_Words_Formations_Free: false,
    is_Pharsal_Verbs_Free: false,
  );

  List<English> _availableEnglish = DUMMY_ENGLISH;
  final List<English> _favoriteEnglish = [];

  void _filterEnglish(Settings settings) {
    setState(() {
      _settings = settings;
      _availableEnglish = DUMMY_ENGLISH.where((english) {
        final filterAAn = settings.is_A_An_Free && !english.a_an;
        final filterAdjectives =
            settings.is_Adjetive_Free && !english.adjectives;
        final filterIdentificationWords =
            settings.is_Identification_Words_Free &&
                !english.identification_words;
        final filterLinkinWords =
            settings.is_Linking_Words_Free && !english.linking_words;
        final filterPluralOfNouns =
            settings.is_Plural_Of_Nouns_Free && !english.plural_of_nouns;
        final filterPreposion =
            settings.is_Preposion_Free && !english.preposition;
        final filterCountableUncountable =
            settings.is_Countable_Uncountable_Free &&
                !english.uncountable_countable;
        final filterVerbs = settings.is_Verbs_Free && !english.verbs;
        final filterExpression =
            settings.is_Expression_Free && !english.expression;
        final filterWordsFormations =
            settings.is_Words_Formations_Free && !english.word_formations;
        final filterPharsalVerbs =
            settings.is_Pharsal_Verbs_Free && !english.pharsal_verbs;

        return !filterAAn &&
            !filterAdjectives &&
            !filterIdentificationWords &&
            !filterLinkinWords &&
            !filterPluralOfNouns &&
            !filterPreposion &&
            !filterCountableUncountable &&
            !filterVerbs &&
            !filterExpression &&
            !filterWordsFormations &&
            !filterPharsalVerbs;
      }).toList();
    });
  }

  void _toggleFavorite(English english) {
    setState(() {
      if (_favoriteEnglish.contains(english)) {
        _favoriteEnglish.remove(english);
      } else {
        _favoriteEnglish.add(english);
      }
    });
  }

  bool _isFavorite(English english) {
    return _favoriteEnglish.contains(english);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Estudar Inglês?',
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: Colors.black,
          ),
          fontFamily: 'RobotoCondensed',
          canvasColor: const Color.fromRGBO(255, 215, 0, 1.0),
          textTheme: ThemeData.light().textTheme.copyWith(
                  titleMedium: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ))),
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.HOME: (ctx) => TabsScreen(_favoriteEnglish),
        AppRoutes.CATEGORIES_ENGLISH: (ctx) =>
            CategoriesEnglishScreen(_availableEnglish, _isFavorite),
        AppRoutes.ENGLISH_DETAIL: (ctx) =>
            EnglishDetailScreen(_toggleFavorite, _isFavorite),
        AppRoutes.SETTINGS: (ctx) => SettingsScreen(_settings, _filterEnglish),
        AppRoutes.FREQUENTLY_ASKED_QUESTIONS: (ctx) =>
            const FrequentlyAskedQuestionsScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (_) {
          return const CategoriesScreen();
        });
      },
    );
  }
}
