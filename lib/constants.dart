import 'package:bgb/screens/components/icon_card%20.dart';
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
  icon: Icons.flag,
  cardBackColor: kSecondaryColor,
);
const IconCard iconUS = IconCard(
    title: 'Bolsa\nAmericana',
    icon: Icons.flag_circle,
    cardBackColor: kSecondaryColor);
const IconCard iconCP = IconCard(
    title: 'Criptoativos',
    icon: Icons.flag_circle_outlined,
    cardBackColor: kSecondaryColor);

const List<IconCard> iconsList = [iconBR, iconUS, iconCP];
