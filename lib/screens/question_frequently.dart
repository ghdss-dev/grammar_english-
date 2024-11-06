import 'package:flutter/material.dart';
import '../components/english_drawer.dart';

class FrequentlyAskedQuestionsScreen extends StatelessWidget {
  const FrequentlyAskedQuestionsScreen({super.key});

  final List<Map<String, String>> faqItems = const [
    {
      'question': 'Como vai ser o Longman English?',
      'answer': 'Um app com assuntos de gramaticas, em formatos de frases '
          'e significados de palavras de inglês para o português ',
    },
    {
      'question': 'Como posso entrar em contato?',
      'answer': 'Você pode entrar em contato pelo nosso suporte via email ou chat.',
    },
    {
      'question': 'Como faço para ver os assuntos de gramática no aplicativo?',
      'answer': 'Não se preocupe! Ao abrir o aplicativo, você verá imediatamente os conteúdos organizados por categorias: '
          'Classes Gramaticais, Expressões, Formação de Palavras e Verbos Frasais.',
    },
    {
      'question': 'De qual forma eu posso adicionar um determinado assunto de inglês como favorito ?',
      'answer': 'Simplesmente acesse a categoria desejada, selecione o assunto de interesse e toque no ícone '
          'de estrela localizado no canto inferior direito da tela. '
          'Depois, vá até a seção de favoritos e clique para visualizar o conteúdo salvo.',
    },
    {
      'question': 'É possível selecionar um único assunto específico de gramática no aplicativo?',
      'answer': 'Sim! Basta ir até a seção de configurações e selecionar a categoria desejada. '
          'Após a escolha, somente o conteúdo de seu interesse será exibido na tela. '
          'Lembre-se que é possível selecionar apenas um assunto por vez.',
    },
    {
      'question': 'Quem tem direito ao acesso no aplicativo',
      'answer': 'Pessoas que baixarem o aplicativo, na loja da play store do google em seu celular',
    },
    {
      'question': 'Vai precisar de passar dados pessoais para ter acesso ao aplicativo',
      'answer': 'Não, não precisa preencher nenhum formulário para ter acesso aos materiais do aplicativo'
          'basta baixar na loja e começar a usar.',
    },
    {
      'question': 'Quais tipos de serviços posso adquirir?',
      'answer': 'Você pode adquirir serviços de aprendizagem voltados para a tradução do inglês para o português, '
          'com foco em temas gramaticais e suas respectivas regras',
    },
    {
      'question': 'Quem tem direito ao acesso',
      'answer': 'Qualquer pessoa que baixar o aplicativo na loja da play store, vai possuir todos os acessos possivéis'
          'para ter o produto no seu celular',
    },
    {
      'question': 'Como eu vejo as frases gramaticais no aplicativo',
      'answer': 'Você vai escolher qualquer assunto: Expressões, Classes gramaticais, Expressões, Verbos Frasais '
          'ou Formações de palavras, depois vai clicar em qualquer assunto da categoria e visualizar as frases gramaticais,'
          'ou então, palavras e seus significados com o inglês ',
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perguntas Frequentes'),
      ),

      drawer: const EnglishDrawer(),

      body: ListView.builder(
        itemCount: faqItems.length,
        itemBuilder: (ctx, index) {
          final faq = faqItems[index];
          return ExpansionTile(
            title: Text(faq['question']!),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(faq['answer']!),
              ),
            ],
          );
        },
      ),
    );
  }
}
