<html>
<body>
<h2>Hello World!</h2>
<jsp:useBean id ="st" class ="Student"/>
<jsp:setProperty name="st" property="id" value="1"/>
<jsp:setProperty name="st" property="name" value="Ankush"/>

The Details of the Student are::
<jsp:getProperty name="st" property="id" />
<jsp:getProperty name="st" property="name"  />
</body>
</html>
