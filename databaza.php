<?php

	$emri = $_POST['emri'];
	$mbiemri = $_POST['mbiemri'];
	$telefoni = $_POST['telefoni'];
	// $lloji_dhomes = $_POST['lloji_dhomes'];
	// $nr_shtreterve = $_POST['nr_shtreterve'];
	$data_prenotimit = $_POST['data_prenotimit'];
	$deri_kur = $_POST['deri_kur'];


	$conn = new mysqli('localhost','root','','hotel');
	if ($conn->connect_error) {
		die('Lidhja deshtoj : ' .$conn->connect_error);
	}else{
	$stmt = $conn->prepare("insert into prenotimi(emri,mbiemri,telefoni, data_prenotimit,deri_kur) values(?, ?, ?, ?, ?)");
	$stmt->bind_param("ssiss",$emri, $mbiemri, $telefoni, $data_prenotimit, $deri_kur);
	$stmt->execute();
	echo "<script type='text/javascript'>alert('suksess');</script>";
	header('Location: index.html');
	$stmt->close();
	$conn->close();
	}
?>