import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({super.key});

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  final _formKey = GlobalKey<FormState>();
  final articleNomController = TextEditingController();
  final articleDescriptionController = TextEditingController();
  String articleProvenance = 'Chine';
  DateTime articleDateAjout = DateTime.now();

  @override
  void dispose() {
    super.dispose();
    articleNomController.dispose();
    articleDescriptionController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // nom de l'article
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Article",
                      hintText: "Nom de l'article",
                      border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Le champ est obligatoire";
                    }
                    return null;
                  },
                  controller: articleNomController,
                ),
              ),
              // Description de l'article
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: "Description",
                      hintText: "Description de l'article",
                      border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "La description est obligatoire";
                    }
                    return null;
                  },
                  controller: articleDescriptionController,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: DropdownButtonFormField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  items: const [
                    DropdownMenuItem(
                      value: "Chine",
                      child: Text("Venant de Chine"),
                    ),
                    DropdownMenuItem(
                      value: "Doubai",
                      child: Text("Venant de Doubai"),
                    ),
                    DropdownMenuItem(
                      value: "Turky",
                      child: Text("Venant de Turky"),
                    ),
                  ],
                  value: articleProvenance,
                  onChanged: (value) {
                    setState(() {
                      articleProvenance = value!;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: DateTimeFormField(
                  decoration: const InputDecoration(
                    labelText: 'Enter Date',
                  ),
                  firstDate: DateTime.now().add(const Duration(days: 10)),
                  lastDate: DateTime.now().add(const Duration(days: 40)),
                  initialPickerDateTime:
                      DateTime.now().add(const Duration(days: 20)),
                  onChanged: (DateTime? value) {
                    articleDateAjout = value!;
                  },
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final nom = articleNomController.text;
                      final description = articleDescriptionController.text;

                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Envoi en cours...")));
                      FocusScope.of(context).requestFocus(FocusNode());
                      print(
                          "Nom :  $nom  description :  $description Provenance : $articleProvenance Date d'ajout : $articleDateAjout");
                    }
                  },
                  child: Text("Envoyer"),
                ),
              )
            ],
          ),
        ));
  }
}
