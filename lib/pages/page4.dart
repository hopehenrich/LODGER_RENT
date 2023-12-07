import 'package:flutter/material.dart';
import 'package:lodger_rent/theme/colors.dart';
import 'package:lodger_rent/widgets/custom_widget.dart';

class Page4 extends StatelessWidget {
  Page4({super.key});

  final List<Facture> factures = [
    Facture(numero: '001', mois: 'Janvier', date: '01/01/2023'),
    Facture(numero: '002', mois: 'Fevrier', date: '02/01/2023'),
    Facture(numero: '003', mois: 'Septembre', date: '03/01/2023'),
    Facture(numero: '003', mois: 'Septembre', date: '03/01/2023'),
    Facture(numero: '003', mois: 'Septembre', date: '03/01/2023'),
    Facture(numero: '003', mois: 'Septembre', date: '03/01/2023'),
    Facture(numero: '003', mois: 'Septembre', date: '03/01/2023'),
    Facture(numero: '003', mois: 'Septembre', date: '03/01/2023'),
    Facture(numero: '003', mois: 'Septembre', date: '03/01/2023'),
    Facture(numero: '003', mois: 'Septembre', date: '03/01/2023'),
    Facture(numero: '003', mois: 'Septembre', date: '03/01/2023'),
    Facture(numero: '003', mois: 'Septembre', date: '03/01/2023'),
    Facture(numero: '003', mois: 'Septembre', date: '03/01/2023'),
    Facture(numero: '003', mois: 'Septembre', date: '03/01/2023'),
  ];

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: SizedBox(
        height: deviceHeight,
        width: deviceWidth,
        child: Stack(
          children: [
            Positioned(
                top: -deviceHeight * 0.025,
                left: -deviceWidth * 0.1,
                child: boxBack(deviceWidth * 0.35, deviceWidth * 0.35)),
            Positioned(
                right: deviceWidth * 0.1,
                top: deviceHeight * 0.06,
                child: const Texte(
                    txt: "Liste des factures ",
                    maxline: 3,
                    fontsize: 19,
                    color: primary,
                    fontweight: FontWeight.bold,
                    alignText: TextAlign.center)),
            Positioned.fill(
                top: deviceHeight * 0.17,
                child: SingleChildScrollView(child: facture()))
          ],
        ),
      ),
    ));
  }

  Widget boxBack(double w, double h) {
    return Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(100),
      ),
      child: BackButton(
        color: Colors.white,
        style: ButtonStyle(
          iconSize: MaterialStateProperty.all(40.0),
        ),
      ),
    );
  }

  Widget facture() {
    return DataTable(
        columnSpacing: 30.0,
        columns: const [
          DataColumn(
              label: Text(
            'Numéro',
            style: TextStyle(
                color: primary, fontSize: 18, fontWeight: FontWeight.bold),
          )),
          DataColumn(
              label: Text(
            'Mois',
            style: TextStyle(
                color: primary, fontSize: 18, fontWeight: FontWeight.bold),
          )),
          DataColumn(
              label: Text(
            'Date',
            style: TextStyle(
                color: primary, fontSize: 18, fontWeight: FontWeight.bold),
          )),
          DataColumn(label: Text('')),
        ],
        rows: factures.map((facture) {
          return DataRow(cells: [
            DataCell(Text(facture.numero)),
            DataCell(Text(facture.mois)),
            DataCell(Text(facture.date)),
            DataCell(IconButton(
              icon: const Icon(
                Icons.download,
                color: primary,
              ),
              onPressed: () {},
            ))
          ]);
        }).toList());
  }
}

class Facture {
  final String numero;
  final String mois;
  final String date;

  Facture({required this.numero, required this.mois, required this.date});
}
