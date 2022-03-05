<?php
include "templates/header.php";
include "templates/sidebar.php";

$id_kary = isset($_GET) ? $_GET['edit'] : 0;

$data_cok = query("SELECT * FROM pengguna 
JOIN pc ON pengguna.idkary = pc.idpengguna 
JOIN divisi ON pengguna.unitkerja = divisi.id WHERE pengguna.idkary = '$id_kary' AND pc.is_delete = '0' ");

?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Edit Data Komputer</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="data-pc.php">Data Komputer</a></li>
                        <li class="breadcrumb-item active">Edit Data</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <form action="" method="POST">
                <div class="row">
                    <!-- left column -->
                    <div class="col-md-6">
                        <!-- general form elements -->
                        <div class="card card-light">
                            <div class="card-header">
                                <h3 class="card-title">Data User</h3>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <!-- <form> -->
                            <div class="card-body">
                                <div class="form-group row">
                                    <label for="idpengguna" class="col-sm-2 col-form-label">Nama</label>
                                    <div class="col-sm-10">
                                        <select class="custom-select" name="idpengguna" id="select_users" required>
                                            <option value="" disabled selected>Pilih User</option>
                                            <?php
                                            $data = query("SELECT * FROM pengguna");
                                            foreach ($data as $d) :
                                            ?>
                                                <option <?php echo !empty($data_cok) ? $data_cok[0]['idkary'] == $d['idkary'] ? "selected" : ""  : ""  ?> value="<?= $d['idkary'] ?>"><?= $d['nama'] ?> </option>
                                            <?php
                                            endforeach;
                                            ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="jabatan" class="col-sm-2 col-form-label">Jabatan</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="jabatan" class="form-control" id="jabatan" value="<?php echo !empty($data_cok) ? $data_cok[0]['jabatan'] : ""  ?>" readonly>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="unitkerja" class="col-sm-2 col-form-label">Unit Kerja</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="unitkerja" class="form-control" value="<?php echo !empty($data_cok) ? $data_cok[0]['unitkerja'] : ""  ?>" id="unitkerja" readonly>
                                    </div>
                                </div>
                                <!-- <div class="form-group row">
                                    <label for="email" class="col-sm-2 col-form-label">Email</label>
                                    <div class="input-group col-sm-10">
                                        <input type="text" name="email" class="form-control" id="email"> -->
                                <!-- <input type="text" class="form-control" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="basic-addon2"> -->
                                <!-- <div class="input-group-append">
                                            <span class="input-group-text" id="basic-addon2">@citra.co.id</span>
                                        </div>
                                    </div> -->
                                <!-- <div class="col-sm-10">
                                        <input type="text" name="email" class="form-control" id="email">
                                    </div> -->
                                <!-- </div> -->
                            </div>
                            <!-- </form> -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <!--/.col left -->
                    <!-- right column -->
                    <div class="col-md-6">
                        <!-- Horizontal Form -->
                        <div class="card card-light">
                            <div class="card-header">
                                <h3 class="card-title">Data Komputer</h3>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <!-- <form> -->
                            <div class="card-body">
                                <div class="form-group row">
                                    <label for="namapc" class="col-sm-3 col-form-label">Computer Name</label>
                                    <div class="col-sm-9">
                                        <input type="text" name="namapc" value="<?php echo !empty($data_cok) ? $data_cok[0]['namapc'] : ""  ?>" class="form-control" id="namapc" required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="ipaddress" class="col-sm-3 col-form-label">IP Address</label>
                                    <div class="col-sm-9">
                                        <input type="text" name="ipaddress" value="<?php echo !empty($data_cok) ? $data_cok[0]['ipaddress'] : ""  ?>" class="form-control" id="ipaddress" required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="internet" class="col-sm-3 col-form-label">Akses Internet</label>
                                    <div class="col-sm-9">
                                        <select class="custom-select" name="internet" id="internet">
                                            <option <?php echo !empty($data_cok) ? $data_cok[0]['internet'] == 'TIDAK' ? "selected" : "" : ""  ?> value="TIDAK">TIDAK</option>
                                            <option <?php echo !empty($data_cok) ? $data_cok[0]['internet'] == 'YA' ? "selected" : "" : ""  ?> value="YA">YA</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-body -->
                            <!-- /.card-footer -->
                            <!-- </form> -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <!--/.col right -->
                </div>
                <!-- /.row -->
                <div class="card card-light">
                    <div class="card-header">
                        <h3 class="card-title">Data Detail Komputer</h3>
                    </div>
                    <!-- /.card-header -->
                    <!-- form start -->
                    <!-- <form> -->
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="item_table">
                                <thead align="center">
                                    <tr>
                                        <th>Komponen</th>
                                        <th>Merk</th>
                                        <th>Tipe</th>
                                        <th>Spesifikasi</th>
                                        <th>Keterangan</th>
                                        <th>Barcode</th>
                                        <th>Jumlah</th>
                                        <!-- <th>Komponen</th> -->
                                        <th> <button type="button" id="add" name="add" class="btn btn-sm btn-outline-primary add"><i class="fa fa-plus"></i> Add Data</button></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- isi table dari script append -->
                                </tbody>
                            </table>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Catatan</span>
                                </div>
                                <textarea name="catatan" class="form-control"></textarea>
                            </div>
                            <p style="color:red; font-size:75%; font-style:italic;"><span style="color:red;">*</span>Apabila nomor barcode tidak ada maka mengikuti barcode komputer.</p>
                        </div>
                    </div>
                    <!-- /.card-body -->
                    <div class="card-footer">
                        <button type="submit" class="btn btn-outline-success" name="simpan"><i class="fa fa-save"></i> Save Data</button>
                    </div>
                    <!-- </form> -->
                </div>
            </form>
        </div><!-- /.container-fluid -->
    </section>
    <!-- End Main content -->
</div>
<?php
include "templates/footer.php";
?>
<script>
    $(document).ready(function() {

        /* On Change Users */
        $('#select_users').change(function(e) {
            e.preventDefault()
            let formData = {
                id_user: this.value
            }
            $.ajax({
                type: 'POST',
                url: "ajax/ajax-user.php",
                data: formData,
                success: (result) => {
                    let parse = JSON.parse(result)
                    $('#jabatan').val(parse.jabatan)
                    $('#unitkerja').val(parse.unitkerja)
                },
                error: (err) => {
                    console.log(err)
                }
            })
        })
        
    });
</script>