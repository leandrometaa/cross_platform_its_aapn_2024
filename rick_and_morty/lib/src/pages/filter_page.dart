import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

class FilterPage extends ConsumerWidget {
  FilterPage({super.key});

  final form = FormGroup({
    "genderFemale": FormControl<bool>(value: false),
    "genderMale": FormControl<bool>(value: false),
    "genderGenderless": FormControl<bool>(value: false),
    "genderUnknown": FormControl<bool>(value: false),
    'statusAlive': FormControl<bool>(value: false),
    'statusDead': FormControl<bool>(value: false),
    'statusUnknown': FormControl<bool>(value: false),
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print(form.value);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filtra i personaggi!"),
      ),
      body: ReactiveForm(
        formGroup: form,
        child: Column(
          children: [
            const Row(
              children: [
                Expanded(child: GenderFiltersWidget()),
                Expanded(child: StatusFiltersWidget()),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                print(form.value);
              },
              child: const Text("Aggiorna"),
            )
          ],
        ),
      ),
    );
  }
}

class StatusFiltersWidget extends StatelessWidget {
  const StatusFiltersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReactiveCheckboxListTile(
          formControlName: "statusAlive",
          title: const Text("Alive?"),
        ),
        ReactiveCheckboxListTile(
          formControlName: "statusDead",
          title: const Text("Dead?"),
        ),
        ReactiveCheckboxListTile(
          formControlName: "statusUnknown",
          title: const Text("Unknown?"),
        ),
      ],
    );
  }
}

class GenderFiltersWidget extends StatelessWidget {
  const GenderFiltersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReactiveCheckboxListTile(
          formControlName: "genderFemale",
          title: const Text("Female?"),
        ),
        ReactiveCheckboxListTile(
          formControlName: "genderMale",
          title: const Text("Male?"),
        ),
        ReactiveCheckboxListTile(
          formControlName: "genderGenderless",
          title: const Text("Genderless?"),
        ),
        ReactiveCheckboxListTile(
          formControlName: "genderUnknown",
          title: const Text("Unknown?"),
        ),
      ],
    );
  }
}
