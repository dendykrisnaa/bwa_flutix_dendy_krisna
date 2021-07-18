part of 'pages.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //memindahkan posisi container new experience ke atas
            Container(
              margin: EdgeInsets.only(top: 70, bottom: 16),
              child: Text(
                "New Experience",
                style: blacktextFont.copyWith(fontSize: 20),
              ),
            ),
            Container(
              height: 136,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/logo.png"))),
            ),
            
            Text(
              "Watch a new movie much\neasier than any befpre",
              style: greytextFont.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w300),
              textAlign: TextAlign.center,
            ),
            Container(
              width: 250,
              height: 46,
              margin: EdgeInsets.only(top: 70, bottom: 19),
              child: ElevatedButton(
                  child: Text(
                    "Get Started",
                    style: whitetextFont.copyWith(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(primary: accentColor4), //mengubah warna button
                  onPressed: () {
                    context
                        .read<PageBloc>()
                        .add(GoToRegistrationPage(RegistrationData()));
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Already have an account? ",
                  style: greytextFont.copyWith(fontWeight: FontWeight.w400),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<PageBloc>().add(GoToLoginPage());
                  },
                  child: Text(
                    "Sign In",
                    style: browntextFont, //ganti warna teks sign in
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
