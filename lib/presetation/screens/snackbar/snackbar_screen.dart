import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCostomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text('Show'),
      action: SnackBarAction(label: 'Ok', onPressed: () {}),
      duration: const Duration(seconds: 3),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar Screen'),
      ),
      body: const _SnackbarView(),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () => showCostomSnackbar(context),
          label: const Text('Mostrar Snackbar'),
          icon: const Icon(Icons.remove_red_eye_outlined)),
    );
  }
}

class _SnackbarView extends StatelessWidget {
  const _SnackbarView();

  void openDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Tem certeza?'),
              content: const Text(
                  'Adipisicing velit labore excepteur sunt veniam culpa ad do culpa esse. Ad dolore est sit voluptate culpa dolor nisi adipisicing anim incididunt. Laboris proident sint voluptate ad laborum commodo dolore excepteur aute elit irure laborum sit. Commodo deserunt tempor occaecat ex cillum nisi aliquip do ullamco dolor. Veniam dolor voluptate tempor laboris nostrud nulla dolor duis est ullamco esse cupidatat exercitation enim. Veniam voluptate quis consectetur esse ad nostrud ut labore. Ad ea Lorem enim aute sunt fugiat tempor et aliquip id irure.'),
              actions: [
                TextButton(
                    onPressed: () => context.pop(),
                    child: const Text('Cancelar')),
                FilledButton(
                    onPressed: () => context.pop(),
                    child: const Text('Aceitar')),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Excepteur amet enim cupidatat irure. Et est sit quis elit esse. Quis et ad est exercitation consequat minim tempor labore excepteur id sunt dolor adipisicing. Consequat sunt mollit deserunt quis aliqua ex.'),
                ]);
              },
              child: const Text('Licenças usadas')),
          FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar dialogo')),
        ],
      ),
    );
  }
}
