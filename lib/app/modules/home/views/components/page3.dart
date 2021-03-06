import 'package:barberapp/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page3 extends StatelessWidget {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(top: 18, left: 10, right: 10),
        color: Colors.teal,
        child: ListView(
          children: <Widget>[
            CircleAvatar(
              maxRadius: 48,
              backgroundImage: AssetImage('assets/logo.png'),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  //"teste",
                  '${controller.auth.user.username}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                color: Colors.white,
              ),
              height: 150,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: Image.asset('assets/wallet.png'),
                          onPressed: () {},
                        ),
                        Text(
                          'Carteira',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: Image.asset('assets/truck.png'),
                          onPressed: () {},
                        ),
                        Text(
                          'Entregas',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: Image.asset('assets/card.png'),
                          onPressed: () {},
                        ),
                        Text(
                          'Pagamentos',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: Image.asset('assets/contact_us.png'),
                          onPressed: () {},
                        ),
                        Text(
                          'Suporte',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                title: Text('Configura????es'),
                subtitle: Text('Defini????o de privacidade'),
                leading: Image.asset(
                  'assets/settings_icon.png',
                  fit: BoxFit.scaleDown,
                  width: 30,
                  height: 30,
                ),
                trailing: Icon(Icons.chevron_right),
                onTap: () {},
              ),
            ),
            Divider(),
            Container(
              color: Colors.white,
              child: ListTile(
                title: Text('Ajuda & Suporte'),
                subtitle: Text('Centro de ajuda e suporte'),
                leading: Image.asset('assets/support.png'),
                trailing: Icon(
                  Icons.chevron_right,
                ),
              ),
            ),
            Divider(),
            Container(
              color: Colors.white,
              child: ListTile(
                title: Text('FAQ'),
                subtitle: Text('Perguntas e respostas'),
                leading: Image.asset('assets/faq.png'),
                trailing: Icon(Icons.chevron_right),
                onTap: () {},
              ),
            ),
            Divider(),
            Container(
              color: Colors.white,
              child: ListTile(
                title: Text('Sair'),
                subtitle: Text('Deslogar do usu??rio'),
                leading: Image.asset('assets/faq.png'),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  controller.logout();
                },
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
