
	<%
		response.setContentType("text/html; charset=euckr");
		request.setCharacterEncoding("euckr");
	    String driverName="com.mysql.jdbc.Driver";
	    String url = "jdbc:mysql://localhost:3306/my_web?useUnicode=true&characterEncoding=euckr";
	    String id = "root";
	    String pwd ="9305";
	   	Connection conn =null;
		PreparedStatement pstmt =null;
		ResultSet rs = null;

	    try{
	        //[1] JDBC 드라이버 로드
	        Class.forName(driverName);     
		    
			int md_column_count =0;
			    // out.println("mysql jdbc Driver registered!!");
			   
		    //[2]데이타베이스 연결 
			conn = DriverManager.getConnection(url,id,pwd);
	    
	
	%>