<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
		<header class="header d-flex">
			<div class="rogo d-flex align-items-center text-success"><h1>Melong</h1></div>
			
			<form method="post" action="/jspTemplate/test/test02/test02result.jsp">
			
			<div class="search d-flex">
			<div class="input-group d-flex justify-content-center align-items-center">
            	<input type="text" class="form-control" name="title">
                    <div class="input-group-append">
                      <button class="btn bg-info text-white" type="submit">검색</button>
           			</div>
                  </div>
				</div>
				
			</form>
			
		</header>