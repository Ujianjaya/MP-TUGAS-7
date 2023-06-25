import 'package:flutter/material.dart';
import '../model/pasien.dart';
import 'pasien_detail.dart';
import 'pasien_form.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Data Pasien"),
          actions: [
            GestureDetector(
              child: const Icon(Icons.add),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PasienForm()));
              },
            )
          ],
        ),
        body: ListView(
          children: [
            GestureDetector(
              child: Card(
                child: ListTile(
                  title: const Text("01. Eko Jayanto "),
                ),
              ),
              onTap: () {
                Pasien no_rmPasien,
                    namaPasien,
                    tglPasien,
                    nohpPasien,
                    alamatPasien = new Pasien(
                        no_rmPasien: "121",
                        namaPasien: "Eko Jayanto",
                        tglPasien: "11 Mei 1989",
                        nohpPasien: "08882312XXXX",
                        alamatPasien:
                            "Gedong Tengen, Gondokusuman, Yogyakarta");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PasienDetail(pasien: alamatPasien)));
              },
            ),
            GestureDetector(
              child: Card(
                child: ListTile(
                  title: const Text("02. Dwi sejati"),
                ),
              ),
              onTap: () {
                Pasien no_rmPasien,
                    namaPasien,
                    tglPasien,
                    nohpPasien,
                    alamatPasien = new Pasien(
                        no_rmPasien: "122",
                        namaPasien: "Dwi Sejati",
                        tglPasien: "12 September 2006",
                        nohpPasien: "08881212XXXX",
                        alamatPasien: "Blunyah Rejo, Yogyakarta");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PasienDetail(pasien: alamatPasien)));
              },
            ),
            GestureDetector(
              child: Card(
                child: ListTile(
                  title: const Text("03.Burhan Edane"),
                ),
              ),
              onTap: () {
                Pasien no_rmPasien,
                    namaPasien,
                    tglPasien,
                    nohpPasien,
                    alamatPasien = new Pasien(
                        no_rmPasien: "123",
                        namaPasien: "Burhan Edane",
                        tglPasien: "3 Maret 1985",
                        nohpPasien: "08123157XXXX",
                        alamatPasien: "Jetis, Kota Yogyakarta");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PasienDetail(pasien: alamatPasien)));
              },
            ),
          ],
        ));
  }
}
