# Data_DashBoard_JDBC
User Activity Reporting System

Overview:
The User Activity Reporting System is a mini project that provides insights into the activities of users within a system. The system is designed to track and report various user activities, including calls, messages, profile views, searches, and other relevant interactions. The purpose of the project is to analyze user engagement, patterns, and trends over a specified period, usually a month.

Key Features:

User-Centric Reports:

The system generates user-specific reports, allowing administrators or users to analyze their own activities.
Activities tracked include calls, messages, profile views, searches, and more.
Monthly Activity Comparison:

The system compares user activities between the current month and the previous month.
It calculates the percentage change in each type of activity, providing insights into user behavior trends.
Top Searches:

The system identifies and displays the top three most searched terms based on user searches.
This feature helps highlight popular topics or interests among users.
Database Interaction:

The project interacts with a MySQL database to retrieve and store user activity data.
It uses JDBC (Java Database Connectivity) to establish a connection and perform SQL queries.
Flexible and Extensible:

The project is designed to be flexible and extensible, allowing for the easy addition of new types of user activities or features.
It uses a modular approach to accommodate future enhancements.
Graphical User Interface (GUI):

The project includes a simple GUI to represent the collected data visually.
The GUI provides a user-friendly way to view reports and statistics.
Implementation:

The system is implemented in Java, using JDBC for database interaction.
It includes a set of classes to handle different types of user activities.
The code is organized into functions, promoting modularity and readability.
The GUI is implemented to display user reports in a clear and organized manner.
How to Use:

Database Setup:

Configure the MySQL database with the necessary tables (Calls, Messages, PAFDirections, WVFProfile, ProfileViews, Searches).
Import the provided database dump file to populate initial data.
Compile and Run:

Compile the Java code using the provided classes.
Run the main program to generate user reports and display them on the GUI.
User Input:

Input the user ID for whom the reports are to be generated.
The system fetches and analyzes data for the specified user.
View Reports:

The GUI presents user reports, including counts of different activities and percentage changes.
Conclusion:
The User Activity Reporting System is a practical tool for understanding user behavior within a system. It provides valuable insights for administrators, helping them make data-driven decisions and improve user engagement. The project's modular design and extensibility make it adaptable to evolving requirements in the future.
