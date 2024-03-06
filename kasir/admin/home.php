<?php

include "../proses/connect.php";

$query_chart = mysqli_query($conn,"SELECT nama, tb_produk.id_produk, SUM(tb_detailpjl.jumlah_produk) AS total_jumlah FROM tb_produk 
LEFT JOIN tb_detailpjl ON tb_detailpjl.produk_id = tb_produk.id_produk
LEFT JOIN tb_penjualan ON tb_penjualan.id_penjualan = tb_detailpjl.penjualan_id
JOIN tb_bayar ON tb_bayar.id_bayar = tb_penjualan.id_penjualan
GROUP BY tb_produk.id_produk ORDER BY tb_produk.id_produk ASC ");

while ($record_chart = mysqli_fetch_array($query_chart)) {
    $result_chart[] = $record_chart;
}
if(empty($result_chart)) {
    $pesan = "tidak ada produk yang terjual";
}else{
$array_menu = array_column($result_chart,"nama");
$array_menu_qoute = array_map(function ($menu){
  return "'". $menu ."'";
}, $array_menu);
$string_menu = implode(",", $array_menu_qoute);

$array_jumlah_pesanan = array_column($result_chart, "total_jumlah");
$string_jumlah_pesanan = implode(',', $array_jumlah_pesanan);
}
?>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<!-- chart -->
<div class="col-lg-9 mt-2">
    <div class="card border-0 bg-light">
        <div class="card-body">
            <div>
                <canvas id="myChart"></canvas>
            </div>
            <script>
                const ctx = document.getElementById('myChart');

                new Chart(ctx, {
                    type: 'bar',
                    data: {
                        labels: [<?php echo $string_menu ?>],
                        datasets: [{
                            label: 'Jumlah produk terjual',
                            data: [<?php echo $string_jumlah_pesanan ?>],
                            borderWidth: 1,
                            backgroundColor:['rgba(225, 0, 0, 0.31)', 'rgba(0, 0, 295, 0.57)', 'rgba(281, 215, 0, 0.37)', 'rgba(0, 215, 3, 0.77)', 'rgba(296, 0, 259, 0.30)', 'rgba(285, 189, 30, 0.37)']
                        }]
                    },
                    options: {
                        scales: {
                            y: {
                                beginAtZero: true
                            }
                        }
                    }
                });
            </script>
        </div>
    </div>
</div>
<!-- end chart -->