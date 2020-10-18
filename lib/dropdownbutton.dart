import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/commons/reAutoSizeText.dart';
import 'package:hire_me/constrants.dart';
import 'package:hire_me/language/languages.dart';
import 'package:hire_me/main.dart';

class DropDownButton extends StatefulWidget {
  @override
  _DropDownButtonState createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  String _selectedlang = "Change language";

  void onChange(Language language) {
    Locale _locale;
    switch (language.code) {
      case 'en':
        _locale = Locale(language.code);
        break;
      case 'hi':
        _locale = Locale(language.code);
        break;
      default:
        _locale = Locale(language.code);
    }
    MyApp.setLocale(context, _locale);
  }

  @override
  Widget build(BuildContext context) {
    var mediasize = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width - 20,
          decoration: boxDecoration,
          child: DropdownButtonHideUnderline(
            child: ButtonTheme(
              alignedDropdown: true,
              child: DropdownButton(
                onChanged: (Language language) {
                  onChange(language);
                },
                hint: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Icon(Icons.language_outlined),
                    ),
                    ReAutoSizeText(
                      text: _selectedlang ?? "Change language",
                      fontsize: 20,
                    ),
                  ],
                ),
                icon: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        margin:
                            EdgeInsets.only(top: 0.0, left: mediasize - 300.0),
                        child: Icon(EvaIcons.arrowDownOutline))),
                dropdownColor: Colors.white,
                items: Language.languageList()
                    .map<DropdownMenuItem<Language>>((lang) => DropdownMenuItem(
                          value: lang,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(lang.name),
                              Text(
                                lang.code.toUpperCase(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
