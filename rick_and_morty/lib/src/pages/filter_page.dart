import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:rick_and_morty/src/models/gender.dart';
import 'package:rick_and_morty/src/models/status.dart';
import 'package:rick_and_morty/src/providers/gender_provider.dart';
import 'package:rick_and_morty/src/providers/status_provider.dart';

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
        body: Row(
          children: [
            GenderFiltersWidget(),
            StatusFiltersWidget(),
          ],
        ));
  }
}

class StatusFiltersWidget extends StatelessWidget {
  const StatusFiltersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}

class GenderFiltersWidget extends StatelessWidget {
  const GenderFiltersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ReactiveCheckbox()],
    );
  }
}
