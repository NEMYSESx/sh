<%@ page import="com.shruti.jecrc.User" %>

<%
    User user = (User) session.getAttribute("user");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Resume</title>
    <style>
        /* Reset some default styles */
        body, h1, p, a {
            margin: 0;
            padding: 0;
        }

        /* Apply box-sizing to ensure padding and borders don't overflow */
        * {
            box-sizing: border-box;
        }

        /* Body styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }

        /* Resume container */
        .resume-container {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: left;

        }

        /* Heading */
        h1 {
            font-size: 2em;
            margin-top: 50px;
            margin-bottom: 20px;
            color: #007BFF;
            text-align: center;
        }

        /* Paragraph styling for sections */
        p {
            font-size: 1.1em;
            margin-bottom: 10px;
        }

        b {
            font-weight: bold;
            color: #555;
        }

        /* Styling for logout link */
        a {
            display: block;
            padding: 10px;
            margin-top: 20px;
            background-color: #007BFF;
            color: white;
            text-decoration: none;
            text-align: center;
            border-radius: 5px;
            font-size: 1.2em;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #0056b3;
        }

        /* Section separator */
        .section-separator {
            margin: 20px 0;
            border-top: 2px solid #f0f0f0;
        }
    </style>
</head>
<body>
<div class="resume-container">
    <h1>Resume</h1>
    <!-- User Information -->
    <p><b>Full Name:</b> <%= user.getFullName() %></p>
    <p><b>Email:</b> <%= user.getEmail() %></p>
    <p><b>Phone:</b> <%= user.getPhone() %></p>

    <!-- Predefined Data Sections -->
    <div class="section-separator"></div>
    <p><b>Address:</b> 123 Main St, Springfield, IL 62701</p>

    <div class="section-separator"></div>
    <p><b>Experience:</b></p>
    <ul>
        <li><b>Software Engineer</b> - XYZ Corp (2024 - Present)</li>
        <li><b>Junior Developer</b> - ABC Solutions (2023 - 2024)</li>
    </ul>

    <div class="section-separator"></div>
    <p><b>Education:</b></p>
    <ul>
        <li><b>Bachelor of Science in Computer Science</b> - JECRC University (2022 - 2026)</li>
    </ul>

    <div class="section-separator"></div>
    <p><b>Skills:</b> Java, Python, JavaScript, SQL, HTML/CSS, React, Node.js, JSP</p>

    <a href="LogoutServlet">Logout</a>
</div>
</body>
</html>
