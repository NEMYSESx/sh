<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        /* General reset and body styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #e3f2fd; /* Soft light blue background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Form container */
        .login-container {
            background-color: #ffffff; /* White background for the form */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            width: 100%;
            max-width: 350px;
            text-align: center;
            transition: transform 0.3s ease-in-out; /* Smooth hover effect */
        }

        .login-container:hover {
            transform: translateY(-5px); /* Slight lift effect on hover */
        }

        /* Heading style */
        h1 {
            font-size: 2.2em;
            color: #3c5a99; /* Soft navy blue color */
            margin-bottom: 20px;
        }

        /* Label and input styling */
        label {
            display: block;
            font-size: 1em;
            margin-bottom: 8px;
            text-align: left;
            color: #555; /* Subtle gray for the labels */
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ddd; /* Light gray border */
            border-radius: 8px;
            font-size: 1em;
            transition: border-color 0.3s ease-in-out;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #6fa3ef; /* Soft blue border on focus */
            outline: none;
        }

        /* Submit button styling */
        button {
            width: 100%;
            padding: 14px;
            background-color:  #007BFF;
            color: white;
            font-size: 1.2em;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
        }

        /* Error message styling */
        .error-message {
            color: #e57373; /* Soft red for error messages */
            margin-top: 15px;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>Login</h1>
        <form action="LoginServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>

            <button type="submit">Login</button>
        </form>

        <!-- JSP Error Message Handling -->
        <%
            String errorMessage = request.getParameter("error");
            if (errorMessage != null && !errorMessage.isEmpty()) {
        %>
            <p class="error-message"><%= errorMessage %></p>
        <%
            }
        %>
    </div>
</body>
</html>
