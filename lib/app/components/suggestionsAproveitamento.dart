import 'package:controle_producao/app/components/titleDefault.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class SuggestionsDefault extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TypeAheadField(
      textFieldConfiguration: TextFieldConfiguration(
        style: TextStyle(
          fontSize: 20,
        ),
        decoration: InputDecoration(
          labelText: "Empresa do cliente",
        ),
      ),
      suggestionsCallback: (String pattern) {
        return ["teste", "tete", "te", "te", "te", "te"];
      },
      itemBuilder: (BuildContext context, itemData) {
        return Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 15,
                  child: TitleDefault(
                    // Fazer tratamento ate 10 caracteres
                    title: "Fulano de tal",
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Alt: 150,3 cm"),
                      Text("Lar: 150,3 cm"),
                      Text("Comp: 150,3 cm"),
                    ],
                  ),
                ),
              ],
            ),
            Divider(),
          ],
        );
      },
      onSuggestionSelected: (suggestion) {
        // print(suggestion);
      },
    );
  }
}
