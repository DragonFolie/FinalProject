<%@ page import="DAO.DB_ManagerDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <form class="contact100-form validate-form" method="post">
				<span class="contact100-form-title">
					<a href="newMovie.jsp"><h2>Go back</h2></a><br><br>
				</span>
      <span class="contact100-form-title">
					Add new session for movie
				</span>


      <div class="wrap-input100 input100-select bg1">
        <span class="label-input100">Movie name *</span>
        <div>
          <select class="js-select2" name="movieName">
            <%

              DB_ManagerDAO dbManager = new DB_ManagerDAO();
              ArrayList nameOfMovie = new ArrayList();
              nameOfMovie = dbManager.findAllMovieName();

              for (Object o : nameOfMovie) {


                out.print("<option >" + o.toString() + "</option>");
              }

            %>
          </select>
          <div class="dropDownSelect2"></div>
        </div>
      </div>

      <div class="wrap-input100 input100-select bg1"  style="width: 50%;">
        <span class="label-input100">Movie day of week *</span>
        <div>
          <select class="js-select2" name="sessionDay">
            <option >Monday</option>
            <option >Tuesday</option>
            <option >Wednesday</option>
            <option >Thursday</option>
            <option >Friday</option>
            <option >Saturday</option>
            <option >Sunday</option>
          </select>
          <div class="dropDownSelect2"></div>
        </div>
      </div>

      <div class="wrap-input100 bg1 rs1-wrap-input100">
        <span class="label-input100">Time start*</span>
        <input class="input100" type="time" name="timeStart" placeholder="Enter Time start">

        <span class="label-input100">Time end*</span>
        <input class="input100" type="time" name="timeEnd" placeholder="Enter Your Email ">
      </div>







      <div class="container-contact100-form-btn">
        <button type="submit" class="contact100-form-btn">
						<span>
							Submit
							<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
						</span>
        </button>
      </div>
    </form>
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
