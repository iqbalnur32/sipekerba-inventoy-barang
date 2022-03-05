<?php
include 'templates/header.php';
require 'function.php';
if (isset($_POST['submit'])) {
    if (insertPengaduan($_POST) > 0) {
        echo "<script>alert('Data laporan Anda berhasil terkirim.'); window.location='index.php';</script>";
    } else {
        echo "<script>alert('Data laporan Anda gagal terkirim.'); window.location='form-pengaduan.php';</script>";
    }
}

$query = mysqli_query($conn, "SELECT max(id) as kodeTerbesar FROM pengaduan");
$r = mysqli_fetch_array($query);
$kodeBarang = $r['kodeTerbesar'];

// mengambil angka dari kode barang terbesar, menggunakan fungsi substr
// dan diubah ke integer dengan (int)
$urutan = (int) substr($kodeBarang, 5, 5);

// bilangan yang diambil ini ditambah 1 untuk menentukan nomor urut berikutnya
$urutan++;

// membentuk kode barang baru
// perintah sprintf("%03s", $urutan); berguna untuk membuat string menjadi 3 karakter
// misalnya perintah sprintf("%03s", 15); maka akan menghasilkan '015'
// angka yang diambil tadi digabungkan dengan kode huruf yang kita inginkan, misalnya BRG 
$huruf = "LKTI-";
$kodeBarang = $huruf . sprintf("%04s", $urutan);
?>
<h1 style="margin-top: -40px;">Form Pengaduan Permasalahan TI</h1>
<form action="" method="POST">
    <div class="form-row p-3">
        <div class="form-group">
            <label for="id">Nomor Laporan</label>
            <input type="text" name="id" id="id" class="form-control" value="<?= $kodeBarang; ?>" style="cursor: default;" readonly>
            <p style="color:red; font-size:75%; font-style:italic;"><span style="color:red;">*</span>Harap catat nomor ini untuk melakukan pengecekan mandiri melalui kolom pencarian.</p>
            <div>
                <div class="form-group">
                    <label for="nama">Nama Pelapor</label>
                    <input type="text" name="nama" id="nama" class="form-control" required>
                    <div>
                        <div class="form-group">
                            <label for="jabatan">Jabatan</label>
                            <!-- <input type="text" name="jabatan" id="jabatan" class="form-control" required> -->
                            <select class="custom-select" name="jabatan" id="jabatan">
                                <option value="" disabled selected>Pilih Jabatan</option>
                                <option value="STAFF">STAFF</option>
                                <option value="SENIOR OFFICER">SENIOR OFFICER</option>
                                <option value="ASSISTEN MANAGER">ASSISTEN MANAGER</option>
                                <option value="MANAGER">MANAGER</option>
                                <option value="DIREKSI-KOMISARIS">DIREKSI-KOMISARIS</option>
                                <option value="LAIN-LAIN">LAIN-LAIN</option>
                            </select>
                            <div>
                                <div class="form-group">
                                    <label for="dept">Unit Kerja</label>
                                    <!-- <input type="text" name="dept" id="dept" class="form-control" required> -->
                                    <select class="custom-select" name="dept" id="dept">
                                        <option value="" disabled selected>Pilih Unit Kerja</option>
                                        <?php
                                        $data = query("SELECT * FROM divisi ORDER BY divisi ASC");
                                        foreach ($data as $d) :
                                        ?>
                                            <option value="<?= $d['divisi'] ?>"><?= $d['divisi'] ?> </option>
                                        <?php
                                        endforeach;
                                        ?>
                                    </select>
                                    <div>
                                        <div class="form-group">
                                            <label for="nama_barang">Kendala</label>
                                            <input type="text" name="nama_barang" id="nama_barang" class="form-control" required>
                                            <div>
                                                <div class="form-group">
                                                    <label for="ket">Keterangan</label>
                                                    <textarea name="ket" id="ket" class="form-control" required></textarea>
                                                    <div>
                                                        <button class="btn btn-outline-success mt-3 mr-3" type="submit" name="submit" style="width: 100px;"><span class="fas fa-check mr-2"></span>Kirim</button>
                                                        <button class="btn btn-outline-danger mt-3" type="reset" name="reset" style="width: 130px;"><span class="fas fa-undo mr-2"></span>Reset</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<?php
include 'templates/footer.php';
?>