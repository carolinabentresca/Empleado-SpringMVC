<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menú</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </head>
    <body style="background: #333333;color: #ffffff">
        <a href="registro.htm" style="margin-left: 18px;color: #ff00cc">Nuevo Registro</a>
        <a href="edit.htm" style="color: #00cc66">Editar Registro</a>
        <hr style="background: #ffffff"/>
        <br/>
        <br/>
        <center>
            <table border="1" style="width: 650px">
                <thead>
                    <tr>
                        <th>Código</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Email</th>
                        <th>Actividad</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="dato" items="${lista}">
                        <tr>
                            <td>${dato.id}</td>
                            <td>${dato.nombre}</td>
                            <td>${dato.apellido}</td>
                            <td>${dato.email}</td>
                            <td>${dato.actividad}</td>
                            <td>
                                <a href="eliminar.htm?id=${dato.id}" style="color: #99ff33">Eliminar</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </center>
    </body>
</html>
