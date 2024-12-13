import 'package:flutter/material.dart';
import 'gaji.dart';

class Pegawai extends StatefulWidget {
  const Pegawai({super.key});

  @override
  State<Pegawai> createState() => _PegawaiState();
}

class _PegawaiState extends State<Pegawai> {
  String? _nip;
  String? _nama;
  String? _pilihanGolongan;
  String? _pilihanStatus;

  final TextEditingController nipController = TextEditingController();
  final TextEditingController namaController = TextEditingController();

  var salary = Gaji();

  final List<String> golongan = ['I', 'II', 'III', 'IV'];
  final List<String> status = ['Menikah', 'Belum Menikah'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gaji Pegawai'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        children: [
          TextField(
            controller: nipController,
            decoration: const InputDecoration(labelText: 'NIP Pegawai'),
            onChanged: (value) {
              setState(() {
                _nip = value;
              });
            },
          ),
          TextField(
            controller: namaController,
            decoration: const InputDecoration(labelText: 'Nama Pegawai'),
            onChanged: (value) {
              setState(() {
                _nama = value;
              });
            },
          ),
          DropdownButton<String>(
            hint: const Text('Golongan Pegawai'),
            value: _pilihanGolongan,
            onChanged: (String? value) {
              setState(() {
                _pilihanGolongan = value;
                salary.golongan = value;
              });
            },
            items: golongan.map<DropdownMenuItem<String>>((String isi) {
              return DropdownMenuItem<String>(
                value: isi,
                child: Text(isi),
              );
            }).toList(),
          ),
          DropdownButton<String>(
            hint: const Text('Status Pegawai'),
            value: _pilihanStatus,
            onChanged: (String? value) {
              setState(() {
                _pilihanStatus = value;
                salary.status = value;
              });
            },
            items: status.map<DropdownMenuItem<String>>((String isi) {
              return DropdownMenuItem<String>(
                value: isi,
                child: Text(isi),
              );
            }).toList(),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                // Calculate salary when button is pressed
                salary.golongan = _pilihanGolongan;
                salary.status = _pilihanStatus;
              });
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Hasil Gaji'),
                    content: Text(
                        'Gaji Pegawai: ${salary.tunjGapok() + salary.tunjStatus()}'),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text('Hitung Gaji'),
          ),
        ],
      ),
    );
  }
}
