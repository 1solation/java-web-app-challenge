# Java Servlet Web App Challenge
Challenge to create a Java web app form with a MySQL backend to submit form inputs. First time using Apache Tomcat, Java servlets and JSP.

NB: This is only partially complete. See bottom of README.md for details.

## How to run

Start a server on Apache Tomcat and enter the following into the address bar - ```http://localhost:8080/java-web-app-challenge/```. 
Alternatively, import the project into the Eclipse IDE, and right click the project in the Project Explorer view - ```Run As``` > ```Run On Server``` and the application will open in a new tab in your IDE.

## URL parameters:

```?site_name=``` will set the site to whatever a user wants e.g. ```?site_name=AceParks``` will set the site to represent a form for AceParks.

To import MySQL database in MySQL Workbench:
Navigate to ```Server```>```Data Import```>```Import from Self-Contained File``` and navigate to this project directory on your machine.

### Bugs/Notes:
- Basic client-side form validation.
- Insertion of data into main `customers` table.
-  Forwarding onto new .jsp page to prevent resubmission on refresh.
- Foreign keys in MySQL DB not updating on insert to main customers table, most likely due to not sending the current ```site_name``` param to the relevant table in the DB. 
	- Need to fix this if I can.
- Tried to update the foreign keys mentioned above manually (in `customers sites` table) through use of a prepared statement which generates a key for the auto-generated customer ID - see [DatabaseManager.java](https://github.com/hasib-a/java-web-app-challenge/blob/master/src/controller/DatabaseManager.java).
	- UPDATE: removed this functionality, doesn't seem like the right one I need. Code has been commented out for now in case I need to go back to it before it's fixed.
