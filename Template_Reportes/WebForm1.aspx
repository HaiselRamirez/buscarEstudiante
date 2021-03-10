<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Template_Reportes.WebForm1" %>

<!DOCTYPE html>

<html lang="es">
<head runat="server">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>SSU-UASD</title>
		<meta name="description" content="" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />
		<link rel="stylesheet" href="assets/css/jquery-ui.custom.min.css" />
		<link rel="stylesheet" href="assets/css/chosen.min.css" />
		<link rel="stylesheet" href="assets/css/bootstrap-datepicker3.min.css" />
		<link rel="stylesheet" href="assets/css/bootstrap-timepicker.min.css" />
		<link rel="stylesheet" href="assets/css/daterangepicker.min.css" />
		<link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css" />
		<link rel="stylesheet" href="assets/css/bootstrap-colorpicker.min.css" />
		<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />
		<link rel="stylesheet" href="assets/css/ace.min.css"/>
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
		<script src="assets/js/ace-extra.min.js"></script>
	</head>
	<body>
    <form id="form1" runat="server">
			<div class="main-content">
				<div class="main-content-inner">
					<div class="container">
						<div class="row">
							<div class="col-xs-12">
								<h2>SSU - UASD</h2>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="widget-box">
									<div class="widget-header widget-header-flat">
										<h3 class="widget-title">
											<i class="ace-icon fa fa-info"></i>
											<span>Buscar información de de nuevo ingreso</span>
										</h3>
									</div>
									<div class="widget-body">
										<div class="widget-main">
											<div class="row">
												<div class="col-xs-12 col-md-3">
													<div class="form-group">
														<label for="tCedula">Cedula de Identidad:</label>
														<input type="text" class="form-control" id="tCedula" name="tCedula" placeholder="Cedula de Identidads"/>
													</div>
												</div>
												
												<div class="col-xs-12 col-md-3">
													<div class="form-group">
														<label for="tRNE">RNE:</label>
														<input type="text" class="form-control" id="tRNE" name="tRNE" placeholder="RNE"/>
													</div>
												</div>
												<div class="col-xs-12 col-md-3">
													<div class="form-group">
														<label for="tNombre">Nombre:</label>
														<input type="text" class="form-control" id="tNombre" name="tNombre" placeholder="Nombre"/>
													</div>
												</div>
												<div class="col-xs-12 col-md-3">
													<div class="form-group">
														<label for="tApellidos">Apellidos:</label>
														<input type="text" class="form-control" id="tApellidos" name="tApellidos" placeholder="Apellidos"/>
													</div>
												</div>
												<div class="col-xs-12 col-md-offset-6 col-md-3">
													<button class="btn btn-block btn-primary" onclick="buscarEstu();" type="button">
														<i class="ace-icon fa fa-search"></i>
														<strong> Buscar</strong>
													</button>
												</div>
												<div class="col-xs-12 col-md-3">
													<button class="btn btn-block btn-danger" onclick="reset();" type="button">
														<i class="ace-icon fa fa-refresh"></i>
														<strong> Reiniciar</strong>
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row hidden" id="rTable">
							<div class="col-xs-12">
								<table class="table table-responsive" id="tblReporte">
									<thead>
										<tr>
											<th>Matricula</th>
											<th>Nombre</th>
											<th>Apellidos</th>
											<th>Campus</th>
											<th>Carrera</th>
										  <th><i class="ace-icon fa fa-info"></i>	</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
      </div>
    </form>
		<script src="assets/js/jquery-2.1.4.min.js"></script>
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/jquery-ui.custom.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="assets/js/chosen.jquery.min.js"></script>
		<script src="assets/js/spinbox.min.js"></script>
		<script src="assets/js/bootstrap-datepicker.min.js"></script>
		<script src="assets/js/bootstrap-timepicker.min.js"></script>
		<script src="assets/js/moment.min.js"></script>
		<script src="assets/js/daterangepicker.min.js"></script>
		<script src="assets/js/bootstrap-datetimepicker.min.js"></script>
		<script src="assets/js/bootstrap-colorpicker.min.js"></script>
		<script src="assets/js/jquery.knob.min.js"></script>
		<script src="assets/js/autosize.min.js"></script>
		<script src="assets/js/jquery.inputlimiter.min.js"></script>
		<script src="assets/js/jquery.maskedinput.min.js"></script>
		<script src="assets/js/bootstrap-tag.min.js"></script>
		<script src="assets/js/jquery.dataTables.min.js"></script>
		<script src="assets/js/jquery.dataTables.bootstrap.min.js"></script>
		<script src="assets/js/dataTables.buttons.min.js"></script>
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>
		<script>
			$(document).ready(function () {
				alert("sdfsdf");
				$("tblResponse").dataTable();
			});
			function buscarEstu() {
				$("#rTable").removeClass('hidden');				
			}


			function reset() {
				window.location.reload();
			}
		</script>
	</body>
</html>
