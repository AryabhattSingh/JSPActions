# JSP Action - Project README

**Project Overview:**

The "JSP Action Tags" project is a web application that demonstrates the usage of JavaServer Pages (JSP) action tags to
handle form data submitted by users. The project focuses on processing user input from an HTML form, dynamically setting
data into a JavaBean object, and then displaying the processed information using JSP action tags.

**Project Components:**

1. **productDetails.html:** This HTML form allows end users to submit product information. When the submit button is clicked,
    the data is sent to a JSP file for processing.

3. **displayDetails.jsp:** This JSP file receives the data from the HTML form and utilizes JSP action tags to process and
    display the information.

**JSP Action Tags:**

The project primarily employs the following JSP action tags for its functionality:

1. **\<jsp:useBean> Tag:**
   - The `<jsp:useBean>` tag creates an instance of a JavaBean class dynamically within the JSP page.
   - **Attributes:**
     - `class`: Specifies the bean class to be instantiated (e.g., 'Product.java' in this project).
     - `id`: Specifies the reference variable name used to interact with the bean object.
     
2. **\<jsp:setProperty> Tag:**
   - The `<jsp:setProperty>` tag is used to set values on the bean object created by `<jsp:useBean>`.
   - **Attributes:**
     - `property`: Specifies the property name to set on the bean object.
       - `property = "*"`: 
         Writing this means whatever data come in the request will be automatically taken and the setProperty will set them
         on the bean using reflection because the member variables of the bean class have the same names as the value of
         'name' attributes in the `<input>` tags of the form.
       - `Type conversions` happen as the data that come from the form are `strings`, but in the Product bean class, we have
          `int` data type as well.

     - `name`: Specifies the name of the bean object (same as the `id` attribute of `<jsp:useBean>`).
     
3. **\<jsp:getProperty> Tag:**
   - The `<jsp:getProperty>` tag retrieves data from the bean object and displays it.
   - It invokes the getter methods of the bean class to retrieve property values.
   - **Attributes:**
     - `property`: Specifies the property name to retrieve from the bean object.
     - `name`: Specifies the name of the bean object (same as the `id` attribute of `<jsp:useBean>`).
     
**Application Flow:**

1. User enters data in the HTML form and clicks the submit button.
2. Submitted data is sent to the designated JSP page.
3. `<jsp:useBean>` tag dynamically creates a bean object of the specified class.
4. `<jsp:setProperty>` tag sets properties on the bean object based on incoming request parameters.
5. Data is automatically type-converted as needed (e.g., from strings to int) during the property setting.
6. `<jsp:getProperty>` tag retrieves property values using the getter methods of the bean class.
7. Retrieved data is displayed on the web page without the need for explicit `PrintWriter` usage.

**Usage:**

1. Clone the repository to your local machine.
2. Open the project in a web container such as Apache Tomcat.
3. Access the `productDetails.html` page in a web browser.
4. Enter product information and submit the form.
5. The data will be processed and displayed using the `displayDetails.jsp` page.

**Note:**

This project serves as an educational example of using JSP action tags for handling form data. It highlights how to 
dynamically create bean objects, set properties, and retrieve data for display. For production applications, further 
considerations such as validation, security, and a more complex data flow may be required.

Feel free to explore, modify, and learn from this project to enhance your understanding of JSP action tags and web 
development.
