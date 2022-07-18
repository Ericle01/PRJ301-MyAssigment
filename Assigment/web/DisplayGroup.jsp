<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Show Student</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>

    <body>
        <header>
            <h1>FPT University Academic Portal</h1>
            <h2 class="col-md-12" style="text-align: center; padding: 5px; background-color: lightgray;" >List Student of Group: ${param['group']}</h2>
        </header>
        <div class="container">
            <c:if test="${liststudent.size()!=0}">
                <div class="container-fluid">
                    <div class="row">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th style="width:10%">Id</th>
                                    <th style="width:15%">Image</th>
                                    <th style="width:15%">Member of Group</th>
                                    <th style="width:15%">Code</th>
                                    <th style="width:15%">Name</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="s" items="${liststudent}">
                                    <tr>
                                        <td style="width:10%">${s.getId()}</td>
                                        <td style="width:20%"><img src="${s.getImg()}" width="150px"></td>
                                        <td style="width:15%">${param['group']}</td>
                                        <td style="width:15%">${s.getCode()}</td>
                                        <td style="width:15%">${s.getName()} </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </c:if>

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