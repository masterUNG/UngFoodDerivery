import 'package:flutter/material.dart';
import 'package:ungfoodderviry/utility/my_constant.dart';
import 'package:ungfoodderviry/widgets/show_logo.dart';
import 'package:ungfoodderviry/widgets/show_title.dart';

class Authen extends StatefulWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  bool redEye = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(
          FocusScopeNode(),
        ),
        behavior: HitTestBehavior.opaque,
        child: Container(
          decoration: MyConstant().gradienBox(),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildLogo(),
                  buildAppName(),
                  buildEmail(),
                  buildPassword(),
                  buildLogin(),
                  buildCreateAccount(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row buildCreateAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowTitle(
          title: 'Non Account ? ',
          textStyle: MyConstant().h2Style(),
        ),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, '/createAccount'),
          child: ShowTitle(
            title: 'Create Account',
            textStyle: MyConstant().h2WhiteStyle(),
          ),
        ),
      ],
    );
  }

  Container buildLogin() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.primary),
        onPressed: () {},
        child: Text('Login'),
      ),
    );
  }

  Container buildEmail() {
    return Container(
      decoration: MyConstant().whiteBox(),
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.contact_mail,
            color: MyConstant.dark,
          ),
          label: ShowTitle(
            title: 'Email :',
            textStyle: MyConstant().h3Style(),
          ),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Container buildPassword() {
    return Container(
      decoration: MyConstant().whiteBox(),
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
        obscureText: redEye,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                redEye = !redEye;
              });
            },
            icon: Icon(Icons.remove_red_eye),
          ),
          prefixIcon: Icon(
            Icons.lock_outline,
            color: MyConstant.dark,
          ),
          label: ShowTitle(
            title: 'Password :',
            textStyle: MyConstant().h3Style(),
          ),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Container buildAppName() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: ShowTitle(
        title: MyConstant.appName,
        textStyle: MyConstant().h1Style(),
      ),
    );
  }

  Container buildLogo() {
    return Container(
      width: 150,
      child: ShowLogo(),
    );
  }
}
