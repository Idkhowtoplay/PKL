// Menampilkan waktu saat ini (Realtime Clock)
let timeDisplay = document.getElementById("currentTime");

const refreshTime = () => {
	const format = ["IT-ti", "id"];
	const option = {
		timeZone: "Asia/Jakarta",
		timeStyle: "short",
	};

	const dateString = new Date().toLocaleTimeString(format, option);
	timeDisplay.innerHTML = dateString;
};
setInterval(refreshTime, 1000);

// function showTime() {
// 	let today = new Date();
// 	let hour = today.getHours();
// 	let minute = today.getMinutes();
// 	let second = today.getSeconds();

// 	hour = checkTime(hour);
// 	minute = checkTime(minute);
// 	second = checkTime(second);
// 	document.getElementById("clock").innerHTML =
// 		hour + ":" + minute + ":" + second + " ";
// }

// function cekWaktu() {
// 	$.ajax({
// 		type: "GET",
// 		url: '<?php echo base_url() . "/denah/ambilData" ?>',
// 		dataType: "json",
// 		success: function (data) {
// 			console.log(data);
// 		},
// 	});
// }

// cekWaktu();

// setInterval(showTime, 500);
