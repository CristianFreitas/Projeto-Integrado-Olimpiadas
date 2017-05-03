<!DOCTYPE html>
<html>
<head>
	<!-- Titulo da Página -->
	<title>Delegação da Somália</title>

	<!-- Mostrando acentuação -->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!-- Linkando CSS e Script -->
    <link 		href="css/index.css" 					rel="stylesheet">
    <script  	src="JavaScript/index.js"		type="text/javascript" ></script>

</head>

<!-- Aqui começa o corpo do text -->
<body style="background-image: url('img/olimpiada1.jpg');">




		<?php

			$serv = "localhost"; // variavel com o nome do servidor
			$user = "root";		// variavel com o nome de usuario
			$pw = "";			// variavel com a senha 
			$banco = "world";	// nome do banco

				// Seleciona o que vai ser apresentado na tabela.
				$sql= "SELECT Nome_atleta,concat(FLOOR(DATEDIFF(NOW(), atl.Dt_Nasc) / 365),' Anos') as idade, Nome_Mod, Nome_Tec 
						FROM atleta atl
						JOIN tecnico tc ON tc.Cod_Tec = atl.Cod_Tec
						JOIN itemmodalidade imo ON imo.Cod_Atleta = atl.Cod_Atleta
						JOIN modalidade mo ON mo.Cod_Mod = imo.Cod_Mod
						JOIN pais pa ON pa.Cod_Pais = atl.Cod_Pais
						WHERE pa.Cod_Pais = 4";

				
				// Faz a contagem das medalhas		
				$medalhas = "SELECT count(*) as 'cont' FROM medalhas me 
							JOIN atleta atl ON atl.Cod_Atleta = me.Cod_Atleta
							JOIN pais pa ON pa.Cod_Pais = atl.Cod_Pais
							WHERE pa.Cod_Pais = 4
							AND me.Tipo_Med <> 'Nenhuma'";
					                        
				// conexão com o banco
				$co= mysqli_connect($serv,$user,$pw,$banco) or trigger_error(mysqli_connect_error(),E_USER_ERROR);
				
				

				//retorna a pesquisa do select
				$r= mysqli_query($co,$sql);
				$med = mysqli_query($co,$medalhas);
				
				// retorna o total de medalhas de cada delegação
				$tot= mysqli_fetch_array($med);
				?>

<!-- Definindo o Tamanho da página -->
<div id = "site">
<!-- Separando o cabeçalho -->
<div id="cabecalho">
	<div class="cabecalho"> Projeto Integrado FAM </div>
</div>

<!-- Menu -->
<div id="menu">
	<div class="menu">
		<div class="btn-link"><p class="espaca"><A href="index.html"  class="btn-link">Home</A></p> </div>
		<!-- botao delegacoes -->
		<div class="btn-link"><p class="espaca"><A href="#" id="delegacoes" class="btn-link">Delegações</A></p> </div>
		<!-- botao relatorio -->
		<div class="btn-link"><p class="espaca"><A href="relatorio/Projeto Integrado.pdf" target="_blank" class="btn-link" style="font-weight: 400">Relatório</A></p></div>
		<!-- botao grupo -->
		<div class="btn-link"><p class="espaca"> <A href="#" id="grupo" class="btn-link">Grupo</A> </p></div>
	</div>
</div>
<!-- Fim menu -->

<!-- O conteúdo que o usuário deseja ver -->
<div id="conteudo">
	<!-- Define o fundo branco transparente -->
	<div class="conteudo fundo">
	<!-- Alinha tudo que vai na descrição do conteudo dentro da área demarcada -->
		<div id="mostrar" class="description ">
		<!-- Nome do país / Total de Medalhas -->
		<p style="opacity: 1;"> <h1>Somália</h1></p>
		<p style="opacity: 1;"> <h2>Total de Medalhas: <?php echo $tot['cont'];?></h2></p>



		<!-- Tabela responsiva -->
		<div>
			<table id="ResponsiveTable">
				<!-- Define as cores do cabeçalho da tabela, primeira linha. -->
				<tr id="headbow">
					<td >Nome</td>	
					<td >Idade</td>	
					<td >Modalidade</td> 
					<td >Técnico</td> 
				</tr>
	

				<?php
				// laço que vai criar campos da tabela de acordo com a quantidade de resultados e os seus dados
				while($linha = mysqli_fetch_array($r)) {
				?>


		<!-- Linha que vai entrar em loop e receber os dados. -->
			<tr>
				<td TableHeadData="Nome"><?php echo $linha["Nome_atleta"]; ?></td>	
				<td TableHeadData="Idade"> <?php echo $linha["idade"]; ?></td>
				<td TableHeadData="Mod"><?php echo $linha["Nome_Mod"]; ?></td>	
				<td TableHeadData="Tec"> <?php echo $linha["Nome_Tec"]; ?></td>
			
			</tr>
			<?php
				}
			?>
			</table>
			</div> <!-- DIV da tabela -->
			</div>	<!-- Div do Mostrar -->

	</div><!-- Div do Fundo -->
	</div><!-- Div do Conteudo -->

</div><!-- id site-->

</body>
</html>