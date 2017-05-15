function Letras(){
	tecla = event.keyCode;
	if (tecla >= 33 && tecla <= 64 || tecla >= 91 && tecla <= 93 || tecla >= 123 && tecla <= 159 || tecla >= 162 && tecla <= 191 ){ 
	alert("DIGITE APENAS LETRAS");  

        return false;
	}else{
	   return true;
	}
}