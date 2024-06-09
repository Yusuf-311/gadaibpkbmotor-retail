<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get form data
    $nama = $_POST['nama'];
    $hp = $_POST['hp'];
    $kota = $_POST['kota'];
    $divisi = $_POST['divisi'];
    $keterangan = $_POST['keterangan'];

    // Email address where you want to receive the form submission
    $to = "muhamadyusuf0311@gmail.com";
    $subject = "New Form Submission";
    $message = "Nama: $nama\nNomor Handphone: $hp\nKota: $kota\nDivisi: $divisi\nKeterangan Tambahan: $keterangan";

    // Send email
    mail($to, $subject, $message);

    // Redirect back to the form
    header('Location: your_form_page.html');
    exit;
}
