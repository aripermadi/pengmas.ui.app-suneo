part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isEmailValid = false;
  bool isPasswordVaild = false;
  bool isSigningIn = false;

  // final String assetName = "assets/images/newpack/7 SCENE.svg";
  // final Widget svg = SvgPicture.asset(assetName, semanticsLabel: 'Image Sign In');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(color: accentColor4),
      SafeArea(
          child: Container(
        color: Colors.white,
      )),
      Container(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 200,
                  width: 400,
                  // child: Image.asset(),
                  child: Image(
                      image: AssetImage("assets/images/newpack/7 SCENE.png")),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 40),
                  child: Text(
                    "Halo, Apa Kabar?",
                    style: blackTextFont.copyWith(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: defaultMargin, right: defaultMargin),
                  child: TextField(
                    onChanged: (text) {
                      setState(() {
                        isEmailValid = EmailValidator.validate(text);
                      });
                    },
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Email",
                      hintText: "Email",
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: defaultMargin, right: defaultMargin),
                  child: TextField(
                    onChanged: (text) {
                      setState(() {
                        isPasswordVaild = text.length >= 6;
                      });
                    },
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Password",
                      hintText: "Password",
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Center(
                  child: Container(
                    width: 250,
                    height: 50,
                    margin: EdgeInsets.only(top: 40, bottom: 30),
                    child: RaisedButton(
                      child: Text(
                        "Masuk",
                        style: whiteTextFont.copyWith(fontSize: 16),
                      ),
                      color: mainColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      onPressed: () {
                        context.bloc<PageBloc>().add(GoToMainPage());
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: defaultMargin, right: defaultMargin),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Pengguna Baru? ",
                        style:
                            greyTextFont.copyWith(fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Mulai sekarang juga",
                        style: purpleTextFont,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ]));
  }
}
