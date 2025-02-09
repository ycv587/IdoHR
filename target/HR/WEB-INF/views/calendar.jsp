<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>万年历</title>
		<link rel="stylesheet" href="/assets/css/bootfont.css" />
		<link rel="stylesheet" type="text/css" href="/assets/css/calendar.css">
		<script type="text/javascript" src="/assets/js/calendar.js"></script>

	</head>

	<body onload=initial();>

		<div id="content">
			<!-- 显示日期详情 -->
			<div id="detail">
				<div id="date_content"></div>

				<div id="animal_year"></div>
				<!-- 显示时钟 -->
				<p id="clock"></p>
			</div>
			<form name="calender_content" style="margin-top: -15px;">
				<table class="week">
					<tbody>
						<tr>
							<td class="ch">
								<!-- 日历头部 -->
								<table>
									<tbody>
										<tr class="day">
											<td>日</td>
											<td>一</td>
											<td>二</td>
											<td>三</td>
											<td>四</td>
											<td>五</td>
											<td>六</td>
										</tr>
									</tbody>
								</table>
						</tr>
						</td>
						<!-- 头部END -->

						<!-- js动态的向表格写入日期 -->
						<script>
							var Num; //Num计算出日期位置
							for(i = 0; i < 6; i++) {

								document.write('<table id="cal-content"><tr>');

								for(j = 0; j < 7; j++) {
									Num = i * 7 + j;
									document.write('<td id="SD' + Num + '" onclick="addDay(' + Num + ')" ');
									//周六 周日 假期样式设定
									if(j == 0 || j == 6) {
										document.write(' class="aorange"');
									} else {
										document.write(' class="one"');
									}
									document.write('title=""> </td>')
								}

								document.write('</tr></table></td></tr><tr><td><table style="width:399;"><tr style="text-align:center"> ');
								//农历
								for(j = 0; j < 7; j++) {
									Num = i * 7 + j;
									document.write('<td id="LD' + Num + '" onclick="addDay(' + Num + ')" class="bs" title=""> </td>')

								}
								document.write('</tr></table></td></tr>');

							}
						</script>
						<!-- 生成日期 END    -->
						</tr>
				</table>
				</td>
				</tr>
				</tbody>
				</table>
				<table>
					<tbody>
						<tr>
							<td class="sm">
								<table class="table_head">
									<tbody>
										<tr>
											<td>
												<!-- 选择年份菜单 -->
												<div class="year_select">
													<span onClick="BtN('year_d')"><i class="sym glyphicon glyphicon-chevron-left"></i></span>
													<select onChange="chaCld()" name="SY">
														<script>
															for(i = 1900; i < 2050; i++)
																document.write('<option>' + i + "年")
														</script>
													</select>
													<span onClick="BtN('year_a')"><i class="sym glyphicon glyphicon-chevron-right"></i></span>
												</div>
												<!-- 回到当天菜单 -->
												<div class="home_select">
													<span onClick="BtN('')"><i class="sym glyphicon glyphicon-home"></i></span>
												</div>

												<!-- 选择月份菜单 -->
												<div style="display:inline-block;">
													<span onClick="BtN('month_d')"><i class="sym glyphicon glyphicon-chevron-left"></i></span>
													<select onChange="chaCld()" name="SM">
														<script>
															for(i = 1; i < 13; i++) document.write('<option>' + (i < 10 ? ("0" + i) : i) + "月");
														</script>
													</select>
													<span onClick="BtN('month_a')"><i class="sym glyphicon glyphicon-chevron-right"></i></span>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>

	</body>

</html>