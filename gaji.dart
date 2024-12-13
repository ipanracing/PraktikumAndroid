class Gaji {
  String? golongan;
  String? status;
  int masakerja = 0;

  int tunjGapok() {
    int tunjangan = 0;
    if (golongan == "I") {
      tunjangan = 2500000;
    } else if (golongan == "II") {
      tunjangan = 3000000;
    } else if (golongan == "III") {
      tunjangan = 3500000;
    } else {
      tunjangan = 4000000;
    }
    return tunjangan;
  }

  int tunjStatus() {
    int tunjangan = 0;
    if (status == "Menikah") {
      tunjangan = 1000000;
    } else if (status == "Belum Menikah") {
      tunjangan = 500000;
    }
    return tunjangan;
  }
}
