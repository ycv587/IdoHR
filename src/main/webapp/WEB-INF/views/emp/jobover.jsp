<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>加班记录 - IDOHR</title>
		<link rel="stylesheet" href="/assets/css/bootstrap.min.css">
		<link rel="stylesheet" href="/assets/css/bootstrap-table.min.css">
		<link rel="stylesheet" href="/assets/css/toastr.min.css">
	</head>

	<body>

		<%-- 加班记录显示表格 --%>
		<table id="jobover-table" class="table table-hover"></table>

		<%-- 工具按钮 --%>
		<div id="toolbar" class="btn-group pull-right">
			<%-- 新增按钮 --%>
			<button id="btn-add" type="button" class="btn btn-primary">
			<i class="glyphicon glyphicon-plus"></i> 新增记录
		</button>
		</div>

		<%-- 部门新增窗体：模态弹出框 --%>
		<div id="model-add" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">新增加班记录</div>
					<%-- 窗体内容 --%>
					<div class="modal-body">
						<div class="form">
							<form class="form-horizontal">
								<div class="form-group">
									<label for="empno-add" class="control-label col-sm-2">员工号</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="empno-add">
									</div>
								</div>
								<div class="form-group">
									<label for="ename-add" class="control-label col-sm-2">员工姓名</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="ename-add" readonly>
									</div>
								</div>
								<div class="form-group">
									<label for="overstart-add" class="control-label col-sm-2">开始时间</label>
									<div class="col-sm-10">
										<input type="datetime-local" class="form-control" id="overstart-add">
									</div>
								</div>
								<div class="form-group">
									<label for="overend-add" class="control-label col-sm-2">结束时间</label>
									<div class="col-sm-10">
										<input type="datetime-local" class="form-control" id="overend-add">
									</div>
								</div>
								<div class="form-group">
									<label for="overtype-add" class="control-label col-sm-2">加班类型</label>
									<div class="col-sm-10">
										<select class="form-control" id="overtype-add">
											<option id="no">普通加班</option>
											<option id="wo">周末加班</option>
											<option id="qo">法定节假日加班</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label for="remark-add" class="control-label col-sm-2">加班备注</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="remark-add">
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">
						取消</button>
						<button type="button" id="add" class="btn btn-primary">添加</button>
					</div>
				</div>
			</div>
		</div>

		<%-- js文件引入 --%>
		<script type="text/javascript" src="/assets/js/jquery-3.2.1.min.js"></script>
		<script type="text/javascript" src="/assets/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="/assets/js/bootstrap-table.min.js"></script>
		<script type="text/javascript" src="/assets/js/bootstrap-table-zh-CN.min.js"></script>
		<script type="text/javascript" src="/assets/js/toastr.min.js"></script>
		<script type="text/javascript" src="/assets/js/bootstrap-table-export.js"></script>
		<script type="text/javascript" src="/assets/js/tableExport.js"></script>
		<script type="text/javascript" src="/assets/js/jobover.js"></script>
	</body>

</html>