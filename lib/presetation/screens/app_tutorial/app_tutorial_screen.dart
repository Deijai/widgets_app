import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(
      {required this.title, required this.caption, required this.imageUrl});
}

final slides = <SlideInfo>[
  SlideInfo(
      title: 'Busca a comida',
      caption:
          'Veniam aliqua velit sint consequat. Dolor non sit est in consectetur enim. Ut culpa incididunt velit ex incididunt non minim culpa minim ex eiusmod. Eiusmod laboris irure ipsum sunt cillum adipisicing mollit veniam nisi et eu commodo ad voluptate. Fugiat nulla commodo cupidatat nisi ea anim.',
      imageUrl: 'assets/images/1.png'),
  SlideInfo(
      title: 'Entrega rapida',
      caption:
          'Fugiat veniam sint irure nostrud minim qui veniam cupidatat veniam nisi dolore irure anim labore. Nisi irure nisi fugiat est ad et amet minim et laboris. Ex adipisicing mollit aliqua reprehenderit tempor aute incididunt id. Ut veniam dolor est occaecat nisi non quis ut ad voluptate sunt ullamco voluptate ut. Labore eu esse laboris aliquip nostrud laborum voluptate occaecat labore. Culpa aliquip incididunt culpa in do cillum.',
      imageUrl: 'assets/images/2.png'),
  SlideInfo(
      title: 'Desfrutar a comida',
      caption:
          'Enim eiusmod officia magna eiusmod est officia Lorem sit sint pariatur id cupidatat. Ea aute voluptate esse voluptate sunt tempor fugiat laborum mollit aute proident in. Velit mollit magna quis aliquip nisi consequat ad. Minim aute culpa aliqua non. Fugiat dolor fugiat deserunt aute occaecat magna proident reprehenderit quis culpa ad cillum nisi deserunt. Officia et proident ullamco cillum amet pariatur pariatur magna occaecat anim quis irure pariatur. Culpa consequat labore ut aliqua ad deserunt non laboris nulla excepteur veniam dolor dolore cillum.',
      imageUrl: 'assets/images/3.png'),
];

class AppTutorialScreen extends StatefulWidget {
  static const name = 'app_tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageViewController = PageController();
  bool endreached = false;

  @override
  void initState() {
    super.initState();
    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;

      if (!endreached && page >= slides.length - 1.5) {
        setState(() {
          endreached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: const BouncingScrollPhysics(),
            children: slides
                .map((SlideInfo slideInfo) => _Slide(
                    title: slideInfo.title,
                    caption: slideInfo.caption,
                    imageUrl: slideInfo.imageUrl))
                .toList(),
          ),
          Positioned(
              right: 20,
              top: 50,
              child: TextButton(
                child: const Text('skip'),
                onPressed: () => context.pop(),
              )),
          endreached
              ? Positioned(
                  bottom: 30,
                  right: 30,
                  child: FadeInRight(
                    from: 15,
                    delay: const Duration(milliseconds: 500),
                    child: FilledButton(
                      onPressed: () => context.pop(),
                      child: const Text('Começar'),
                    ),
                  ))
              : const SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;
  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(imageUrl),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: titleStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              caption,
              style: captionStyle,
            ),
          ],
        ),
      ),
    );
  }
}
