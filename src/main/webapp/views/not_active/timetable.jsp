<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Атрибут accesskey</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP&display=swap" rel="stylesheet">
</head>

<style>
    html,
    body {
        margin: 0;
        font-family: "Karla";
        color: #546e7a;
    }

    * {
        box-sizing: border-box;
    }

    .timetable {
        display: grid;
        grid-template-areas: ". week" "time content";
        grid-template-columns: 120px;
        grid-template-rows: 60px;
        width: 80vw;
        height: 50vh;
    }
    .timetable .accent-pink-gradient {
        display: flex;
        width: 100%;
        height: 100%;
        background: linear-gradient(135deg, #ee8ebc, #eea08e);
        transition: 0.2s ease box-shadow, 0.2s ease transform;
    }
    .timetable .accent-pink-gradient:hover {
        box-shadow: 0 20px 30px 0 rgba(238, 142, 188, 0.3);
        transform: scale(1.05);
    }
    .timetable .accent-orange-gradient {
        display: flex;
        width: 100%;
        height: 100%;
        background: linear-gradient(135deg, #eec08e, #dcee8e);
        transition: 0.2s ease box-shadow, 0.2s ease transform;
    }
    .timetable .accent-orange-gradient:hover {
        box-shadow: 0 20px 30px 0 rgba(238, 192, 142, 0.3);
        transform: scale(1.05);
    }
    .timetable .accent-green-gradient {
        display: flex;
        width: 100%;
        height: 100%;
        background: linear-gradient(135deg, #bcee8e, #8eeea0);
        transition: 0.2s ease box-shadow, 0.2s ease transform;
    }
    .timetable .accent-green-gradient:hover {
        box-shadow: 0 20px 30px 0 rgba(188, 238, 142, 0.3);
        transform: scale(1.05);
    }
    .timetable .accent-cyan-gradient {
        display: flex;
        width: 100%;
        height: 100%;
        background: linear-gradient(135deg, #8eeec0, #8edcee);
        transition: 0.2s ease box-shadow, 0.2s ease transform;
    }
    .timetable .accent-cyan-gradient:hover {
        box-shadow: 0 20px 30px 0 rgba(142, 238, 192, 0.3);
        transform: scale(1.05);
    }
    .timetable .accent-blue-gradient {
        display: flex;
        width: 100%;
        height: 100%;
        background: linear-gradient(135deg, #8ebcee, #a08eee);
        transition: 0.2s ease box-shadow, 0.2s ease transform;
    }
    .timetable .accent-blue-gradient:hover {
        box-shadow: 0 20px 30px 0 rgba(142, 188, 238, 0.3);
        transform: scale(1.05);
    }
    .timetable .accent-purple-gradient {
        display: flex;
        width: 100%;
        height: 100%;
        background: linear-gradient(135deg, #c08eee, #ee8edc);
        transition: 0.2s ease box-shadow, 0.2s ease transform;
    }
    .timetable .accent-purple-gradient:hover {
        box-shadow: 0 20px 30px 0 rgba(192, 142, 238, 0.3);
        transform: scale(1.05);
    }
    .timetable .weekend {
        background: #a1a1b3;
        color: #667981;
    }
    .timetable .week-names {
        grid-area: week;
        display: grid;
        grid-template-columns: repeat(7, 1fr);
        text-transform: uppercase;
        font-size: 12px;
    }
    .timetable .week-names > div {
        display: flex;
        align-items: center;
        justify-content: center;
        width: 100%;
        height: 100%;
        box-shadow: inset 1px 0 0 #eceff1;
    }
    .timetable .time-interval {
        grid-area: time;
        display: grid;
        grid-template-rows: repeat(6, 1fr);
        font-size: 14px;
    }
    .timetable .time-interval > div {
        display: flex;
        align-items: center;
        justify-content: center;
        width: 100%;
        height: 100%;
        box-shadow: inset 0 1px 0 0 #eceff1;
    }
    .timetable .content {
        grid-area: content;
        display: grid;
        grid-template-rows: repeat(6, 1fr);
        grid-template-columns: repeat(7, 1fr);
    }
    .timetable .content > div {
        box-shadow: inset 1px 0 0 #eceff1, inset 0 1px 0 0 #eceff1;
    }
</style>

<body>

<div class="timetable">
    <div class="week-names">
        <div>monday</div>
        <div>tuesday</div>
        <div>wednesday</div>
        <div>thursday</div>
        <div>friday</div>
        <div class="weekend">saturday</div>
        <div class="weekend">sunday</div>
    </div>
    <div class="time-interval">
        <div>8:00 - 10:00</div>
        <div>10:00 - 12:00</div>
        <div>12:00 - 14:00</div>
        <div>14:00 - 16:00</div>
        <div>16:00 - 18:00</div>
        <div>18:00 - 20:00</div>
    </div>
    <div class="content">


        <div>
            <%

                int min = 1;
                int max = 7;
                int a = (int) (Math.random()*(max-min+1)+min);

                if (a==1){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }



            %>
        </div>
        <div>
            <%


                if (a==2){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }



            %>
        </div>
        <div>
            <%


                if (a==3){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }



            %>
        </div>
        <div>
            <%




                if (a==4){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }


            %>
        </div>
        <div>
            <%

                if (a==5){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }

            %>
        </div>
        <div>
            <%

                if (a==6){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }

            %>
        </div>
        <div>
            <%

                if (a==7){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }

            %>
        </div>






        <div>
            <%


                if (a==1){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }



            %>
        </div>
        <div>
            <%


                if (a==2){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }



            %>
        </div>
        <div>
            <%


                if (a==3){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }



            %>
        </div>
        <div>
            <%




                if (a==4){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }


            %>
        </div>
        <div>
            <%

                if (a==5){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }

            %>
        </div>
        <div>
            <%

                if (a==6){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }

            %>
        </div>
        <div>
            <%

                if (a==7){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }

            %>
        </div>







        <div>
            <%


                if (a==1){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }



            %>
        </div>
        <div>
            <%


                if (a==2){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }



            %>
        </div>
        <div>
            <%


                if (a==3){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }



            %>
        </div>
        <div>
            <%




                if (a==4){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }


            %>
        </div>
        <div>
            <%

                if (a==5){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }

            %>
        </div>
        <div>
            <%

                if (a==6){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }

            %>
        </div>
        <div>
            <%

                if (a==7){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }

            %>
        </div>







        <div>
            <%


                if (a==1){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }



            %>
        </div>
        <div>
            <%


                if (a==2){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }



            %>
        </div>
        <div>
            <%


                if (a==3){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }



            %>
        </div>
        <div>
            <%




                if (a==4){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }


            %>
        </div>
        <div>
            <%

                if (a==5){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }

            %>
        </div>
        <div>
            <%

                if (a==6){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }

            %>
        </div>
        <div>
            <%

                if (a==7){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }

            %>
        </div>









        <div>
            <%


                if (a==1){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }



            %>
        </div>
        <div>
            <%


                if (a==2){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }



            %>
        </div>
        <div>
            <%


                if (a==3){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }



            %>
        </div>
        <div>
            <%




                if (a==4){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }


            %>
        </div>
        <div>
            <%

                if (a==5){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }

            %>
        </div>
        <div>
            <%

                if (a==6){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }

            %>
        </div>
        <div>
            <%

                if (a==7){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }

            %>
        </div>









        <div>
            <%


                if (a==1){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }



            %>
        </div>
        <div>
            <%


                if (a==2){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }



            %>
        </div>
        <div>
            <%


                if (a==3){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }



            %>
        </div>
        <div>
            <%




                if (a==4){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }


            %>
        </div>
        <div>
            <%

                if (a==5){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }

            %>
        </div>
        <div>
            <%

                if (a==6){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }

            %>
        </div>
        <div>
            <%

                if (a==7){
                    out.print("<div class=\"accent-orange-gradient\"> " + a +"</div>");

                }

            %>
        </div>

    </div>
</div>



</body>