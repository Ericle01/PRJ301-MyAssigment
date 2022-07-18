
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Time Table</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>

    <body>
        <header>
            <h1>FPT University Academic Portal</h1>
            <h2 class="col-md-12" style="text-align: center; padding: 5px; background-color: lightgray;" >Time Table</h2>
        </header>

        <div class="container">
            <form method="get" action="Timetable">
                <div class="row" style="margin: 10px;">
                    <div class="col-md-3" style="font-size: 28px;">Lecture: </div>

                    <input class="form-control col-md-6"  type="text" name="lecture" required>     
                    <input type="submit" value="View" class="btn btn-info col-md-1">
                    <div class="col-md-2"> </div>
                </div>
            </form>
            <div class="row" style="border: 1px solid lightgray;">
                <c:forEach var="s1" items="${list}">
                    <div class="col-md-2" style="margin: 10px;"><span style="font-size: 25px;"> <a href="Group?group=${s1.getGroup().getCode()}">${s1.getGroup().getCode()}</a><br> ${s1.getDate()}<br>${s1.getRoom().getCode()}<br><i style="${s1.isStatus()?"color: green;":"color: red;"}">${s1.isStatus()?"(attend)":"(Not yet)"}</i> <a href="TakingAttendance?sid=${s1.getId()}&status=${s1.isStatus()}&gcode=${s1.getGroup().getCode()}" class=" btn btn-info"  > Taking</a></span></div>
                            </c:forEach>
            </div>
        </div>


        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
                integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    </body>

</html>