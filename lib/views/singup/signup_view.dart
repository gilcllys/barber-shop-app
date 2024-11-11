import 'package:babershop_app/views/singup/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF302238),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cadastre-se',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Crie sua conta',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 328,
                        height: 70,
                        child: TextFormField(
                          controller: controller.name,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                              hintStyle: const TextStyle(
                                color: Colors.white,
                              ),
                              icon: const Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                              hintText: 'Nome',
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
                          controller: controller.email,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                              hintStyle: const TextStyle(
                                color: Colors.white,
                              ),
                              icon: const Icon(
                                Icons.email_rounded,
                                color: Colors.white,
                              ),
                              hintText: 'Email',
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
                          controller: controller.password,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                              hintStyle: const TextStyle(
                                color: Colors.white,
                              ),
                              icon: const Icon(
                                Icons.remove_red_eye,
                                color: Colors.white,
                              ),
                              hintText: 'Senha',
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
                          controller: controller.repeatPassword,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                              hintStyle: const TextStyle(
                                color: Colors.white,
                              ),
                              icon: const Icon(
                                Icons.remove_red_eye,
                                color: Colors.white,
                              ),
                              hintText: 'Repetir a senha',
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
                    ],
                  ),
                ),
                SizedBox(
                  width: 308,
                  height: 61,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffBD89FF),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text('Continuar'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      const SizedBox(
                        width: 370,
                        child: Divider(
                          thickness: 1.3,
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        color: const Color(0xFF302238),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Já tem um conta ?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(0),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.white, width: 2)
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                          return controller.goToLogin();
                        },
                        child: const Text(
                          'Entrar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
          
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
