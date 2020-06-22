<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$this->load->view('admin/header');
?>
<div class="container-fluid p-0">
    <div class="row mb-3">
        <div class="col-lg-8 col-sm-8 col-12">
            <h1 class=" m-0 font-weight-light">Data Pengembalian</h1>
            <span class="text-black-80"> <?= count($pemesanan)?> data</span>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                    <table id="table" class="table table-hover">
                            <thead>
                                <tr>
									<th class="text-center">No Booking</th>
									<th class="text-left">Nama Pemesan</th>
									<th class="text-center">Tgl Pemesanan</th>
									<th class="text-center">Tgl Pengembalian</th>
									<th class="text-right">Total Sewa</th>
									<th class="nosort"></th>
								</tr>
                            </thead>

							</tbody>
							<?php $no=1; ?>
							<?php
								// dd($pemesanan);
								foreach ($pemesanan as $key => $value):
							?>
								<tr>
									<td class="font-size-lg font-weight-bold text-center">
											<?php echo '#'.$value->id_transaksi ?>
										<!-- <a class="font-weight-bold text-underline text-tertiary"  data-toggle="modal" data-target="#modalDetailPesanan">
										</a> -->
									</td>
									<td class="font-size-lg"><?php echo ($value->nama) ?></td>
									<td class="font-size-lg text-center"><?php echo idDateFormat($value->tgl_pemesanan) ?></td>
									<td class="font-size-lg text-center"><?php echo idDateFormat($value->tgl_pengembalian) ?></td>
									<td class="font-size-lg text-right">Rp <?= number_format($value->total_harga, 0, ',', '.') ?></td>

									<td class="align-top text-center">
										<?php if($value->status_transaksi == 4) : ?>
											<span class="badge badge-success">Selesai</span>
										<?php else : ?>
											<a data-toggle="modal" data-id="<?= $value->id_transaksi ?>" data-target="#modalKonfirmasiKembali" href="#" class="btn-konfirmasi btn btn-outline-primary">Konfirmasi</a>
										<?php endif; ?>
										
									</td>
								</tr>
								<?php $no++ ?>
                            <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div> 
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="modalKonfirmasiKembali" tabindex="-1" role="dialog" aria-labelledby="modalKonfirmasiKembaliLabel"
	aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-scrollable" role="document">
		<form action="<?= base_url('admin/kelola/pengembalian/kembali') ?>" method="post" class="modal-content">
			<input type="hidden" name="id_transaksi" id="id-transaksi" value="">
			<div class="modal-header border-0">
                <h4 class="modal-title text-center w-100">Form Kondisi Barang</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
			<div class="modal-body">
				<div class="px-3">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="row mb-3">
                                <div class="col-lg-6">
                                    <div class="text-black-60 font-size-tiny text-uppercase">
                                        No. Booking
                                    </div>
                                    <div id="no-booking" class="font-size-lg text-black-100 line-height-26">
                                        #0
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-lg-12">
                                    <div class="text-black-60 font-size-tiny text-uppercase">
                                    Nama Customer
                                    </div>
                                    <div id="nama" class="font-size-lg text-black-100 line-height-26">
                                        #nama
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="text-black-60 font-size-tiny text-uppercase">
                                    Alamat
                                    </div>
                                    <div id="alamat" class="font-size-lg text-black-100 line-height-26">
                                        #alamat
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr class="my-3">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-lg-5">
                                    <div class="text-black-60 font-size-tiny text-uppercase">
                                        Tujuan
                                    </div>
                                    <div id="tujuan" class="font-size-lg text-black-100 line-height-26">
                                        #tujuan
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-6">
                                    <div class="text-black-60 font-size-tiny text-uppercase">
                                        Tanggal Pesan
                                    </div>
                                    <div id="tgl-sewa" class="font-size-lg text-black-100 line-height-26">
                                        <?php echo idDateFormat(date("Y-m-d")) ?>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="text-black-60 font-size-tiny text-uppercase">
                                        Tanggal Kembali
                                    </div>
                                    <div id="tgl-kembali" class="font-size-lg text-black-100 line-height-26">
                                        <?php echo idDateFormat(date("Y-m-d")) ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="row mb-4">
                                <div class="col-lg-12">
                                    <div class="text-black-60 font-size-tiny text-uppercase d-inline-block mr-1">
                                    Jaminan
                                    </div>
                                    <div id="jaminan" class="font-size-lg text-black-100 line-height-26 d-inline-block">
                                        #jaminan
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-lg-7 mb-3 mb-lg-0">
                                    <div class="text-black-60 font-size-tiny text-uppercase">
                                    No. Identitas
                                    </div>
                                    <div id="no-identitas" class="font-size-lg text-black-100 line-height-26">
                                       #noIdentitas
                                    </div>
                                </div>
                                <div class="col-lg-5 mb-3 mb-lg-0">
                                    <div class="text-black-60 font-size-tiny text-uppercase">
                                    No. Telepon
                                    </div>
                                    <div id="no-telepon" class="font-size-lg text-black-100 line-height-26">
                                        #noTelepon
                                    </div>
                                </div>
                            </div>
                            <div class="bg-light p-2 border">
                                <img id="jaminan-foto" src="" alt="" class="w-100">
                            </div>
                        </div>
                    </div>
                     <hr class="my-4">
                <!-- Daftar produk -->
                <div class="table-responsive">
                    <table class="table table-borderless">
                        <thead>
                            <th class="border-0 py-0">Daftar produk</th>
                            <th class="border-0 py-0">Harga Sewa</th>
                             <th class="border-0 py-0">Jumlah Sewa</th>
                            </thead>
                        <tbody id="daftar-produk">
                            
                        </tbody>
                          
                    </table>
                    
                </div>
				<hr class="my-4">
				<div class="px-3">
					<h4>Pengembalian</h4>
					<div class="row">
						<div class="col-lg-12">
							<div class="form-group">
								<label for="">Kondisi Barang</label>
								<div class="custom-controls-stacked pt-2">
									<label class="custom-control custom-radio custom-control-inline">
										<input value="baik" name="kondisi_barang" type="radio" class="custom-control-input" checked>
										<span class="custom-control-label">Baik</span>
									</label>
									<label class="custom-control custom-radio custom-control-inline">
										<input value="rusak" name="kondisi_barang" type="radio" class="custom-control-input">
										<span class="custom-control-label">Rusak/ Terlambat</span>
									</label>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="kena-denda">
								<hr style="border-style: dashed" class="my-2">
								<h5 class="mt-2 mb-3">Denda </h5>
                                <label for="">Ketentuan Denda</label>
                                <div class="custom-controls-stacked pt-2">
                                    <p>Denda Rusak : sesuai Tingkat kerusakan</p>
                                    <p>Denda keterlambatan : dihitung seperti harga sewa</p>
                                   </div>
								<div class="form-group">
									<label for="">Jumlah denda</label>
									<div class="input-group mb-3">
										<div class="input-group-prepend">
											<span class="input-group-text bg-white">Rp</span>
										</div>
										<input id="denda" type="number" name="denda" class="form-control border-left-0" aria-label="Jumlah (dalam rupiah)" min="0" value="0">
									</div>
								</div>
								<div class="form-group">
									<label for="">Keterangan</label>
									<textarea id="keterangan" name="keterangan" placeholder="Keterangan denda" class="form-control"></textarea>
								</div>
							</div>
						</div>
					</div>
                </div>
            </div>
            <div class="modal-footer">
              <button type="reset" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-primary">Konfirmasi</button>
            </div>
        </form>
    </div>
</div>
<script type="text/javascript">
    $(function () {
		var arr_pemesanan = <?= json_encode($pemesanan) ?>;
		
		$(".kena-denda").hide();
		$(".custom-control-input").on("change", function(){
			if($(this).val() == 'rusak'){
				$(".kena-denda").show();
			}else{
				$("#denda").val(0)
				$("#keterangan").val('')
				$(".kena-denda").hide();
			}
		});

		$(".btn-konfirmasi").click(function() {
			var pemesanan = arr_pemesanan.find(a => a.id_transaksi === $(this).data("id") + '');
			$("#id-transaksi").val(pemesanan.id_transaksi)
			$("#no-booking").text("#" + pemesanan.id_transaksi)
			$("#nama").text(pemesanan.nama)
			$("#alamat").text(pemesanan.alamat_pengiriman)
			$("#tujuan").text(pemesanan.tujuan)
			$("#tgl-sewa").text(pemesanan.tgl_sewa)
			$("#tgl-kembali").text(pemesanan.tgl_pengembalian)
			$("#jaminan").text(pemesanan.jaminan)
			$("#no-identitas").text(pemesanan.no_identitas)
			$("#no-telepon").text('+62' + pemesanan.no_telp)
			$("#jaminan-foto").attr('src','<?php echo base_url() ?>assets/uploads/jaminan/' + pemesanan.foto_jaminan)
			console.log(pemesanan);
			  $row = '';
            pemesanan.detail_transaksi.forEach(e => {
                $row += '<tr><td class="border-0"><div class="row"><div class="col-auto"><img src="<?= base_url('assets/uploads/produk/') ?>'+e.gambar_barang+'" alt="gambar produk " style="width:80px" class="img-thumbnail" /></div><div class="col-auto"><h4 class="m-0">'+e.nama_barang+'</h4><div class="mt-2"><span class="text-black-60">Ukuran:</span><span class="text-black-80 ml-1 font-weight-bold text-uppercase">'+e.ukuran+'</span></div></div></div></td><td class="border-0 align-top text-black-100 font-size-lg font-weight-bold">Rp '+e.harga_sewa+'</span></div></div></div></td><td class="border-0 align-top text-black-100 font-size-lg font-weight-bold">'+e.jumlah_barang+' </td></tr>';
            });


            $("#daftar-produk").html($row)
		});
    });
</script>
<?php $this->load->view('admin/footer'); ?>
