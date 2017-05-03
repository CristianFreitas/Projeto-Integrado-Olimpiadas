window.onload = function(){			// Função principal iniciada após o carregamento da pagina
	var clicks =1;			/* Variavel para controle de clicks bandeira*/
	var clicks2 =1;			/* Variavel para controle de clicks grupo*/
	var clicks3 =1;			/* Variavel para controle de clicks img star Wars*/
	var delegacao = document.getElementById("delegacoes").onclick= function(){			// Evento ao clicar botao delegacoes
		if(clicks==1){			// Controle de clicks
			remover_todos();		// Limpa a div
			foto("img/afeganistao.png","delegAfeganistao.php");			// Chama a função foto enviando os parametros src da imagem e link da ancora
			foto("img/so.png","delegSomalia.php");			// Chama a função foto enviando os parametros src da imagem e link da ancora
			foto("img/sn.png","delegSenegal.php");			// Chama a função foto enviando os parametros src da imagem e link da ancora
			foto("img/georgia.png","delegGeorgia.php");			// Chama a função foto enviando os parametros src da imagem e link da ancora
			foto("img/panama.png","delegPanama.php");			// Chama a função foto enviando os parametros src da imagem e link da ancora
			clicks= clicks+1;			// Aumenta o numero de clics
			if(clicks2>1){			// Checa se os outros butões ja foram clickados
				clicks2=1;			// Diminui o numero de clics dos outros butões para  poderem ser clicado novamente
			}
		}
	}
	var grupo = document.getElementById("grupo").onclick=function(){			// Evento ao clicar botao grupo
		remover_todos();			// Limpa a div
		if(clicks2==1){			// Controle de clicks
			foto2("img/star2.jpg");			// Chama a função fotos dois enviando como parametro apenas o srs da imagem
			clicks2=clicks2+1;			// Aumenta o numero de clics
			clicks2=1;			// Diminui o numero de clics dos outros butões para  poder ser clicado novamente
			if(clicks>1){			// Checa se os outros butões ja foram clickados
				clicks=1;			// Diminui o numero de clics dos outros butões para  poder ser clicado novamente
				clicks3=1;			// Diminui o numero de clics dos outros butões para  poder ser clicado novamente
				clicks2=1;			// Diminui o numero de clics dos outros butões para  poder ser clicado novamente
			}
		}
	}

	function foto(local,ref){			// Função foto recebe os parametros src da imagem(local) e link da ancora (ref)
		var div = document.getElementById("mostrar");			// Chama a div pelo id "Mostrar" e coloca na variavel "div"
		var img=document.createElement("img");			// Cria uma tag "img" para ser manipulada por JS pela variavel "img" 
		var a=document.createElement("a");			// Cria uma tag "a" para ser manipulada por JS pela variavel "a"
		a.href=ref;			// Chama a variavel  da ancora e coloca o link informado no parametro
		img.src=local;			// Chama a variavel  de imagem e coloca o src informado no parametro
		img.id="bandeira";			// Chama a variavel de imagem e coloca um o id "Bandeira" para poder ser manipulado por css
		var ancora=div.appendChild(a);			// Chama a variavel div e coloca uma a ancora informado antes como filho da div
		ancora.appendChild(img);			// Chama a ancora e coloca a imagem dentro dela 
	}
	function foto2(local){			//função que recebe como parametro um src
		var div = document.getElementById("mostrar");			// Chama a div pelo id "Mostrar" e coloca na variavel "div"
		var img=document.createElement("img");			// Cria uma tag "img" para ser manipulada por JS pela variavel "img"
		img.src=local;			// Chama a variavel  de imagem e coloca o src informado no parametro
		img.id="foto"			// Chama a variavel de imagem e coloca um o id "Foto" para poder ser manipulado por css
		div.appendChild(img)			// Adciona a imagem a div como filho
		img.onclick = function(){			// Adciona evendo a imagem criada
			remover_todos();			// Limpa a div
			if(clicks3==1){			// Controle de clicks
				foto3("img/alexandre1.png");			// Chama a função foto3 enviando como parametro o src da imagem
				foto3("img/alexsandro1.png");			// Chama a função foto3 enviando como parametro o src da imagem
				foto3("img/anderson1.png");			// Chama a função foto3 enviando como parametro o src da imagem
				foto3("img/cristian1.png");			// Chama a função foto3 enviando como parametro o src da imagem
				foto3("img/silas1.png");			// Chama a função foto3 enviando como parametro o src da imagem	
			}
			clicks3=clicks3+1;			// Aumenta o numero de clics
			if(clicks2>1||clicks3>1){			// Checa se os outros butões ja foram clickados
				clicks2=1;			// Diminui o numero de clics dos outros butões para  poder ser clicado novamente
				clicks3=1;			// Diminui o numero de clics dos outros butões para  poder ser clicado novamente
				clicks=1;			// Diminui o numero de clics dos outros butões para  poder ser clicado novamente
			}
		}
	}
	function foto3(local){			//função que recebe como parametro um src
		var div = document.getElementById("mostrar");			// Chama a div pelo id "Mostrar" e coloca na variavel "div"
		var img=document.createElement("img");			// Cria uma tag "img" para ser manipulada por JS pela variavel "img"
		img.src=local;			// Chama a variavel  de imagem e coloca o src informado no parametro
		img.id="foto3";			// Chama a variavel de imagem e coloca um o id "Foto3" para poder ser manipulado por css
		div.appendChild(img);			// Adciona a imagem a div como filho
	}
	function remover_todos() {			// Função que limpa a div
		var div = document.getElementById("mostrar");			// Chama a div pelo id "Mostrar" e coloca na variavel "div"
		while (div.firstChild) {			// Faz um loop que enquanto houver algum objeto dentro da div limpa
			div.removeChild(div.firstChild);			// Deleta o primeiro objeto que esta dentro da div
		}
	}
}