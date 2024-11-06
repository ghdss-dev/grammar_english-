# Grammar English

Tem como objetivo principal facilitar o aprendizado e o ensino da língua inglesa para falantes nativos e não nativos. Ele é projetado para fornecer definições claras, exemplos de uso contextualizados, pronúncias, sinônimos, antônimos, e outras informações linguísticas relevantes que ajudam os usuários a entender e usar o inglês de forma eficaz. Além disso, muitos dicionários Longman incluem recursos adicionais, como explicações gramaticais, listas de palavras comuns, e exercícios práticos para reforçar o aprendizado.

Na parte gramatical, o Sistema Longman Dicionário de Inglês oferece explicações detalhadas sobre o uso correto de estruturas gramaticais em inglês. Ele inclui informações sobre:

Formas verbais: Conjugação e uso adequado dos tempos verbais.
Estrutura de frases: Como construir frases corretamente, incluindo a ordem das palavras.
Preposições e conjunções: Orientações sobre o uso correto e exemplos práticos.
Regras de concordância: Explicações sobre como adjetivos, substantivos e verbos concordam em gênero e número.
Uso de artigos: Diferença entre artigos definidos e indefinidos e seu uso apropriado.
Esses recursos gramaticais são projetados para ajudar o usuário a entender as regras e aplicá-las corretamente na comunicação em inglês.

## Conhecimentos Adquiridos nesse projeto 

Conhecimento em widgets do Material Design que identifica a implementação das diretrizes de interface humana para o android, pelo widget foi feito o controle de estado. Este tipo de widget não possibilitou as alterações dinâmicas, que alinhou o comportamento da interface estática.Eles foram  utilizados para a criação de estruturas não mutáveis nos aplicativos (telas, menus, imagens etc.), ou seja, para capturar informações vindas de entradas de dados dos usuários, Orientação a objetos e Arquiteturas padrões de projeto. 

Foi usado o List View que é o widget de rolagem. Ele exibe seus filhos um após o outro na direção de rolagem. No eixo transversal, os filhos são obrigados a preencher o ListView. Se não for nulo, o itemExtent força os filhos a terem a extensão especificada na direção de rolagem. Se não for nulo, o protótipoItem força os filhos a terem a mesma extensão que o widget fornecido na direção de rolagem. Especificar um itemExtent ou um protótipoItem é mais eficiente do que permitir que os filhos determinem sua própria extensão porque o mecanismo de rolagem pode fazer uso do conhecimento prévio da extensão dos filhos para economizar trabalho, por exemplo, quando a posição de rolagem muda drasticamente. Você não pode especificar ambos itemExtent e protótipoItem, apenas um ou nenhum deles.

Conhecimento do SwitchListTile que é O bloco de lista inteiro é interativo: tocar em qualquer lugar do bloco alterna o switch. Tocar e arrastar o Switch também aciona o callback onChanged.

## Dificuldades com o Flutter 

Enfrentei desafios ao estruturar os containers em subcamadas. Em diversas situações, a disposição dessas camadas não correspondia aos padrões esperados nas telas, devido ao redimensionamento que desalinhava os elementos em relação ao layout padrão do aplicativo.

Também tive dificuldades com o SwitchListTile na parte de configurações. Sempre que selecionava uma opção, ela não permanecia marcada corretamente, o que impedia que a escolha fosse refletida na tela relacionada à formação de palavras, expressões gramaticais e classes de palavras. 

Na tela de favoritos, houve um problema significativo ao clicar na estrela de marcação. A estrela não exibia o formato padrão que a destacaria como um item importante para estudo, tornando difícil registrar o conteúdo correspondente. Para corrigir esse problema, criei uma variável global que, ao ser acionada, controlava a escolha do contéudo do usuário na tela, garantindo que o clique na estrela fosse reconhecido pelo sistema.

## Tecnologias Utilizadas

-[Dart](https://dart.dev/guides) 

-[Flutter](https://docs.flutter.dev/)

## Baixar e visualizar o Projeto 

```bash 
  
  $ fazer um git clone do projeto pelo terminal ou baixar e obter via winrar  
  
  $ Obter o Android Studio e o VsCode instalado na sua maquina
  
  $ Obter Java Jre e Jdk na versão 11.0 ou outras versões para ter o Android Instalado 
  
  $ Ativar o modulo desenvolvedor do Android no seu celular para testar o aplicativo 
  
```

## Testar o projeto no celular

```bash 

  $ Clicar na pasta build/outputs/flutter-apk/app-release.apk

  $ Depois clicar na setinha para baixo do github - Download raw file

```

## Como executar o projeto no terminal ou vscode

```bash
    # clonar repositório
    git clone https://github.com/ghdss-dev/longman_english.git

    # entrar na pasta do projeto cdp
    cd longman_english 
  
    # executar o projeto
    flutter run

    Obs: Só siga esses passos, caso tenha o android Studio instalado e se for usuário linux 
```

 ## Visualização do Projeto 

link do aplicativo = https://www.youtube.com/watch?v=o2jVSQSGGi4&t=11s
