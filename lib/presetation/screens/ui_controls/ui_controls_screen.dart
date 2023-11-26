import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ui Controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            value: isDeveloper,
            title: const Text('Developer Mode'),
            subtitle: const Text('Controles adicionais'),
            onChanged: (value) {
              setState(() {
                isDeveloper = !isDeveloper;
              });
            }),
        ExpansionTile(
            title: const Text('Veículo de transportes'),
            subtitle: Text('$selectTransportation'),
            children: [
              RadioListTile(
                  title: const Text('By Car'),
                  subtitle: const Text('Viajar de carro'),
                  value: Transportation.car,
                  groupValue: selectTransportation,
                  onChanged: (value) {
                    setState(() {
                      selectTransportation = Transportation.car;
                    });
                  }),
              RadioListTile(
                  title: const Text('By Submarine'),
                  subtitle: const Text('Viajar de submarino'),
                  value: Transportation.submarine,
                  groupValue: selectTransportation,
                  onChanged: (value) {
                    setState(() {
                      selectTransportation = Transportation.submarine;
                    });
                  }),
              RadioListTile(
                  title: const Text('By Plane'),
                  subtitle: const Text('Viajar de avião'),
                  value: Transportation.plane,
                  groupValue: selectTransportation,
                  onChanged: (value) {
                    setState(() {
                      selectTransportation = Transportation.plane;
                    });
                  }),
              RadioListTile(
                  title: const Text('By Boat'),
                  subtitle: const Text('Viajar de barco'),
                  value: Transportation.boat,
                  groupValue: selectTransportation,
                  onChanged: (value) {
                    setState(() {
                      selectTransportation = Transportation.boat;
                    });
                  }),
            ]),
        CheckboxListTile(
            title: const Text('wantsBreakfast?'),
            value: wantsBreakfast,
            onChanged: (value) {
              setState(() {
                wantsBreakfast = !wantsBreakfast;
              });
            }),
        CheckboxListTile(
            title: const Text('wantsLunch?'),
            value: wantsLunch,
            onChanged: (value) {
              setState(() {
                wantsLunch = !wantsLunch;
              });
            }),
        CheckboxListTile(
            title: const Text('wantsDinner?'),
            value: wantsDinner,
            onChanged: (value) {
              setState(() {
                wantsDinner = !wantsDinner;
              });
            }),
      ],
    );
  }
}
