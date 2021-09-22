<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
<body>

	<!--*******************
        Preloader start
    ********************-->
	<jsp:include page="/WEB-INF/views/common/preloader.jsp" />
	<!--*******************
        Preloader end
    ********************-->


	<!--**********************************
        Main wrapper start
    ***********************************-->
	<div id="main-wrapper">

		<!--**********************************
            Nav header start
        ***********************************-->
		<jsp:include page="/WEB-INF/views/common/top.jsp" />
		<!--**********************************
            Header end ti-comment-alt
        ***********************************-->

		<!--**********************************
            Sidebar start
        ***********************************-->

		<jsp:include page="/WEB-INF/views/common/sidebar.jsp" />

		<!--**********************************
            Sidebar end
        ***********************************-->

		<!--**********************************
            Content body start
        ***********************************-->
		<div class="content-body">
			<div class="container-fluid">
				<div class="row page-titles mx-0">
					<div class="col-sm-6 p-md-0">
						<div class="welcome-text">
							<h4>강의 등록</h4>
						</div>
					</div>
					<div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="javascript:void(0)">강의관리</a></li>
							<li class="breadcrumb-item active"><a href="javascript:void(0)">강의 등록</a></li>
						</ol>
					</div>
				</div>


				<!-- 검색결과 -->

				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">강의등록</h4>
							</div>
							<div class="card-body">
								<div class="basic-form">
									<form id="profForm" class="form-valide">

										<div class="form-row">
											<div class="form-group col-md-6">
												<label>강의제목</label> <input name="lecture_name" type="text" class="form-control" required>

											</div>
											<div class="form-group col-md-6">
												<label>학과</label> <select name="grade" id="inputState" class="form-control">
													<option>컴퓨터공학과</option>
													<option>경영학과</option>
													<option>수학과</option>
													<option>조소과</option>
													<option selected="">상관없음</option>
												</select>
											</div>
											<div class="form-group col-md-6">
												<label>대상학년</label> <select name="grade" id="inputState" class="form-control">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option selected="">상관없음</option>
												</select>
											</div>
											<div class="form-group col-md-6">
												<label>강의실</label> <input name="classroom" type="text" class="form-control" placeholder="예) 덮밥관 201호">
											</div>
											<div class="form-group col-md-6">
												<label>강의시간</label> <input name="lecture_time" type="text" class="form-control" placeholder="예) 수 1,2,3">
											</div>
											<div class="form-group col-md-6">
												<label>분반</label> <select name="division" id="inputState" class="form-control">
													<option>1분반</option>
													<option>2분반</option>
													<option>3분반</option>
													<option selected="">없음</option>
												</select>
											</div>
											<div class="form-group col-md-6">
												<label>학점</label> <input name="credit" type="number" min="1" max="3" class="form-control" placeholder="3">
											</div>
											<div class="form-group col-md-6">
												<label>구분</label> <select name="section" id="inputState" class="form-control">
													<option selected="">전공/전공기초</option>
													<option>교양/기타</option>
												</select>
											</div>
											<div class="form-group col-md-6">
												<label>수강정원</label> <input name="student_full" type="number" min="1" max="300" class="form-control" placeholder="30"> <small id="passwordHelpBlock" class="form-text text-muted">
													* 정원 변경시 과사무실에 문의바랍니다. </small>
											</div>
											<div class="form-group col-md-6">
												<label>비고</label> <input name="remarks" type="text" class="form-control" placeholder="생략가능. 최대 30자">
											</div>
										</div>


										<button class="btn btn-primary" onclick="fn_create();">등록</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<!--**********************************
            Content body end
        ***********************************-->


		<!--**********************************
            Footer start
        ***********************************-->
		<jsp:include page="/WEB-INF/views/common/footer.jsp" />
		<!--**********************************
            Footer end
        ***********************************-->

		<!--**********************************
           Support ticket button start
        ***********************************-->

		<!--**********************************
           Support ticket button end
        ***********************************-->


	</div>
	<!--**********************************
        Main wrapper end
    ***********************************-->

	<script type="text/javascript">
		function fn_create() {
			var params = $('#profForm').serializeArray();
			//var params = $('#profForm').serializeObject();
			console.log(params);
			$.ajax({
				url : "/api/professorLecture/create",
				type : "POST",
				data : params,
				dataType : 'json',
				error : function(request, status, error) {
					alert("저장중 오류가 발생했습니다");
				},

				success : function(data) {
					alert("성공적으로 저장되었습니다.");
				}
			})
		}
	</script>
	<!--**********************************
        Scripts
        
        
    ***********************************-->
	<!-- Required vendors -->
	<script src="../resources/vendor/global/global.min.js"></script>
	<script src="../resources/js/quixnav-init.js"></script>
	<script src="../resources/js/custom.min.js"></script>



	<!-- Datatable -->
	<script src="../resources/vendor/datatables/js/jquery.dataTables.min.js"></script>
	<script src="../resources/js/plugins-init/datatables.init.js"></script>
</body>

</html>