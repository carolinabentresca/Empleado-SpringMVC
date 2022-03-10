<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </head>
    <body style="background: #333333;color: #ffffff">
        <h5>Editar</h5>
        <hr style="background: #ffffff"/>
        <br/>
    <center>
        <form method="POST"> 
            <label>Código</label> <br/>
            <input type="text" name="id" placeholder="" required="required" style="font-size: 18px"/> <br/>
            <label>Nombre</label> <br/>
            <input type="text" name="nombre" placeholder="" required="required" style="font-size: 18px"/> <br/>
            <label>Apellido</label> <br/>
            <input type="text" name="apellido" placeholder="" required="required" style="font-size: 18px"/> <br/>
            <label>Email</label> <br/>
            <input type="email" name="email" placeholder="" required="required" style="font-size: 18px"/> <br/>
            <label>Actividad</label> <br/>
            <input type="text" name="actividad" placeholder="" required="required" style="font-size: 18px"/> <br/>
            <br/>
            <input type="submit" value="Editar Registro" style="background: #00cc66;color: #333333;font-size: 18px;width: 160px"/>
        </form>
    </center>
</body>
</html>
