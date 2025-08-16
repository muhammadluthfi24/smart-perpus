<?php
include "koneksi.php";

// Fungsi untuk mencegah SQL injection
function antiinjection($data){
    global $mysqli;
    $filter_sql = mysqli_real_escape_string(
        $mysqli, 
        stripslashes(strip_tags(htmlspecialchars($data, ENT_QUOTES)))
    );
    return $filter_sql;
}

// Ambil data dari form login
$username = antiinjection($_POST['username']);
$password = antiinjection($_POST['password']);

// Query cek login
$login = mysqli_query(
    $mysqli, 
    "SELECT * FROM tb_user WHERE username='$username' AND password='$password'"
);
$ketemu = mysqli_num_rows($login);
$r = mysqli_fetch_array($login);

// Jika username dan password cocok
if ($ketemu > 0) {
    session_start();

    $_SESSION['namauser']    = $r['username'];
    $_SESSION['namalengkap'] = $r['nama'];
    $_SESSION['passuser']    = $r['password'];
    $_SESSION['leveluser']   = $r['level'];

    header('location:index.php');
} else {
    echo "<script>alert('Username atau Password Anda Salah'); window.location='login.php'</script>";
}
?>
