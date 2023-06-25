import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import 'pegawai_item.dart';
import 'pegawai_form.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({Key? key}) : super(key: key);

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pegawai"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PegawaiForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: (PegawaiItem(
                pegawai: Pegawai(
                    namaPegawai: "Putra ujianjaya",
                    nipPegawai: "0001",
                    tglPegawai: "10 Juni 1988",
                    nohpPegawai: "08880666XXXX",
                    emailPegawai: "bumihayu01@gmail.com",
                    pwPegawai: "pegawai0001"))),
          ),
          GestureDetector(
            child: (PegawaiItem(
                pegawai: Pegawai(
                    nipPegawai: "0002",
                    namaPegawai: "Estri Haryani",
                    tglPegawai: "10 Agustus 1988",
                    nohpPegawai: "089232121XXXX",
                    emailPegawai: "hayu01@gmail.com",
                    pwPegawai: "pegawai0002"))),
          ),
          GestureDetector(
            child: (PegawaiItem(
                pegawai: Pegawai(
                    nipPegawai: "0003",
                    namaPegawai: "Teguh HArjono",
                    tglPegawai: "4 Juni 1987",
                    nohpPegawai: "08883231XXXX",
                    emailPegawai: "Teguh@gmail.com",
                    pwPegawai: "pegawai0003"))),
          ),
          GestureDetector(
            child: (PegawaiItem(
                pegawai: Pegawai(
                    nipPegawai: "0004",
                    namaPegawai: "Jihan HIsbulloh",
                    tglPegawai: "2 Februari 1997",
                    nohpPegawai: "08123212XXXX",
                    emailPegawai: "Jihna@gmail.com",
                    pwPegawai: "pegawai0004"))),
          ),
          GestureDetector(
            child: (PegawaiItem(
                pegawai: Pegawai(
                    nipPegawai: "0005",
                    namaPegawai: "Jihan Fahrullah",
                    tglPegawai: "22 Oktober 1997",
                    nohpPegawai: "08126767XXXX",
                    emailPegawai: "fahrul@gmail.com",
                    pwPegawai: "pegawai0005"))),
          ),
        ],
      ),
    );
  }
}
