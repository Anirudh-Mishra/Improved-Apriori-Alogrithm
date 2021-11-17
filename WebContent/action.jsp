<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>
<%@ page import="practise.AprioriImproved" %>
<%@ page import="practise.Apriori" %>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Output</title>
	</head>
	<link rel="stylesheet" href="style.css">
	<body>
		<div class="wrapper">
            <div class="container">
                <h1>Successful Completion!</h1>
                <div class="upload-container">
                    <div class="border-container">
					<%
					   File file ;
					   int maxFileSize = 5000 * 1024;
					   int maxMemSize = 5000 * 1024;
					   String filePath = "D:\\";
					   String fileName = "";
					
					   String contentType = request.getContentType();
					   if ((contentType.indexOf("multipart/form-data") >= 0)) {
					
					      DiskFileItemFactory factory = new DiskFileItemFactory();
					      factory.setSizeThreshold(maxMemSize);
					      factory.setRepository(new File("D:\\temp"));
					      ServletFileUpload upload = new ServletFileUpload(factory);
					      upload.setSizeMax( maxFileSize );
					      try{ 
					         List fileItems = upload.parseRequest(request);
					         Iterator i = fileItems.iterator();
					         out.println("<html>");
					         out.println("<body>");
					         while ( i.hasNext () ) 
					         {
					            FileItem fi = (FileItem)i.next();
					            if ( !fi.isFormField () )  {
					                String fieldName = fi.getFieldName();
					                fileName = fi.getName();
					                boolean isInMemory = fi.isInMemory();
					                long sizeInBytes = fi.getSize();
					                file = new File( filePath + "Dataset.txt") ;
					                fi.write( file ) ;
					            }
					         }
					         out.println("</body>");
					         out.println("</html>");
					      }catch(Exception ex) {
					         System.out.println(ex);
					      }
					   }else{
					      out.println("<html>");
					      out.println("<body>");
					      out.println("<p>No file uploaded</p>"); 
					      out.println("</body>");
					      out.println("</html>");
					   }
					   
					   	long startingTime = System.currentTimeMillis();
					   	String strPath = "D://solution.txt";
					    File strFile = new File(strPath);
					    strFile.createNewFile();    
						AprioriImproved aprioriImproved = new AprioriImproved(filePath + "Dataset.txt", 0.6);
						aprioriImproved.doit();
						aprioriImproved.printFitemsets();
						
						long endingTime = System.currentTimeMillis();
						out.println("Running time: " + (endingTime - startingTime)/1000.0);
					%>
					</div>
                </div>
            </div>
        </div>
	</body>
</html>
