# java-servlet-dual-auth-system
Java MVC web application showcasing secure dual-authentication (Username/Email) and a modern UI for a food platform.
A web application demonstrating a complete user authentication flow (Signup & Login) using the **Java MVC (Model-View-Controller)** architecture. The project includes a modern, responsive frontend UI for a food delivery platform, with a fully functional Java/MySQL backend focused on user management.

##  Key Features

*   **User Registration:** Secure signup process to create a new user account and store credentials in the database.
*   **Dual-Login System:** Registered users can securely log in using either their **Username** or **Email address**.
*   **Session Management:** Implemented HTTP Sessions (`HttpSession`) to protect routes and ensure only logged-in users can access the homepage.
*   **MVC Architecture:** Clean separation between the View (`.jsp` files), Controller (Java Servlets), and Model (JDBC/Database logic).
*   **Modern UI Design:** A visually appealing frontend built with HTML, CSS, and FontAwesome (includes a static homepage UI concept).

##  Tech Stack

*   **Frontend:** JSP, HTML5, CSS3
*   **Backend:** Java (Servlets, JDBC)
*   **Database:** MySQL
*   **Server:** Apache Tomcat 

##  Project Structure

*   `signup.jsp` & `login.jsp` - Secure entry points for user onboarding and authentication.
*   `homepage.jsp` - The session-protected basic dashboard UI.
*   `Signup.java` & `Login.java` - Servlet controllers handling POST requests and session routing.
*   `ModelLogin.java` - The Model containing the core database logic and `PreparedStatement` SQL queries.
*   `jdbcConnector.java` - Manages the MySQL database connection.

##  Setup & Installation

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/akhil4ph/java-servlet-dual-auth-system.git](https://github.com/akhil4ph/java-servlet-dual-auth-system.git)
