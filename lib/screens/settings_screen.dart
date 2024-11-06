import 'package:flutter/material.dart';
import '../components/english_drawer.dart';
import '../models/settings.dart';

class SettingsScreen extends StatefulWidget {
  final Settings settings;

  final Function(Settings) onSettingsChanged;

  const SettingsScreen(this.settings, this.onSettingsChanged, {super.key});

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late Settings _settings;

  @override
  void initState() {
    super.initState();
    _settings = widget.settings;
  }

  Widget _createSwitch(
    String title,
    String subtitle,
    bool value,
    void Function(bool)? onChanged,
  ) {
    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: (value) {
        onChanged!(value);
        widget.onSettingsChanged(_settings);
      },
      activeColor: Colors.blue,
      inactiveThumbColor: Colors.grey,
      inactiveTrackColor: Colors.grey[300],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Configurações'),
        ),
        drawer: const EnglishDrawer(),
        body: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Configurações',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Expanded(
                child: ListView(
              children: <Widget>[
                _createSwitch('A ou An', 'Artigos indefinidos em inglês',
                    _settings.is_A_An_Free, (value) {
                  setState(() {
                    _settings.is_A_An_Free = value;
                  });
                }),
                _createSwitch(
                    'Adjetivos',
                    'são palavras que descrevem ou modificam substantivos',
                    _settings.is_Adjetive_Free, (value) {
                  setState(() {
                    _settings.is_Adjetive_Free = value;
                  });
                }),
                _createSwitch(
                    'Identificação das palavras',
                    'Visualizar palavras importantes',
                    _settings.is_Identification_Words_Free, (value) {
                  setState(() {
                    _settings.is_Identification_Words_Free = value;
                  });
                }),
                _createSwitch(
                    'Palavras de ligação',
                    'Diferenciar entre:and/but/so/nor  ',
                    _settings.is_Linking_Words_Free, (value) {
                  setState(() {
                    _settings.is_Linking_Words_Free = value;
                  });
                }),
                _createSwitch(
                    'Plural dos substantivos',
                    'Complementar as palavras que está no singular',
                    _settings.is_Plural_Of_Nouns_Free, (value) {
                  setState(() {
                    _settings.is_Plural_Of_Nouns_Free = value;
                  });
                }),
                _createSwitch(
                    'Preposições em ingles',
                    'Complemento de palavras em preposições',
                    _settings.is_Preposion_Free, (value) {
                  setState(() {
                    _settings.is_Preposion_Free = value;
                  });
                }),
                _createSwitch(
                    'Contável e Incontável',
                    'Complemento de ser contável ou incontável',
                    _settings.is_Countable_Uncountable_Free, (value) {
                  setState(() {
                    _settings.is_Countable_Uncountable_Free = value;
                  });
                }),
                _createSwitch(
                    'Verbos',
                    'Complemento de frases com os tipos de verbos',
                    _settings.is_Verbs_Free, (value) {
                  setState(() {
                    _settings.is_Verbs_Free = value;
                  });
                }),
                _createSwitch('Expressões', 'Decisões de palavras com frases',
                    _settings.is_Expression_Free, (value) {
                  setState(() {
                    _settings.is_Expression_Free = value;
                  });
                }),
                _createSwitch(
                    'Formações de Palavras ',
                    'O jeito certo de formas frases no inglês',
                    _settings.is_Words_Formations_Free, (value) {
                  setState(() {
                    _settings.is_Words_Formations_Free = value;
                  });
                }),
                _createSwitch(
                    'Verbos Frasais',
                    'A combinação perfeita de preposições com advérbios',
                    _settings.is_Pharsal_Verbs_Free, (value) {
                  setState(() {
                    _settings.is_Pharsal_Verbs_Free = value;
                  });
                })
              ],
            ))
          ],
        ));
  }
}
