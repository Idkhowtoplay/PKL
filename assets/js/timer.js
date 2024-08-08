document.addEventListener("DOMContentLoaded", () => {
	const title = document.getElementById("title");
	// Time that the user will put in input fields
	const inputHours = document.getElementById("start-hours"),
		inputMinutes = document.getElementById("start-minutes"),
		inputSeconds = document.getElementById("start-seconds");

	inputHours.addEventListener("input", outputHandler);
	inputMinutes.addEventListener("input", outputHandler);
	inputSeconds.addEventListener("input", outputHandler);

	// Time displayed on screen
	const outputHours = document.getElementById("hours"),
		outputMinutes = document.getElementById("minutes"),
		outputSeconds = document.getElementById("seconds");

	outputHours.innerHTML = "00";
	outputMinutes.innerHTML = "00";
	outputSeconds.innerHTML = "00";

	// Start Button
	const startBtn = document.getElementById("start-btn");
	startBtn.addEventListener("click", () => {
		setCountDownDate();
		starttimer();
		startProgressBar();
		disableStartBtn();
		disableInputs();
		title.innerHTML = "Time Remaining";
	});
	// Reset Button
	const resetBtn = document.getElementById("reset-btn");
	resetBtn.addEventListener("click", () => {
		history.go(0);
	});

	// Time will change as user types it into input fields
	function outputHandler() {
		outputHours.innerHTML = formatTime(inputHours.value);
		outputMinutes.innerHTML = formatTime(inputMinutes.value);
		outputSeconds.innerHTML = formatTime(inputSeconds.value);
	}
	// Formats to keep a 0 in front of single digit
	function formatTime(num) {
		if (num <= 0) {
			return `00`;
		} else if (num < 10) {
			return `0${num}`;
		} else {
			return `${num}`;
		}
	}
	// Keeps user from typing into inputs after start btn is clicked
	function disableInputs() {
		inputHours.disabled = true;
		inputMinutes.disabled = true;
		inputSeconds.disabled = true;
	}
	// Hides start btn after start btn is clicked
	disableStartBtn = () => {
		startBtn.disabled = true;
		startBtn.classList.add("disabled");
	};
	// Border will change once time is up
	borderChange = () =>
		(document.getElementById("timer").style.border = "3px solid #fb3640");

	let countDownDate;
	// Takes inputs and adds them to current time to set the countdown time/date
	function setCountDownDate() {
		countDownDate = new Date(
			new Date().getTime() +
				inputHours.value * 3600000 +
				inputMinutes.value * 60000 +
				inputSeconds.value * 1000
		);
	}

	// Displays time left every second until end
	function starttimer() {
		const countDown = setInterval(function () {
			const now = new Date().getTime();
			const timeLeft = countDownDate - now;

			const hoursLeft = formatTime(
				Math.floor((timeLeft / (1000 * 60 * 60)) % 60)
			);
			const minutesLeft = formatTime(Math.floor((timeLeft / 1000 / 60) % 60));
			const secondsLeft = formatTime(Math.floor((timeLeft / 1000) % 60));

			outputHours.innerHTML = hoursLeft;
			outputMinutes.innerHTML = minutesLeft;
			outputSeconds.innerHTML = secondsLeft;

			if (timeLeft <= 0) {
				clearInterval(countDown);
				borderChange();
				title.innerHTML = "Time is up!";
			}
		}, 10);
	}
	// Displays percentage of time elasped
	function startProgressBar() {
		let progressTime =
			inputHours.value * 3600000 +
			inputMinutes.value * 60000 +
			inputSeconds.value * 1000;
		let i = 0;
		if (i === 0) {
			i = 1;
			const bar = document.getElementById("bar");
			let width = 1;
			let id = setInterval(frame, progressTime / 100);
			function frame() {
				if (width >= 100) {
					clearInterval(id);
					bar.style.visibility = "hidden";
					i = 0;
				} else {
					width++;
					bar.style.width = width + "%";
					bar.innerHTML = width + "%";
				}
			}
		}
	}
});
