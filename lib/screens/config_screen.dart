// ignore_for_file: prefer_const_constructors, import_of_legacy_library_into_null_safe, prefer_const_literals_to_create_immutables

import 'package:bgb/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

class ConfigScreen extends StatelessWidget {
  const ConfigScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: kPrimaryColor,
            ),
            padding: EdgeInsets.only(left: kDefaultPadding),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'CONFIGURAÇÕES'.toUpperCase(),
            style: TextStyle(color: kPrimaryColor),
          ),
          centerTitle: true,
          backgroundColor: kBackgroundColor,
        ),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(kDefaultPadding),
            children: <Widget>[
              SettingsGroup(
                title: 'Configurações Gerais',
                children: <Widget>[
                  buildAccount(),
                  buildNotifications(),
                ],
              ),
              SettingsGroup(
                title: 'Informações Gerais',
                children: <Widget>[
                  buildReport(),
                  buildAbout(),
                ],
              ),
            ],
          ),
        ));
  }

  Widget buildAccount() => SimpleSettingsTile(
        title: 'Configurações da Conta',
        subtitle: '',
        leading: Icon(
          Icons.account_box,
          color: kPrimaryColor,
        ),
        child: AccountPage(),
      );

  Widget buildNotifications() => SimpleSettingsTile(
        title: 'Notificações',
        subtitle: '',
        leading: Icon(
          Icons.notification_important,
          color: kPrimaryColor,
        ),
        child: Container(),
      );

  Widget buildReport() => SimpleSettingsTile(
        title: 'Reportar Problema',
        subtitle: '',
        leading: Icon(
          Icons.bug_report,
          color: kPrimaryColor,
        ),
        child: Container(),
      );

  Widget buildAbout() => SimpleSettingsTile(
        title: 'Sobre',
        subtitle: '',
        leading: Icon(
          Icons.info,
          color: kPrimaryColor,
        ),
        child: Container(),
      );
}

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  static const keyLanguage = 'key-language';

  @override
  Widget build(BuildContext context) {
    return SettingsScreen(children: [
      DropDownSettingsTile(
          title: 'Idioma',
          settingKey: keyLanguage,
          selected: 1,
          values: <int, String>{
            1: 'English',
            2: 'Português Brasileiro',
          }),
    ]);
  }
}
