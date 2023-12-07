import 'package:flutter/material.dart';
import 'package:lodger_rent/theme/colors.dart';

class LodgerList extends StatefulWidget {
  const LodgerList({super.key});

  @override
  State<LodgerList> createState() => _LodgerListState();
}

class _LodgerListState extends State<LodgerList> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: size.width / 2.5,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(18),
                        bottomRight: Radius.circular(18)),
                    color: primary),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: white,
                              ),
                              child: IconButton(
                                  onPressed: null,
                                  icon: Image.asset('assets/menu.png'))),
                          const Text(
                            "Salut Bienvenu !",
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 25, left: 30, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Loyer payé",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: success),
                          ),
                          IconButton(
                              onPressed: null,
                              icon: Image.asset('assets/reglage.png'))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: ListView(
                children: [
                  ListTile(
                    leading: Image.asset("assets/financement.png"),
                    title: const Text(
                      "Mai 2023",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    subtitle: const Row(
                      children: [
                        Text(
                          "Ref: 00012458",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Heure:  19h30",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    trailing: const Text(
                      "Payé",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: success),
                    ),
                  ),
                  ListTile(
                    leading: Image.asset("assets/financement.png"),
                    title: const Text(
                      "Mai 2023",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    subtitle: const Row(
                      children: [
                        Text(
                          "Ref: 00012458",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Heure:  19h30",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    trailing: const Text(
                      "Payé",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: success),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
