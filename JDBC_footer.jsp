
		<%
			}catch(Exception e){
	            e.printStackTrace();
	        }finally{
	            if(rs != null) rs.close();
	            if(pstmt != null) pstmt.close();
	            if(conn != null) conn.close();
	        }
		%>