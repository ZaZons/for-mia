import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'For Mia <3',
      theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
          brightness: Brightness.light),
      darkTheme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
          brightness: Brightness.dark),
      themeMode: ThemeMode.system,
      home: const MyHomePage(title: 'For Mia <3'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Hi Miaaa\n'
                'Portanto, tu disseste que a tua app tinha deixado de funcionar, então tou a fazer outra, sei que já tou demorar um pouco demais mas a assim, acontece, I guess 😅 (rimei, ha, toma toma 🤣)\n'
                'Espero q gostes 😝🤭💕',
              ),
            ),
            const Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              TextButton(
                child: const Text('FOTOS'),
                onPressed: () =>
                    _launchUrl('https://photos.app.goo.gl/Y4Nv7GbqTPtQozpE6'),
              ),
              TextButton(
                child: const Text('PRINTS'),
                onPressed: () =>
                    _launchUrl('https://photos.app.goo.gl/WafFadnTaT3YtPao7'),
              )
            ]),
            TextButton(
              child: const Text('PICKUP LINES'),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PickupLinesPage())),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SecretPage())),
              child: Image.asset(
                fit: BoxFit.cover,
                'assets/images/img_principal.jpg',
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text('Com amor, do patinho 🦆💕'),
              ],
            ),
          ],
        ),
      ), //
    );
  }
}

class PickupLinesPage extends StatelessWidget {
  const PickupLinesPage({super.key});

  @override
  Widget build(BuildContext context) {
    const pickupLines = {
      'If I could rearrange the alphabet, I\'d put \'U\' and \'I\' together',
      'Are you a parking ticket? Because you\'ve got FINE written all over you',
      'Well, here I am. What are your other two wishes?',
      'Feel my shirt. Know what it\'s made of? Boyfriend material',
      'Did you just come out of the oven? Because you\'re hot',
      'Know what\'s on the menu? Me \'n\' u',
      'It\'s a good thing I have my library card, because I am totally checking you out'
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Pickup lines')),
      body: Center(
        child: Column(
          children: [
            for (var p in pickupLines) ...[
              Flexible(
                child: Text(
                  textAlign: TextAlign.center,
                  p,
                ),
              ),
              if (p != pickupLines.last) ...[
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Divider(),
                ),
                const Spacer(),
              ]
            ],
          ],
        ),
      ),
    );
  }
}

class SecretPage extends StatelessWidget {
  const SecretPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página secreta hehe'),
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset('assets/images/Rows/Row1/Foto_1.jpg'),
                ),
                Expanded(
                  child: Image.asset('assets/images/Rows/Row2/Foto_1.jpg'),
                ),
                Expanded(
                  child: Image.asset('assets/images/Rows/Row3/Foto_1.jpg'),
                ),
                Expanded(
                  child: Image.asset('assets/images/Rows/Row4/Foto_1.jpg'),
                ),
                Expanded(
                  child: Image.asset('assets/images/Rows/Row5/Foto_1.jpg'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                children: const [
                  Expanded(
                    child: Align(
                      child: Text(
                          textAlign: TextAlign.center,
                          'Hi fofinhaaa,\n'
                          'encontraste as minhas fotos preferidas\n'
                          '(e mais algumas bonus hihi 🤭).\n'
                          'São as fotos que mais adoro, as que me lembram de ti, do quão fofinha és e\n'
                          'do quão gosto de ti 😌💕\n'
                          'Amo-te muito Miazita\n'
                          '😚😚😚😚💕💕💕💕💕'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset('assets/images/Rows/Row1/Foto_2.jpg'),
                ),
                Expanded(
                  child: Image.asset('assets/images/Rows/Row2/Foto_2.jpg'),
                ),
                Expanded(
                  child: Image.asset('assets/images/Rows/Row3/Foto_2.jpg'),
                ),
                Expanded(
                  child: Image.asset('assets/images/Rows/Row4/Foto_2.jpg'),
                ),
                Expanded(
                  child: Image.asset('assets/images/Rows/Row5/Foto_1.jpg'),
                ),
              ],
            ),
          ),
          // Row(
          //   children: [
          //     Expanded(
          //       child: Image.asset('assets/images/Rows/Row1/Foto_1.jpg'),
          //     ),
          //     const Spacer(
          //       flex: 1,
          //     ),
          //     Expanded(
          //       child: Image.asset('assets/images/Rows/Row1/Foto_2.jpg'),
          //     ),
          //   ],
          // ),
          // const Spacer(),
          // Row(
          //   children: [
          //     Expanded(
          //       child: Image.asset('assets/images/Rows/Row2/Foto_1.jpg'),
          //     ),
          //     const Spacer(
          //       flex: 1,
          //     ),
          //     Expanded(
          //       child: Image.asset('assets/images/Rows/Row2/Foto_2.jpg'),
          //     ),
          //   ],
          // ),
          // const Spacer(),
          // Row(
          //   children: [
          //     Expanded(
          //       child: Image.asset('assets/images/Rows/Row3/Foto_1.jpg'),
          //     ),
          //     const Spacer(),
          //     Expanded(
          //       child: Image.asset('assets/images/Rows/Row3/Foto_2.jpg'),
          //     ),
          //   ],
          // ),
          // const Spacer(),
          // Row(
          //   children: [
          //     Expanded(
          //       child: Image.asset('assets/images/Rows/Row4/Foto_1.jpg'),
          //     ),
          //     const Spacer(
          //       flex: 1,
          //     ),
          //     Expanded(
          //       child: Image.asset('assets/images/Rows/Row4/Foto_2.jpg'),
          //     ),
          //   ],
          // ),
          // const Spacer(),
          // Row(
          //   children: [
          //     Expanded(
          //         child: Image.asset('assets/images/Rows/Row5/Foto_1.jpg')),
          //     const Spacer(
          //       flex: 1,
          //     ),
          //     Expanded(
          //         child: Image.asset('assets/images/Rows/Row5/Foto_2.jpg')),
          //   ],
          // ),
        ],
      ),
    );
  }
}

Future<void> _launchUrl(url) async {
  final uri = Uri.parse(url);
  try {
    await launchUrl(uri);
  } catch (err) {
    throw 'Can\'t launch $uri fdsa';
  }
}
