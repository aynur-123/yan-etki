import 'package:flutter/material.dart';

class KisiselBilgiler extends StatefulWidget {
  @override
  _KisiselBilgilerState createState() => _KisiselBilgilerState();
}

class _KisiselBilgilerState extends State<KisiselBilgiler> {
  String dropDownValue1 = '0 +Rh';
  String dropDownValue2 = 'Kadın';
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Ad Soyad',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
              ),
              TextFormField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Yaş(*)',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Kan Grubunuzu Giriniz(*)',
                  ),
                  DropdownButton(
                    value: dropDownValue1,
                    icon: Icon(Icons.keyboard_arrow_down),
                    iconSize: 20,
                    items: createKanGrubuItem(),
                    onChanged: ( String? val) => setState(() => dropDownValue1 = val!),
                    ),]
                  ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Kilo(*)',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Boy(*)',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Cinsiyet(*)',
                  ),
                  DropdownButton(
                    value: dropDownValue2,
                    icon: Icon(Icons.keyboard_arrow_down),
                    iconSize: 20,
                    onChanged: (String? val) => setState(() => dropDownValue2 = val!),
                    items: createCinsiyetItem(),
                  )
                ],
              ),
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Kullandığınız Diğer İlaçlar',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
              ),
              TextFormField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Kronik Rahatsızlıkları',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
              ),
              Text(
                '* :ZORUNLU ALAN',
              ),
              TextButton(
                child: Text('KAYDET'),
                onPressed: () {},
              )
            ],
            ),
        )
        ),
      );
  }

  List<DropdownMenuItem<String>> createKanGrubuItem() {
    return [
      '0 +Rh',
      '0 -Rh',
      'A +Rh',
      'A -Rh',
      'B +Rh',
      'B -Rh',
      'AB +Rh',
      'AB -Rh'
    ].map((kanGrubu) => DropdownMenuItem<String>(
      value: kanGrubu,
      child: Text(
        kanGrubu
      ),
    )).toList();
  }

  List<DropdownMenuItem<String>> createCinsiyetItem() {
    return ['Kadın', 'Erkek'].map((cinsiyet) => DropdownMenuItem<String>(
      value: cinsiyet,
      child: Text(cinsiyet),
    )).toList();
  }
}
