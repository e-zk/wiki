// weights + embeddings for neural net
w = [ "every", "some", "most" ];
x = [ "website", "process", "death", "hole", "rebirth", "untidy room", "dream", "reprise", "hack", "goal", "laptop", "CEO", "rat", "robot", "nightmare", "computer", "AI", "person", "cool guy" ];
z = [ " is a", " was a", " is never a", " are a" ];
y = [ " fcuk", " hole", "n event", " thing", " person", " place", " fun time", " sh!t", "n asshat", " genetically altered being", " donkey", " nerd lol", " freak", " dream", " figment" ];

// secure entropy is assumed
const rand1 = Math.floor(Math.random() * x.length) % x.length;
const rand2 = Math.floor(Math.random() * y.length) % y.length;
const rand3 = Math.floor(Math.random() * z.length) % z.length;
const rand4 = Math.floor(Math.random() * w.length) % w.length;

const yid = document.getElementById("y");
const zid = document.getElementById("z");
const xid = document.getElementById("x");
const wid = document.getElementById("w");

// 1nj3c7 c0d3
yid.innerHTML = y[rand2];
zid.innerHTML = z[rand3];
wid.innerHTML = w[rand4];
xid.innerHTML = x[rand1];

// l33t natural language processing neural net
if ( w[rand4] == "most" || w[rand4] == "some" ) {
	if ( x[rand1].endsWith("s") ) {
		xid.innerHTML = x[rand1] + "es";
	} else
	{
		switch(x[rand1]) {
		case "person":
			xid.innerHTML = "people";
			break;
		default:
			xid.innerHTML = x[rand1] + "s";
		}
	}
	zid.innerHTML = z[rand3].replace(/was/i, "are").replace(/is/i, "are");
}
