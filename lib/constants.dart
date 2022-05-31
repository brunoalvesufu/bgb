import 'package:bgb/screens/calls_brazil.dart';
import 'package:bgb/screens/calls_cripto.dart';
import 'package:bgb/screens/calls_favorites.dart';
import 'package:bgb/screens/calls_usa.dart';
import 'package:bgb/screens/components/icon_card%20.dart';
import 'package:bgb/screens/config_screen.dart';
import 'package:bgb/screens/share_screen.dart';
import 'package:flutter/material.dart';

const kBackgroundColor = Color(0xFFECEBE6);
const kPrimaryColor = Color(0xFF004AAD);
const kSecondaryColor = Color(0xFF2D68B6);
const kTextColor = Color(0xFF000940);
const kTextLightColor = Color(0xFF747474);
const kBlueColor = Color(0xFF40BAD5);
// const kBrasilColor = Color.fromARGB(255, 3, 84, 6);
// const kUSAColor = Color.fromARGB(255, 110, 11, 4);
// const kCriptoColor = Color.fromARGB(255, 114, 70, 5);
const kBrasilColor = kPrimaryColor;
const kUSAColor = kPrimaryColor;
const kCriptoColor = kPrimaryColor;

const kDefaultPadding = 20.0;

const kDefaultShadow = BoxShadow(
  offset: Offset(0, 15),
  blurRadius: 24,
  color: Colors.black12,
);

const IconCard iconBR = IconCard(
  title: 'Recomendações\nBolsa Brasileira',
  icon: Icons.auto_graph,
  cardBackColor: kSecondaryColor,
  whereTo: CallsScreenBr(
    returning: true,
  ),
);
const IconCard iconUS = IconCard(
  title: 'Recomendações\nBolsa Americana',
  icon: Icons.attach_money,
  cardBackColor: kSecondaryColor,
  whereTo: CallsScreenUs(
    returning: true,
  ),
);
const IconCard iconCP = IconCard(
  title: 'Recomendações\nde Criptoativos',
  icon: Icons.currency_bitcoin,
  cardBackColor: kSecondaryColor,
  whereTo: CallsScreenCp(
    returning: true,
  ),
);
const IconCard iconFV = IconCard(
  title: 'Favoritos',
  icon: Icons.favorite,
  cardBackColor: kSecondaryColor,
  whereTo: CallsFavorites(),
);
const IconCard iconCM = IconCard(
  title: 'Indicar Aplicativo',
  icon: Icons.share,
  cardBackColor: kSecondaryColor,
  whereTo: ShareScreen(),
);
const IconCard iconCG = IconCard(
  title: 'Configurações',
  icon: Icons.settings,
  cardBackColor: kSecondaryColor,
  whereTo: ConfigScreen(),
);

const List<IconCard> iconsList = [
  iconBR,
  iconUS,
  iconCP,
  iconFV,
  iconCM,
  iconCG
];
