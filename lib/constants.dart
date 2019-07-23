import 'package:eclipsed/models/navigation_item.dart';
import 'package:flutter_web/material.dart';
import 'package:eclipsed/routes/about_route.dart';
import 'package:eclipsed/routes/main_route.dart';

enum AppColorScheme { kThemeLight, kThemeDark }

const Color kLightPrimaryColor = Color(0xFF3F51B5);
const Color kDarkPrimaryColor = Colors.redAccent;

const String kFontFamily = 'RobotoLight';

const List<NavigationItem> kNavigationItems = [
  const NavigationItem(text: 'Home', link: MainRoute.routeName),
  const NavigationItem(text: 'About', link: AboutRoute.routeName),
  const NavigationItem(text: 'Explore', link: MainRoute.routeName),
  const NavigationItem(text: 'Resources', link: MainRoute.routeName),
  const NavigationItem(text: 'Search', link: '/bad')
];

const String kNameCaps = 'YOUR NAME';
const String kName = 'Your Name';
const String kTagLine = 'mobile | web';
const String kTitle = 'Eclipsed';

//const String kIntroBackgroundImage =
//    'https://images.unsplash.com/photo-1505673542670-a5e3ff5b14a3?auto=format&fit=crop&w=2148&q=80';
const String kIntroBackgroundImage =
    'https://images.unsplash.com/photo-1504333638930-c8787321eee0?auto=format&fit=crop&w=2148&q=80';
const String kIntroBackgroundImage2 =
    'https://images.unsplash.com/photo-1447433516455-abac93050eab?auto=format&fit=crop&w=2148&q=80';
const String kIntroBackgroundImage3 =
    'https://images.unsplash.com/photo-1454789415558-bdda08f4eabb?auto=format&fit=crop&w=2148&q=80';
const String kSearchImageJupiter =
    'https://www.nasa.gov/sites/default/files/styles/full_width/public/thumbnails/image/jupapr3color-jd-170304.png?itok=H3AGeVPH';
const String kSearchImageVenus =
    'https://solarsystem.nasa.gov/system/downloadable_items/1082_PIA00271_detail.jpg';
const String kSearchImageSaturn =
    'https://solarsystem.nasa.gov/system/news_items/main_images/12983_7504_PIA21046_1280.jpg';