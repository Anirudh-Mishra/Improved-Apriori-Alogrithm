<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>File Upload</title>
	</head>
	<link rel="stylesheet" href="style.css">
    <body> 
        <div class="wrapper">
            <div class="container">
                <h1>Upload a file</h1>
                <div class="upload-container">
                    <div class="border-container">
                        <form enctype="multipart/form-data" method="post" action="Output.jsp"> 
                            <label for="files"><img src="https://cdn0.iconfinder.com/data/icons/mixed-12/130/188-512.png" height=80px></label>
                            <input id="files" type="file" name="file" style="visibility:hidden"/><br><br>
                            <label style="font-weight:600; color:#1e0f40; font-family: Georgia, serif;" id="file-name"></label>
                            <p style="margin-top: 5px;">Browse computer for uploading the file</p><br>
                            <input type="submit" value="Upload File" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script src="script.js"></script>
</html>