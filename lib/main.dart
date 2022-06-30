import 'package:flutter/material.dart';

void main() {
  runApp(Login());
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Color NormalModeColor = const Color.fromARGB(255, 217, 170, 0);
  Color WhiteColor = Colors.white;
  Color BlackColor = Colors.black;
  Color CyanColor = Colors.cyan;

  bool IconIsOn = true;
  bool darkModeIsOff = true;
  String DM = "Dark Mode";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: WhiteColor,
          title: Text(
            "Login Page",
            style: TextStyle(color: BlackColor),
          ),
          actions: [
            ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    if (darkModeIsOff == true) {
                      BlackColor = Color.fromARGB(255, 255, 255, 255);
                      WhiteColor = Color.fromARGB(213, 0, 0, 0);
                      CyanColor = Color.fromARGB(255, 236, 248, 1);
                      darkModeIsOff = false;
                    } else {
                      WhiteColor = Colors.white;
                      BlackColor = Colors.black;
                      CyanColor = Colors.cyan;
                      darkModeIsOff = true;
                    }
                  });
                },
                icon: Icon(
                  darkModeIsOff ? Icons.toggle_off : Icons.toggle_on,
                  color: BlackColor,
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(WhiteColor),
                    foregroundColor: MaterialStateProperty.all(BlackColor)),
                label: Text(
                  darkModeIsOff ? DM : "Light Mode",
                  style: TextStyle(color: BlackColor),
                ))
          ],
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            color: WhiteColor,
            height: 1000,
            child: Column(children: <Widget>[
              const SizedBox(
                height: 100,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 80),
                child: Text(
                  "Welcome Again",
                  style: TextStyle(color: CyanColor, fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  style: TextStyle(color: BlackColor),
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "abcde@fjh.xyz",
                    hintStyle: TextStyle(color: BlackColor),
                    labelStyle: TextStyle(color: CyanColor, fontSize: 15),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 20, color: BlackColor),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  style: TextStyle(color: BlackColor),
                  decoration: InputDecoration(
                    labelText: "Secret Code",
                    hintText: "eg: 1234",
                    hintStyle: TextStyle(color: BlackColor),
                    labelStyle: TextStyle(color: CyanColor, fontSize: 15),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 8, color: BlackColor),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    style: TextStyle(color: BlackColor),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        color: BlackColor,
                        onPressed: () {
                          setState(() {
                            IconIsOn = !IconIsOn;
                          });
                        },
                        icon: IconIsOn
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                      ),
                      labelText: "Password",
                      hintText: "********",
                      hintStyle: TextStyle(color: BlackColor),
                      labelStyle: TextStyle(color: CyanColor, fontSize: 15),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 8, color: BlackColor),
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: IconIsOn,
                  )),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: CyanColor,
                ),
                width: 310,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Log In",
                      style: TextStyle(
                          color: WhiteColor,
                          // backgroundColor: CyanColor,
                          fontSize: 40),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Or login with: ",
                style: TextStyle(fontSize: 17, color: BlackColor),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.facebook_outlined,
                      ),
                      label: const Text("facebook"),
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(CyanColor),
                      )),
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.wordpress,
                    ),
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(CyanColor),
                    ),
                    label: const Text("Wordpress"),
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
