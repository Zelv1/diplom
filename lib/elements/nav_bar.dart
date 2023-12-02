import 'package:diplom/pages/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:diplom/animation/fade_route.dart';

const List<Icon> list = <Icon>[
  Icon(Icons.agriculture),
  Icon(Icons.fire_truck),
  Icon(Icons.accessible_forward_sharp)
];

class NavBar extends StatelessWidget {
  final String name;
  final String number;
  const NavBar({
    super.key,
    required this.name,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              name,
              style: const TextStyle(
                  fontFamily: 'Comfortaa', fontWeight: FontWeight.w500),
            ),
            accountEmail: Text(
              number,
              style: const TextStyle(
                  fontFamily: 'Comfortaa', fontWeight: FontWeight.w500),
            ),
            currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey[100],
                radius: 50,
                child: const Icon(
                  Icons.account_circle,
                  color: Colors.black,
                  size: 50,
                )),
            decoration: BoxDecoration(
              color: Colors.blueGrey[100],
            ),
          ),
          const ListTile(
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Темная тема',
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w500,
                      )),
                  SwitchBar(),
                ]),
          ),
          const ListTile(
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Вид транспорта',
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w500,
                      )),
                  ListBox(),
                ]),
          ),
          const Divider(
              //: MediaQuery.of(context).size.height * 0.55,
              ),
          ListTile(
            title: const Text('Выйти',
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w500,
                )),
            onTap: () {
              Navigator.push(
                  context, FadeRoute(page: const AuthPage(labelText: '')));
            },
          )
        ],
      ),
    );
  }
}

class SwitchBar extends StatefulWidget {
  const SwitchBar({super.key});

  @override
  State<SwitchBar> createState() => _SwitchBarState();
}

class _SwitchBarState extends State<SwitchBar> {
  bool dark = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: dark,
      activeColor: Colors.blueAccent[700],
      onChanged: (bool value) {
        setState(() {
          dark = value;
        });
      },
    );
  }
}

class ListBox extends StatefulWidget {
  const ListBox({super.key});

  @override
  State<ListBox> createState() => _ListBoxState();
}

class _ListBoxState extends State<ListBox> {
  Icon icon = list.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<Icon>(
      value: icon,
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(),
      items: list.map<DropdownMenuItem<Icon>>((Icon value) {
        return DropdownMenuItem<Icon>(value: value, child: value);
      }).toList(),
      onChanged: (value) {
        setState(() {
          icon = value!;
        });
      },
    );
  }
}
