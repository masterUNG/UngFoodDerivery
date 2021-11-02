import 'package:flutter/material.dart';
import 'package:ungfoodderviry/utility/my_constant.dart';
import 'package:ungfoodderviry/widgets/show_title.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  String? typeUser;
  final formKey = GlobalKey<FormState>();
  bool checkRadio = true;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Container buildName() {
    return Container(
      decoration: MyConstant().whiteBox(),
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
        controller: nameController,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please Fill Name in Blank';
          } else {
            return null;
          }
        },
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.fingerprint,
            color: MyConstant.dark,
          ),
          label: ShowTitle(
            title: 'Display Name :',
            textStyle: MyConstant().h3Style(),
          ),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Container buildEmail() {
    return Container(
      decoration: MyConstant().whiteBox(),
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
        controller: emailController,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please Fill Email in Blank';
          } else {
            return null;
          }
        },
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
        controller: passwordController,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please Fill Password in Blank';
          } else {
            return null;
          }
        },
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Account'),
        backgroundColor: MyConstant.primary,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusScopeNode()),
        behavior: HitTestBehavior.opaque,
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  buildName(),
                  buildTitle(),
                  buildBuyer(),
                  buildShopper(),
                  buildRider(),
                  checkRadio
                      ? SizedBox()
                      : typeUser == null
                          ? ShowTitle(
                              title: 'Please Choose Type User',
                              textStyle: MyConstant().h3RedStyle())
                          : SizedBox(),
                  buildEmail(),
                  buildPassword(),
                  buildSave(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> processCreateAccount() async {
    String name = nameController.text;
    String email = emailController.text;
    String password = passwordController.text;

    print('name = $name, email = $email, password = $password, tyUser = $typeUser');
  }

  Container buildSave() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.primary),
        onPressed: () {
          if (formKey.currentState!.validate()) {
            setState(() {
              checkRadio = false;
            });

            if (typeUser != null) {
              processCreateAccount();
            }
          }
        },
        child: Text('Save'),
      ),
    );
  }

  Container buildBuyer() {
    return Container(
      width: 250,
      child: RadioListTile(
        title: ShowTitle(
          title: 'Buyer',
          textStyle: MyConstant().h3Style(),
        ),
        value: 'buyer',
        groupValue: typeUser,
        onChanged: (value) {
          setState(() {
            typeUser = value.toString();
          });
        },
      ),
    );
  }

  Container buildShopper() {
    return Container(
      width: 250,
      child: RadioListTile(
        title: ShowTitle(
          title: 'Shopper',
          textStyle: MyConstant().h3Style(),
        ),
        value: 'shopper',
        groupValue: typeUser,
        onChanged: (value) {
          setState(() {
            typeUser = value.toString();
          });
        },
      ),
    );
  }

  Container buildRider() {
    return Container(
      width: 250,
      child: RadioListTile(
        title: ShowTitle(
          title: 'Rider',
          textStyle: MyConstant().h3Style(),
        ),
        value: 'rider',
        groupValue: typeUser,
        onChanged: (value) {
          setState(() {
            typeUser = value.toString();
          });
        },
      ),
    );
  }

  Row buildTitle() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ShowTitle(
            title: 'Type User :',
            textStyle: MyConstant().h2Style(),
          ),
        ),
      ],
    );
  }
}
