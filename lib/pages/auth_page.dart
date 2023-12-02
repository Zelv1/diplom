import 'package:flutter/material.dart';
import 'package:diplom/pages/order_list.dart';
import 'package:diplom/animation/fade_route.dart';
// ignore: unused_import
import 'package:diplom/elements/order_card.dart';

void hello() {}

class AuthPage extends StatelessWidget {
  final String labelText;
  const AuthPage({super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [
              Colors.orange[200]!,
              Colors.orange[400]!,
              Colors.orange[600]!
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: authPage(context),
          ),
        ),
      ),
    );
  }

  Center authPage(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9 > 250 ? 500 : null,
        height: 600,
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(35)),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Icon(Icons.delivery_dining_rounded, size: 200),
            const SizedBox(
              height: 45,
            ),
            loginField('Логин', context),
            const SizedBox(
              height: 10,
            ),
            loginField('Пароль', context),
            const SizedBox(
              height: 10,
            ),
            const TextButton(
                onPressed: hello,
                child: Text(
                  'Забыли логин или пароль?',
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF2962FF),
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w500),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.03,
            ),
            signUpButton(context),
          ],
        ),
      ),
    );
  }

  Container signUpButton(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blueAccent,
            Colors.blueAccent[400]!,
            Colors.blueAccent[700]!,
          ],
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                FadeRoute(
                  page: const OrderList(),
                ));
          },
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(350, 55),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          child: const Text(
            'Вход',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                fontFamily: 'Comfortaa'),
          )),
    );
  }

  ConstrainedBox loginField(String labelText, context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 350, maxHeight: 55),
      child: TextFormField(
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(27),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black54, width: 1),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: const OutlineInputBorder(),
            hintText: labelText,
            hintStyle: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                fontFamily: 'Comfortaa',
                color: Colors.black)),
      ),
    );
  }
}
