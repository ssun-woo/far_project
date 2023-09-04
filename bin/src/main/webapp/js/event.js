let x = 1;
let intervalId;
let isFrozen = false;

var e;
let i=0;

var list = ["sup01", "sup02", "sup03", "sup04", "sup05"];

window.onload = next = () => {
	const img = document.querySelector("#eventImg");
	img.src = "../images/ev_images/" + list[i] + ".jpg";
	if (i == 4) {
		i = 0;
	} else {
		i++;
	}
	if (!isFrozen) {
		e = setTimeout(next, 5000);
	}
	img.addEventListener("mouseover", freeze);
	img.addEventListener("mouseout", unfreeze);
}

const freeze = () => {
	clearTimeout(e);
	isFrozen = true;
}

const unfreeze = () => {
	isFrozen = false;
	setTimeout(() => {
		if (!isFrozen) {
			next();
		}
	}, 5000);
}
