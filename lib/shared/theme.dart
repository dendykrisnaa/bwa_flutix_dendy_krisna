part of 'shared.dart';

const double defaultMargin = 24;

Color mainColor = Color(0xFF503E9D);
Color accentColor1 = Color(0xFF2C1F63);
Color accentColor2 = Color(0xFFFBD460);
Color accentColor3 = Color(0xFFADADAD);
//uts
Color accentColor4 = Color(0xFF7D7314);
Color accentColor5 = Color(0xFF79712B);

TextStyle blacktextFont = GoogleFonts.raleway()
    .copyWith(color: Colors.black, fontWeight: FontWeight.w500);
TextStyle whitetextFont = GoogleFonts.raleway()
    .copyWith(color: Colors.white, fontWeight: FontWeight.w500);
TextStyle purpletextFont = GoogleFonts.raleway()
    .copyWith(color: mainColor, fontWeight: FontWeight.w500);
TextStyle greytextFont = GoogleFonts.raleway()
    .copyWith(color: accentColor3, fontWeight: FontWeight.w500);

TextStyle whiteNumberFont =
    GoogleFonts.openSans().copyWith(color: Colors.white);
TextStyle yellowNumberFont =
    GoogleFonts.openSans().copyWith(color: accentColor2);

//uts text font
TextStyle browntextFont = GoogleFonts.raleway()
    .copyWith(color: accentColor5, fontWeight: FontWeight.w500);
