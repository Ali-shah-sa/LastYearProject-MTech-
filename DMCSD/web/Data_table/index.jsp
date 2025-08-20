<%-- 
    Document   : index
    Created on : Apr 6, 2018, 3:26:22 PM
    Author     : java3
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Anonymization.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >

    <head>
        <meta charset="UTF-8">
        <title>DataTable</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel='stylesheet prefetch' href='https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css'>
        <link rel='stylesheet prefetch' href='https://cdn.datatables.net/v/dt/jszip-2.5.0/pdfmake-0.1.18/dt-1.10.12/af-2.1.2/b-1.2.2/b-colvis-1.2.2/b-flash-1.2.2/b-html5-1.2.2/b-print-1.2.2/cr-1.3.2/fc-3.2.2/fh-3.1.2/kt-2.1.3/r-2.1.0/rr-1.1.2/sc-1.4.2/se-1.2.0/datatables.min.css'>

        <link rel="stylesheet" href="Data_table/css/style.css">


    </head>

    <body>

    <body>
        <table id="example" class="display" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th>id</th>
                    <th>Age</th>
                    <th>type_employer</th>
                    <th>fnlwgt</th>
                    <th>education</th>
                    <th>education_num</th>
                    <th>marital</th>
                    <th>occupation</th>
                    <th>relationship</th>
                    <th>race</th>
                    <th>sex</th>
                    <th>capital_gain</th>
                    <th>capital_loss</th>
                    <th>hr_per_week</th>
                    <th>country</th>
                    <th>income</th>
                </tr>
            </thead>
            <%
                Connection con = SQLconnection.getconnection();
                Statement st = con.createStatement();
                try {
                    ResultSet rs = st.executeQuery("Select * from dataset group by age,type_employer, education, marital,race,sex");
                    while (rs.next()) {
            %>
            <tbody>
                <tr>
                    <td><%=rs.getString("id")%></td>
                    <td><%=rs.getString("Age")%></td>
                    <td><%=rs.getString("type_employer")%></td>
                    <td><%=rs.getString("fnlwgt")%></td>
                    <td><%=rs.getString("education")%></td>
                    <td><%=rs.getString("education_num")%></td>
                    <td><%=rs.getString("marital")%></td>
                    <td><%=rs.getString("occupation")%></td>
                    <td><%=rs.getString("relationship")%></td>
                    <td><%=rs.getString("race")%></td>
                    <td><%=rs.getString("sex")%></td>
                    <td><%=rs.getString("capital_gain")%></td>
                    <td><%=rs.getString("capital_loss")%></td>
                    <td><%=rs.getString("hr_per_week")%></td>
                    <td><%=rs.getString("country")%></td>
                    <td><%=rs.getString("income")%></td>
                </tr>
                 <%                                        }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }

            %>
            </tbody>
        </table>
    </body>
    <script src='https://code.jquery.com/jquery-1.12.3.js'></script>
    <script src='https://cdn.datatables.net/v/dt/jszip-2.5.0/pdfmake-0.1.18/dt-1.10.12/af-2.1.2/b-1.2.2/b-colvis-1.2.2/b-flash-1.2.2/b-html5-1.2.2/b-print-1.2.2/cr-1.3.2/fc-3.2.2/fh-3.1.2/kt-2.1.3/r-2.1.0/rr-1.1.2/sc-1.4.2/se-1.2.0/datatables.min.js'></script
    <script  src="Data_table/js/index.js"></script>
</body>

</html>
