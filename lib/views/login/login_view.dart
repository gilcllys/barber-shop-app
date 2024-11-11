import 'package:babershop_app/views/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFF302238),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Image.asset('assets/images/logo.png'),
              ),
              Column(
                children: [
                  SizedBox(
                    width: 328,
                    height: 70,
                    child: TextFormField(
                      controller: controller.user,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                          hintStyle: const TextStyle(
                            color: Colors.white,
                          ),
                          hintText: 'Digite o seu usuário',
                          contentPadding: const EdgeInsets.only(left: 20),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 3,
                              color: Colors.greenAccent,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 3,
                              color: Colors.greenAccent,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 328,
                    height: 70,
                    child: TextFormField(
                      obscureText: true,
                      controller: controller.password,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                          hintStyle: const TextStyle(
                            color: Colors.white,
                          ),
                          hintText: 'Digite a senha',
                          contentPadding: const EdgeInsets.only(left: 20),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 3,
                              color: Colors.greenAccent,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 3,
                              color: Colors.greenAccent,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                          )),
                    ),
                  )
                ],
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xffBD89FF),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {
                    if (controller.user.value.text.isNotEmpty &&
                        controller.password.value.text.isNotEmpty) {
                      controller.goToMainPage();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          showCloseIcon: true,
                          backgroundColor: Colors.red,
                          content:
                              Text('Campo de nome e senha são obrigatórios'),
                        ),
                      );
                    }
                  },
                  icon: const Icon(Icons.check),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
