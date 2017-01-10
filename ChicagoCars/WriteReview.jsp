<%@ page import="java.io.*,
java.util.HashMap,
java.util.Map,
javax.servlet.*,
javax.servlet.http.*,
java.util.*"%>

<%@page import="dboperations.*"%>


	
	<% String username=" ";
	 String firstLetter=" ";
	 String productCategory=" ";
	

		
	HttpSession s=request.getSession();
	//username=(String)s.getAttribute("userid");
		
	response.setContentType("text/html");
		
	PrintWriter pw = response.getWriter();
			
	 %>
			
			<html>
					<head>
					<meta http-equiv='Content-Type' content='text/html' charset='utf-8' />
					<title>Chicago Cars</title>                    
                    <link rel='stylesheet' href='//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'>   
					<link rel='stylesheet' href='stylesreview.css' type='text/css' />                 
					</head>
					
		
		<body>
					<div id='container'>
					<header>
					<div id=imageLogo>
					<h1><a href='/'>CAR<span>RENTAL</span></a></h1>
					<h5 style='color:blue;float:right' ></h5></br>
					<h3 style='color:blue;float:right;font-style:italic' >Welcome <%=username%></h3>
					</div>
					</header>
					<nav id="myheader">
		
    </nav>
					
					<h2>Please Write Review</h2>
			
									
			 
			<form method='get' action='SubmitReviewToMongoDB.jsp'>
		
			<table>
	
			<tr>
			<td> User Name: </td>
			<td> <input type='text' name='username'> </td>
			</tr>
			
            <% CreateMongoDBEntities cmd = new CreateMongoDBEntities();
            List<String> l = cmd.getUniqueItems("manufacturer"); %>
            
			<tr>
			<td> Car Brand Used: </td>
			<td> <select name='carbrand'> 
            <% for(String str:l){ %>
			<option value='<%=str%>' selected><%=str%></option>
           <% } %>
			</td>
			</tr>
			
			<tr>
			<td> Review Rating: </td>
			<td>
			<div class='stars'><input class='star star-5' id='star-5' type='radio' name='reviewRating' value='5'/><label class='star star-5' for='star-5'></label><input class='star star-4' id='star-4' type='radio' name='reviewRating' value='4'/><label class='star star-4' for='star-4'></label>
            <input class='star star-3' id='star-3' type='radio' name='reviewRating' value='3'/><label class='star star-3' for='star-3'></label><input class='star star-2' id='star-2' type='radio' name='reviewRating' value='2'/>
            <label class='star star-2' for='star-2'></label><input class='star star-1' id='star-1' type='radio' name='reviewRating' value='1'/><label class='star star-1' for='star-1'></label></div>
			</td>
            </tr>
			
			
			
			
			<tr>
			<td> Review Date: </td>
			<td> <input type='text' name='reviewDate'> </td>
			</tr>
			<tr>
			
			<td> Review Text: </td>
			<td><textarea name='reviewText' rows='4' cols='50'> </textarea></td>
			</tr>
			</table>
			<br><br>
			<input type='submit' value='Submit Review'></input>
			</fieldset>
			</form>
			</article>
					</section>
					<!--<aside class='sidebar'>
					<ul>
					<li>
                    <h4>Products</h4>
                    <ul>
                    <li><a href='#'>Home Page</a></li>
                    <li><a href='PhoneDataStoreJsp.jsp'>Smart Phones</a></li>
                    <li><a href='TabletDataStoreJsp.jsp'>Tablets</a></li>
                    <li><a href='LaptopDataStoreJsp.jsp'>Laptops</a></li>
                    <li><a href='TvDataStoreJsp.jsp'>TV</a></li>
                    <li><a href='TrendingProductJsp.jsp'>Trending</a></li>
                    </ul>
					</li>
					<li>
                    <h4>About us</h4>
                    <ul>
                    <li class='text'>
                    <p style='margin: 0;'>Welcome to Best Deals, Where you will get new deals everyday</p>
                    </li>
                    </ul>
					</li>
					</ul>
					</aside>-->
					<div class='clear'></div>
					</div>
					</div>
					</body>
					</html>	
	