<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 004 04.10.21
  Time: 0:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.regex.Matcher" %>
<%@ page import="java.util.regex.Pattern" %>
<%@ page import="DAO.Admin" %>
<%@ page import="DAO.DB_ManagerDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Add new movie</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="views/addNewMoviePage/images/icons/favicon.ico"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="views/addNewMoviePage/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="views/addNewMoviePage/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="views/addNewMoviePage/fonts/iconic/css/material-design-iconic-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="views/addNewMoviePage/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="views/addNewMoviePage/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="views/addNewMoviePage/vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="views/addNewMoviePage/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="views/addNewMoviePage/vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="views/addNewMoviePage/vendor/noui/nouislider.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="views/addNewMoviePage/css/util.css">
    <link rel="stylesheet" type="text/css" href="views/addNewMoviePage/css/main.css">
    <!--===============================================================================================-->
</head>
<body>

<div class="container-contact100">
    <div class="wrap-contact100">

				<span class="contact100-form-title">
					<a href="newMovie.jsp"><h2>Go back</h2></a><br><br>
				</span>
        <span class="contact100-form-title">
					Update status of movie
				</span>
        <%

            Admin admin = new Admin();
            DB_ManagerDAO db_managerDAO  = new DB_ManagerDAO();
            DB_ManagerDAO db_managerDAO2 = new DB_ManagerDAO();
            DB_ManagerDAO db_managerDAO3 = new DB_ManagerDAO();


            ArrayList allMovieName = new ArrayList();
            ArrayList allSessionInfo = new ArrayList();




            String regex = "(.+),(.+),(.+),(.+)";
            String timeS = null;
            String timeE = null;
            String date = null;
            String status  = null;

            allMovieName= db_managerDAO2.findAllUniqueMovieName();

//			System.out.println("MOVIE:  " + allMovieName);

            for (int i = 0; i <allMovieName.size() ; i++) {

                allSessionInfo = db_managerDAO.findAllMovieSessionByName(allMovieName.get(i).toString());

//				System.out.println("InfoSession: " + allSessionInfo  + "   Movie   " + allMovieName.get(i));















                out.print("<form class=\"contact100-form validate-form\" method=\"post\">" +
                        "<div class=\"wrap-input100 input100-select bg1\">\n" +
                        "                    <div  class=\"wrap-input100 input100-select bg1\">\n" +
                        "                        <span class=\"label-input100\">Movie day of week *</span>\n" +
                        "                        <div>\n" +
                        "                            <select class=\"js-select2\" name=\"movieName\">\n" +
                        "                                <option >"+allMovieName.get(i)+"</option>\n" +
                        "                            </select>\n" +
                        "                            <div class=\"dropDownSelect2\"></div>\n" +
                        "                        </div>\n" +
                        "                        \n" +
                        "                    </div>\n" +
                        "                    <div class=\"wrap-input100 input100-select bg1\" >\n" +
                        "                        <span class=\"label-input100\">Movie day of week *</span>\n" +
                        "                        <div>\n" +
                        "                            <select class=\"js-select2\" name=\"sessionTime\">\n");

                for (int j = 0; j < allSessionInfo.size(); j++) {

                    Matcher m = Pattern.compile(regex).matcher(allSessionInfo.get(j).toString());


                    while (m.find()) {

                        timeS = m.group(1);
                        timeE = m.group(2);
                        date = m.group(3);
                        status = m.group(4);



//                        System.out.println( allMovieName.get(i)  +   " " + timeS+"-" +timeE+"-" +date+ "-" +status );
                        out.print("<option >"+timeS +"-"+timeE +";"+date +"</option>");

                    }

                }
//                uniqueSeats = db_managerDAO3.getUniqueSeatBySession(date,timeS);
//                System.out.println("unisize:" +uniqueSeats.size());
//                System.out.println("uni:" + uniqueSeats);
//                System.out.println("--------------------");
//				System.out.println(uniqueSeats + " + " + date);

                out.print(" </select>\n" +
                        "                            <div class=\"dropDownSelect2\"></div>\n" +
                        "                        </div>\n" +
                        "                        \n" +
                        "                    </div>\n" +
                        "                    <div  class=\"wrap-input100 input100-select bg1\">\n" +
                        "                        <span class=\"label-input100\">Movie day of week *</span>\n" +
                        "                        <div>" +
                        "<select class=\"js-select2\" name=\"status\">\n" +
                        "\t\t\t\t\t\t\t<option >Open</option>\n" +
                        "\t\t\t\t\t\t\t<option >Canceled</option>\n" +
                        "\t\t\t\t\t\t\t<option >Finished</option>\n" +
                        "\t\t\t\t\t\t\t<option >Close to buy</option>\n" +
                        "\t\t\t\t\t\t\t<option >Private</option>\n" +
                        "\t\t\t\t\t\t</select>" +
                        "                            " +
                        "<div class=\"dropDownSelect2\"></div>\n" +
                        "                        \n" +
                        "                        \n" +
                        "                    </div>\n" +
                        "                   \n" +
                        "                </div>\n" +
                        "                </div><div class=\"container-contact100-form-btn\">\n" +
                        "\t\t\t\t<button type=\"submit\" class=\"contact100-form-btn\">\n" +
                        "\t\t\t\t\t\t<span>\n" +
                        "\t\t\t\t\t\t\tSubmit\n" +
                        "\t\t\t\t\t\t\t<i class=\"fa fa-long-arrow-right m-l-7\" aria-hidden=\"true\"></i>\n" +
                        "\t\t\t\t\t\t</span>\n" +
                        "\t\t\t\t</button>\n" +
                        "\t\t\t</div></form>");




            }








        %>











    </div>
</div>





<!--===============================================================================================-->
<script src="views/addNewMoviePage/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="views/addNewMoviePage/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="views/addNewMoviePage/vendor/bootstrap/js/popper.js"></script>
<script src="views/addNewMoviePage/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="views/addNewMoviePage/vendor/select2/select2.min.js"></script>
<script>
    $(".js-select2").each(function(){
        $(this).select2({
            minimumResultsForSearch: 20,
            dropdownParent: $(this).next('.dropDownSelect2')
        });


        $(".js-select2").each(function(){
            $(this).on('select2:close', function (e){
                if($(this).val() == "Please chooses") {
                    $('.js-show-service').slideUp();
                }
                else {
                    $('.js-show-service').slideUp();
                    $('.js-show-service').slideDown();
                }
            });
        });
    })
</script>
<!--===============================================================================================-->
<script src="views/addNewMoviePage/vendor/daterangepicker/moment.min.js"></script>
<script src="views/addNewMoviePage/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="views/addNewMoviePage/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="views/addNewMoviePage/vendor/noui/nouislider.min.js"></script>
<script>
    var filterBar = document.getElementById('filter-bar');

    noUiSlider.create(filterBar, {
        start: [ 0, 100 ],
        connect: true,
        range: {
            'min': 0,
            'max': 1000
        }
    });

    var skipValues = [
        document.getElementById('value-lower'),
        document.getElementById('value-upper')
    ];

    filterBar.noUiSlider.on('update', function( values, handle ) {
        skipValues[handle].innerHTML = Math.round(values[handle]);
        $('.contact100-form-range-value input[name="from-value"]').val($('#value-lower').html());
        $('.contact100-form-range-value input[name="to-value"]').val($('#value-upper').html());
    });
</script>
<!--===============================================================================================-->
<script src="views/addNewMoviePage/js/main.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-23581568-13');
</script>

</body>
</html>
