<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>考核记录 - IDOHR</title>
		<link rel="stylesheet" href="/assets/css/bootstrap.min.css">
		<link rel="stylesheet" href="/assets/css/bootstrap-table.min.css">
		<link rel="stylesheet" href="/assets/css/bootstrap-dialog.min.css">
		<link rel="stylesheet" href="/assets/css/toastr.min.css">
		<link rel="stylesheet" href="/assets/css/bootstrap-multiselect.css">
	</head>

	<body>

		<%-- 配置信息显示表格 --%>
		<table id="result-table" class="table table-hover"></table>

		<%-- 工具按钮 --%>
		<div id="toolbar" class="btn-group pull-right">
			<%-- 查询按钮 --%>
			<button id="btn-view" type="button" class="btn btn-primary">
			<i class="glyphicon glyphicon-search"></i> 查询
		</button>
		</div>

		<%-- 配置窗体：模态弹出框 --%>
		<div id="model-select" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">考核结果查询</div>
					<%-- 窗体内容 --%>
					<div class="modal-body">
						<div class="form">
							<form class="form-horizontal">
								<div class="form-group">
									<label for="batch-select" class="control-label col-sm-3">考核选择</label>
									<div class="col-sm-8">
										<select id="batch-select" class="form-control">
										</select>
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">
						取消</button>
						<button type="button" id="select" class="btn btn-primary">查询</button>
					</div>
				</div>
			</div>
		</div>

		<%-- js文件引入 --%>
		<script type="text/javascript" src="/assets/js/jquery-3.2.1.min.js"></script>
		<script type="text/javascript" src="/assets/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="/assets/js/bootstrap-table.min.js"></script>
		<script type="text/javascript" src="/assets/js/bootstrap-table-zh-CN.min.js"></script>
		<script type="text/javascript" src="/assets/js/bootstrap-dialog.min.js"></script>
		<script type="text/javascript" src="/assets/js/toastr.min.js"></script>
		<script type="text/javascript" src="/assets/js/sha1.min.js"></script>
		<script type="text/javascript" src="/assets/js/bootstrap-multiselect.js"></script>
		<script type="text/javascript" src="/assets/js/bootstrap-table-export.js"></script>
		<script type="text/javascript" src="/assets/js/tableExport.js"></script>
		<script type="text/javascript" src="/assets/js/common.js"></script>
		<script type="text/javascript" src="/assets/js/result.js"></script>
	</body>

</html>