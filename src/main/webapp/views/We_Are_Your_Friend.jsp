<%@ page import="DAO.UsersManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.logging.Logger" %>
<%@ page import="servlets.NewMoviePage" %>
<%@ page import="DAO.DB_ManagerDAO" %>
<%@ page import="DAO.Admin" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Атрибут accesskey</title>
        <meta name="viewport" content="width=device-width">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Yusei+Magic&display=swap" rel="stylesheet">
        
    </head>
    <style>
/* General */
body{
    font-size: 14px;
    line-height: 1.42857143;
}
     *{
        font-family: 'Yusei Magic', sans-serif;
         padding: 0;
         margin: 0;
         list-style:none;
         text-decoration: none;
         

     }
     ul, ol {
    list-style: none;
}
li {
    list-style-type: none; /* Убираем маркеры */
   }

    .content_inner_text_hr{
    margin: 50px auto;
    width: 650px;
    padding-left:auto ;
    padding-right:auto ;
    color: #666;



}

     /*Header */ /*Header */ /*Header */ /*Header */ /*Header */ /*Header */ /*Header */
     .logo {
  padding-left: 50px;
  font-size: 25px;
  display: flex;
  justify-content: flex-end;
  align-items: center;

  text-decoration: none;
}
.logo a {
  color: #666;
}
.logo a:hover {
  color: white;
  transition: 0.5s;
}
     .header{
        

     }
     .header_container{
        border-bottom: .5px solid #666;
        width: 100%;
        height: 63px;
        background-color: black;
        display: grid;
        grid-template-columns: 30% 15% 55%;
        

        

        
       
        


     }
     @media  (max-width:1100px){
        .header_container_empty{
            display: none;
        }
        .header_container{
            display: grid;
            grid-template-columns: 25%  75%;
        }
        

        }
     .header_container>div.header_logo{
         
     }
     .header_logo_image{
         width: 186px;
         height: 62px;
         padding-left: 35% ;
     }

     .header_container>div.header_container_empty{

     }
     .header_container>div.header_nav{
         padding-top: 15px;
         text-align: center;
         vertical-align: middle;
       
        
       
    
    
    }
    .header_inner_ul{
        vertical-align: middle;

        margin: 0; /* Обнуляем значение отступов */
    padding: 4px; /* Значение полей */
    }

    .header_inner_ul a{
        color:#666;
    }
    .header_inner_ul a:hover{
         color: white;
         transition: 0.5s;
     }

    .header_inner_ul li {
    vertical-align: middle;
    display: inline; /* Отображать как строчный элемент */
    margin-right: 20px; /* Отступ слева */
    color: #666;
    padding: 3px; /* Поля вокруг текста */
   }


   /* Main *//* Main *//* Main *//* Main *//* Main *//* Main */
   
   
   
   .main{
        background-color: #000000;
        
    }

    .main_inner{

        padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
    text-align: center;
    width: 1170px;
    }
.main_inner_title_photo{
    
    padding-top: 74px;
    margin: 0 auto;
    display: block;
    
    max-width: 680px;
    
    width: 100%;
    height: auto;

}


.main_inner_title{
    
    font-size: 3.2em;
    margin-bottom: 60px;
    
    max-width: 900px;
    color: white;
    text-align: center;
    margin: 74px auto;
}

.main_inner_description{
    font-size: 2.2em;
    padding-top: 40px;
    margin-bottom: 60px;
    
    max-width: 900px;
    color: white;
    text-align: center;
    margin: 74px auto;


}
.main_inner_date{
    font-size:1.7em;
    margin-bottom: 60px;
    font-weight: 100;
    line-height: 2;
    max-width: 900px;
    color:#666;
    text-align: center;
    margin: 44px auto;
    padding-bottom: 104px;
    border-bottom: 1px solid #666 ;

}

.main_photo{
    padding-top: 74px;
    margin: 0 auto;
    display: block;
    
    max-width: 680px;
    
    width: 100%;
    height: auto;
    margin-bottom: 74px;


}

.main_text{
    color: white;
    font-size: 1.6em;
    font-weight:300;
    text-align: left;
    max-width: 915px;
    margin: 45px auto;
    line-height: 1.65em;
    
}




.links{

    margin: 65px 0 100px;
    padding: 0 0 75px;
    background: url(img/icon-social-list.png) no-repeat center bottom;



}
.links li{
    display: inline-block;
    width: 86px;
    height: 60px;
    border: 1px solid #333;
    opacity: 1;
    margin: 0 15px;
    transition: all 0.25s ease-out;
}
.links_img{
    padding-top: 15px;
    opacity: .5;

}
.links_img:hover{
    
    opacity: 1;
    transition: 0.5s;

}








.news_list_date{

    display: block;
    font-size: 1.7em;
    font-weight: 200;
    color: #757575;
}


.news_list_inner{

    padding: 45px 0 74px;
    border-bottom: 1px solid #333;
    max-width: 680px;
    margin: 0 auto;
    display: grid;
    grid-template-columns: 50% 50%;
    grid-gap: 20px ;
    height: auto;
}
.news_list_inner>div.news_list_inner_text{
    padding-top: 40px;
    font-size: 1.5em;
    font-weight: 200;
    color: #fff;
    display: inline-block;
    vertical-align: center;
    text-align: left;
}

.news_list_inner>div.news_list_inner_photo{
    

}


.about_game_forum{

    display: flex;
    
    


}


.email_sender_forum{
    margin: 150px auto;
    max-width: 880px;
    width: 300px;
    color: #757575;
    text-align: center;
    font-family: 'Yusei Magic', sans-serif;
    font-weight: 300;
    font-size: 24px;
    line-height: 2em;
    vertical-align: middle;
    display: flex;
    text-align: center;
    align-items: center;
    opacity: 0.8;

}
.email_sender_forum:hover{
    color: white;
    transition: 1s;
    opacity: 1;
}

.about_game_forum_padding{
    margin-left: 25px;

}

/* Comment *//* Comment *//* Comment *//* Comment *//* Comment *//* Comment *//* Comment */
.comment{
    color: white;
    background-color: #191b1f;
    padding-top: 30px;
    padding-bottom: 5px;
    
    
    max-width: 1015px;
    margin: 45px auto;
    line-height: 1.65em;


}
.comment_area{
    width: 615px;
    margin: 0 auto;
    max-width: 715px;
    position: relative;
    display: grid;
    grid-template-columns: 50% 50%;
    grid-gap:20px;


}

.comment_area>div.name{
    
    
    
}
.content_inner_text_third_input_type_One{
    text-align: left;
    
    
    padding: 12px;
    margin: 10px 0;
    border: 1px solid rgb(66, 66, 66);
    background-color: rgb(24, 24, 23);
    color:white;
    font-family: sans-serif;
    font-size: 12px;
    text-align: center;
    height: 5px;
    
}
.comment_area>div.date{

    display: inline-block;
    
    text-align: right;


}

/*
=====
RESET STYLES
=====
*/

.field__input{ 
  --uiFieldPlaceholderColor: var(--fieldPlaceholderColor, #ffffff);
  
  background-color: transparent;
  border-radius: 0;
  border: none;

  -webkit-appearance: none;
  -moz-appearance: none;

  font-family: inherit;
  font-size: inherit;
  color: white;
}

.field__input:focus::-webkit-input-placeholder{
  color: var(--uiFieldPlaceholderColor);
}

.field__input:focus::-moz-placeholder{
  color: var(--uiFieldPlaceholderColor);
}

/*
=====
CORE STYLES
=====
*/

.field{
  --uiFieldBorderWidth: var(--fieldBorderWidth, 2px);
  --uiFieldPaddingRight: var(--fieldPaddingRight, 1rem);
  --uiFieldPaddingLeft: var(--fieldPaddingLeft, 1rem);   
  --uiFieldBorderColorActive: var(--fieldBorderColorActive, rgba(22, 22, 22, 1));

  display: var(--fieldDisplay, inline-flex);
  position: relative;
  font-size: var(--fieldFontSize, 1rem);
}

.field__input{
  box-sizing: border-box;
  width: var(--fieldWidth, 60%);
  height: var(--fieldHeight, 3rem);
  padding: var(--fieldPaddingTop, 1.25rem) var(--uiFieldPaddingRight) var(--fieldPaddingBottom, .5rem) var(--uiFieldPaddingLeft);
  border-bottom: var(--uiFieldBorderWidth) solid var(--fieldBorderColor, rgba(0, 0, 0, .25));  
}

.field__input:focus{
  outline: none;
}

.field__input::-webkit-input-placeholder{
  opacity: 0;
  transition: opacity .2s ease-out;
}

.field__input::-moz-placeholder{
  opacity: 0;
  transition: opacity .2s ease-out;
}

.field__input:focus::-webkit-input-placeholder{
  opacity: 1;
  transition-delay: .2s;
}

.field__input:focus::-moz-placeholder{
  opacity: 1;
  transition-delay: .2s;
}

.field__label-wrap{
  box-sizing: border-box;
  pointer-events: none;
  cursor: text;

  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
}

.field__label-wrap::after{
  content: "";
  box-sizing: border-box;
  width: 60%;
  height: 0;
  opacity: 0;

  position: absolute;
  bottom: 0;
  left: 0;
}

.field__input:focus ~ .field__label-wrap::after{
  opacity: 1;
}

.field__label{
  position: absolute;
  left: var(--uiFieldPaddingLeft);
  top: calc(50% - .5em);

  line-height: 1;
  font-size: var(--fieldHintFontSize, inherit);

  transition: top .2s cubic-bezier(0.9, -0.15, 0.1, 1.15), opacity .2s ease-out, font-size .2s ease-out;
  will-change: bottom, opacity, font-size;
}

.field__input:focus ~ .field__label-wrap .field__label,
.field__input:not(:placeholder-shown) ~ .field__label-wrap .field__label{
  --fieldHintFontSize: var(--fieldHintFontSizeFocused, .75rem);

  top: var(--fieldHintTopHover, .25rem);
}
/*
effect 
*/

.field_v2 .field__label-wrap{
  overflow: hidden;
}

.field_v2 .field__label-wrap::after{
  border-bottom: var(--uiFieldBorderWidth) solid var(--uiFieldBorderColorActive);
  transform: translate3d(-105%, 0, 0);
  will-change: transform, opacity;
  transition: transform .285s ease-out .2s, opacity .2s ease-out .2s;
}

.field_v2 .field__input:focus ~ .field__label-wrap::after{
  transform: translate3d(0, 0, 0);
  transition-delay: 0;
}
/*
=====
LEVEL 4. SETTINGS
=====
*/

.field{
  --fieldBorderColor: #313131;
  --fieldBorderColorActive: #202de8de;
}

/*
=====
DEMO
=====
*/

body{
  font-family: -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Open Sans, Ubuntu, Fira Sans, Helvetica Neue, sans-serif;
  margin: 0;

  min-height: 100vh;
  display: flex;
  flex-direction: column;
}

.page{
  box-sizing: border-box;
  width: 100%;
  
  margin: auto;
  

  display: grid;
  grid-gap: 30px;
}


.text{

    width: 100%;
    

}

.text_inner{
    width: 740px;
    height: auto;
    padding: 20px;
    background: rgb(7, 7, 7);
    color: white;
    
    text-align: center;
    line-height: 1.48em;
    font-family: 'Yusei Magic', sans-serif;
    font-weight: 200;
    font-size: 18px;
    
    transition: all 1.7s ease-in-out;
    border-color:none;

}


/* Bottun Send */ /* Bottun Send */ /* Bottun Send */ /* Bottun Send */ /* Bottun Send */ /* Bottun Send */ 
.button_send {
    font-family: 'Cookie', cursive;
  height: 80%;
  display: flex;
  align-items: right;
  justify-content:flex-end;
  margin-top: 20px;
  padding-right: 100px;
  font-family: 'Cookie', cursive;
}

#btn {
    font-family: 'Cookie', cursive;
  background: rgb(7, 7, 7);
  height: 40px;
  min-width: 150px;
  border: none;
  border-radius: 10px;
  color: #eee;
  font-size: 40px;
  font-family: 'Cookie', cursive;
  position: relative;
  transition: 1s;
  -webkit-tap-highlight-color: transparent;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  padding-top: 5px;
  font-family: 'Cookie', cursive;
}

#btn #circle {
  width: 5px;
  height: 5px;
  background: transparent;
  border-radius: 50%;
  position: absolute;
  top: 0;
  left: 50%;
  overflow: hidden;
  transition: 500ms;
  font-family: 'Cookie', cursive !important;
}
#btn span{
    font-family: 'Cookie', cursive !important;

}
.noselect {
    font-size: 40px;
    font-family: 'Cookie', cursive !important;
  -webkit-touch-callout: none;
    -webkit-user-select: none;
     -khtml-user-select: none;
       -moz-user-select: none;
        -ms-user-select: none;
            user-select: none;
            font-family: 'Cookie', cursive !important;
}
.button_send_button{

    background: none;
    color: white;
    border: 0;
    font-size: 40px;
    font-family: 'Cookie', cursive !important;
}
#btn:hover {
  background: transparent;
  font-family: 'Cookie', cursive !important;
}

#btn:hover #circle {
  height: 50px;
  width: 150px;
  left: 0;
  border-radius: 0;
  border-bottom: 2px solid #202de8de;
  font-family: 'Cookie', cursive !important;
}



/* Comment List *//* Comment List *//* Comment List *//* Comment List *//* Comment List *//* Comment List */

.comment_list{
    

    color: white;
    max-width: 915px;
    margin: 45px auto;
    line-height: 1.65em;
    
    height: 350px;
    display: grid;
    grid-template-columns: 30% 70%;
}
.comment_list>div.comment_list_left{
    line-height: 2rem;
    padding-top: 25%;
    background-color: rgb(21, 23, 26);
    position: relative;

    
}

.comment_list_left p {
  
  color: #eee;
  font-size: 24px;
  font-family: 'Cookie', cursive;
  transition: 1s;
  
    margin-bottom: 10px;
}
.comment_list_left span{
    color: #666;
  font-size: 14px;
  font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
  
  margin-bottom: 20px ;

}
.comment_list>div.comment_list_right{
    background-color: #1f2024;


    
}
.comment_list_right {
    position: relative;
    color: #eee;
  font-size: 24px;
  
  transition: 1s;
  padding: 20px;
    text-align: left;
    
}
.comment_list_right_posted{
    color: #666;
    text-align: left;
    font-size: 16px;
    line-height: 1rem;
    font-weight: 200;
    margin-bottom: 20px;
}

.like{
    
    position: absolute;
    bottom: 45px;
    height: 30px;
    padding-left: 8%;
    margin: 5px auto;
    border-bottom: .5px solid white ;

}

.like_button{
    opacity: .5;
}

.like_button:hover{
    cursor: pointer;
    opacity: 1;
    transition: 1s;
    
}
.dislike{
    position: absolute;
    bottom: 10px;
    height: 30px;
    padding-left: 8%;
    margin: 5px auto;
    border-bottom: .5px solid white ;

}


  /* Footer */ /* Footer */ /* Footer */ /* Footer */ /* Footer */ /* Footer */

  .footer{

border-top: 1px solid #333;
background: #000;
text-align: center;
padding: 87px 0 282px;

}

.footer_inner{

padding-right: 15px;
padding-left: 15px;
margin-right: auto;
margin-left: auto;
width: 1170px;
text-align: center;
color: white;



}

.footer_inner h2{

margin-bottom: 100px;


}


/* Community */

.list_photo{

margin: 0; /* Обнуляем значение отступов */
padding: 4px; /* Значение полей */
}
.list_photo li{
display: inline; /* Отображать как строчный элемент */
margin-right: 5px; /* Отступ слева */
border: 1px solid #000; /* Рамка вокруг текста */
padding: 3px; /* Поля вокруг текста **/
}



.footer-list-twitter{

width: 44px;
height: 36px;
margin: 17px 10px;
opacity: .6;
}
.footer-list-twitter:hover{

transition: .8s;
opacity: 1;
}


/* footer_list_text */ /* footer_list_text */ /* footer_list_text */ /* footer_list_text */

.footer_list_text{
text-align: center;
margin-top: 100px;
line-height: 2em;
font-size: 20px;
color: white;
font-weight: 400;
font-family: "TLD Headline Updated15";


}
.footer_list_text li .footer_list_text_li{
color: white;
opacity: .6;

}

.footer_list_text li:hover .footer_list_text_li:hover{
transition: .5s;
opacity: 1;

}

.footer_logo {
opacity: 0.5;
margin: 65px auto;
max-width: 112px;
max-height: 100px;
text-align: center;
display: flex;
align-items: center;


}
.footer_logo:hover {
opacity: 1;
transition: .8s;



}
.footer_logo_text{

color: white;
}

.copyright {
font-family: 'Yusei Magic', sans-serif;
margin: 42px auto 20px;
font-size: 14px;
font-weight: 200;
line-height: 2em;
max-width: 460px;
color: #757575;
letter-spacing: 0.03em;
}
.copyright_1{
text-decoration: underline;
color: #757575;
}
/* Email Sender */ /* Email Sender */ /* Email Sender */ /* Email Sender */ /* Email Sender */ /* Email Sender */ /* Email Sender */ 
    
.email_sender{
        background: url(img/hesitant-prospect-newsletter-comp.png)  center no-repeat;
        max-width: 880px;
        margin-top: 50 auto;
        
        
    
    
    }
    .email_sender_text{
        margin: 150px auto;
        
        color: white;
        text-align: center;
        
        font-weight: 500;
        font-size: 28px;
        line-height: 1.3em;
        vertical-align: middle;
        display: flex;
        text-align: center;
        align-items: center;
        opacity: 0.8;
        padding: 75px;
    
    }
    .email_sender_field{
        display: block;
        
        border: 1px solid #ffffff66 !important;
        margin: 20px auto 48px;
        width: 100%;
        max-width: 445px;
        height: 74px;
        position: relative;
    
    }
    .email_sender_field_inner{
        border-right: 1px solid #ffffff66 !important;
        vertical-align: top;
        padding: 24px 0 16px 27px;
        background: transparent;
        border: none;
        border-right: 0px;
        max-width: 322px;
        width: 70%;
        height: 74px;
        font-size: 22px;
        font-weight: 200;
        letter-spacing: 0.03em;
        border-radius: 0;
        font-weight: 400;
        box-sizing: border-box;
        outline-width: 0;
        color: white;
    
    }
    
    .email_sender_field_inner_submit{
    
    vertical-align: top;
        padding-top: 26px ;
        padding-left: 20px;
        color: rgba(255,255,255,0.4);
        background-color: transparent;
        font-style: normal;
        border: none;
       
        font-size: 20px; 
        text-transform: uppercase;
        box-sizing: border-box;
        
        
    }
    
    .email_sender_field_inner_submit:hover{
        color: white;
        transition: 1s;
        opacity: 1;
    }
    .just_nicho{
        margin: 50px auto;
    }
    .sort_button{
    
    margin-left: 20px;
    opacity: .6;
    cursor: pointer;
    outline: none; /* Для синий ободки */
    border: 0;
    background: transparent;


}

.sort_button:hover{

transition: 1s;
    opacity:1;


}



/*   TEXT DESCRIPTION   */


.test_description_movie{

    color: white;
    opacity: 50%;

}
.test_description_movie:hover{

    color: white;

    opacity: 1;
    transition: .8s;

}










/*    TIME TABLE */ 





.timetable {
        display: grid;
        grid-template-areas: ". week" "time content";
        grid-template-columns: 120px;
        grid-template-rows: 60px;
        width: 100%;
        height: 30vh;
    }
    .accent-pink-gradient {
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
    accent-pink-gradient:target {
        background: linear-gradient(135deg, #68bdcc, #eea08e);
        box-shadow: 0 20px 30px 0 rgba(48, 211, 197, 0.795);
        transform: scale(1.5);
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
        background: hsla(194, 76%, 67%, 0.685);
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




.button_buy {
    border: none;
    background: none;
    cursor: pointer;
    font-size: 30px;
    color: white;
    font-family: 'Cookie', cursive !important;
  -webkit-touch-callout: none;
    -webkit-user-select: none;
     -khtml-user-select: none;
       -moz-user-select: none;
        -ms-user-select: none;
            user-select: none;
            font-family: 'Cookie', cursive !important;
}


/* Bottun Send */ /* Bottun Send */ /* Bottun Send */ /* Bottun Send */ /* Bottun Send */ /* Bottun Send */ 
.button_send {
    font-family: 'Cookie', cursive;
  height: 80%;
  display: flex;
  align-items: right;
  justify-content:flex-end;
  margin-top: 20px;
  padding-right: 100px;
  font-family: 'Cookie', cursive;
}

#btn {
    font-family: 'Cookie', cursive;
  background: rgb(7, 7, 7);
  height: 40px;
  min-width: 150px;
  border: none;
  border-radius: 10px;
  color: #eee;
  font-size: 40px;
  font-family: 'Cookie', cursive;
  position: relative;
  transition: 1s;
  -webkit-tap-highlight-color: transparent;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  padding-top: 5px;
  font-family: 'Cookie', cursive;
}

#btn #circle {
  width: 5px;
  height: 5px;
  background: transparent;
  border-radius: 50%;
  position: absolute;
  top: 0;
  left: 50%;
  overflow: hidden;
  transition: 500ms;
  font-family: 'Cookie', cursive !important;
}
#btn span{
    font-family: 'Cookie', cursive !important;

}
.noselect {
    font-size: 40px;
    font-family: 'Cookie', cursive !important;
  -webkit-touch-callout: none;
    -webkit-user-select: none;
     -khtml-user-select: none;
       -moz-user-select: none;
        -ms-user-select: none;
            user-select: none;
            font-family: 'Cookie', cursive !important;
}
.button_send_button{

    background: none;
    color: white;
    border: 0;
    font-size: 40px;
    font-family: 'Cookie', cursive !important;
}
#btn:hover {
  background: transparent;
  font-family: 'Cookie', cursive !important;
}

#btn:hover #circle {
  height: 50px;
  width: 150px;
  left: 0;
  border-radius: 0;
  border-bottom: 2px solid #202de8de;
  font-family: 'Cookie', cursive !important;
}


/* Bottun BUY *//* Bottun BUY *//* Bottun BUY *//* Bottun BUY *//* Bottun BUY */





.button_send_buy {
    font-family: 'Cookie', cursive;
  height: 80%;
  display: flex;
  align-items: right;
  justify-content:flex-end;
  margin-top: 20px;
  padding-right: 50px;
  font-family: 'Cookie', cursive;
}

#btn_buy {
    font-family: 'Cookie', cursive;
  background: rgb(7, 7, 7);
  height: 40px;
  min-width: 150px;
  border: none;
  border-radius: 10px;
  color: #eee;
  font-size: 40px;
  font-family: 'Cookie', cursive;
  position: relative;
  transition: 1s;
  -webkit-tap-highlight-color: transparent;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  padding-top: 5px;
  font-family: 'Cookie', cursive;
}

#btn_buy #circle {
  width: 5px;
  height: 5px;
  background: transparent;
  border-radius: 50%;
  position: absolute;
  top: 0;
  left: 50%;
  overflow: hidden;
  transition: 500ms;
  font-family: 'Cookie', cursive !important;
}
#btn_buy span{
    font-family: 'Cookie', cursive !important;

}
.noselect {
    font-size: 40px;
    font-family: 'Cookie', cursive !important;
  -webkit-touch-callout: none;
    -webkit-user-select: none;
     -khtml-user-select: none;
       -moz-user-select: none;
        -ms-user-select: none;
            user-select: none;
            font-family: 'Cookie', cursive !important;
}

.button_send_button{

    background: none;
    color: white;
    border: 0;
    font-size: 40px;
    font-family: 'Cookie', cursive !important;
    }
    #btn_buy:hover {
    background: transparent;
    font-family: 'Cookie', cursive !important;
}

#btn_buy:hover #circle {
    height: 50px;
    width: 150px;
    left: 0;
    border-radius: 0;
    border-bottom: 2px solid #2a91ccde;
    font-family: 'Cookie', cursive !important;
}



.poster{

    height: 30px;
    position:relative;
    margin-right: 150px;

}
.descr{
    display:none;
    margin-left:-350px;
    padding:10px;
    margin-top:17px;
    background:#1f1f1f;
    height:auto;
    -moz-box-shadow:0 5px 5px rgba(0,0,0,0.3);
    -webkit-box-shadow:0 5px 5px rgba(0,0,0,0.3);
    box-shadow:0 5px 5px rgba(0,0,0,0.3);
}
.poster:hover .descr{
    display:block;
    position:absolute;
    top:120px;
    z-index:9999;
    width:400px;
}







    </style>
     
<body>
<nav class="header">
    <div class="header_container">
        <div class="logo">
                    <img src="img/logo.jpg" alt="logo+Hinterland" href="http://localhost:8080"srcset="" height="63px" width="63px">
                    <span ><a href="http://localhost:8080" class="HINTERLAND">HINTERLAND</a></span>
                </div>
        <div class="header_container_empty">

        </div>
        <div class="header_nav">
            <ul class="header_inner_ul">
                <li >
                    <a onclick="location.href='/movies'">MOVIES</a>

                </li>



                <li>
                    <a href="https://www.facebook.com/"  target="_blank" >COMMUNITY</a>
                </li>
                <li>
                    <a href="shop-right-sidebar.jsp"   >SHOP</a>
                </li>
                <li>
                    <a href="contact.jsp" target="_blank"  >SUPPORT</a>
                </li>



                <%

                    String name_user  = (String)session.getAttribute("name");

                    if(name_user != null ){

                        if(name_user.equals("admin")){

                            out.print(
                                    "<li>\n" +
                                            "  Hello, "+name_user+" Welcome to <a onclick=\"location.href='/admin'\"  >Admin Page</a>" +
                                            " </li>\n"+

                                            "<li>\n" +
                                            "  <button class=\"w3-btn w3-hover-light-blue w3-round-large\" style=\"outline: none;   border: 0;  background: transparent; color: white ; font-size: 15px \" onclick=\"location.href='/logout'\">Logout </button>" +
                                            " </li>\n"

                            );

                        }
                        if(!name_user.equals("admin")){

                            out.print(
                                    "<li>\n" +
                                            "  Hello, "+name_user+" Welcome to <a onclick=\"location.href='/userProfile'\"  >Profile</a>\n" +
                                            " </li>\n"+
                                            "<li>\n" +
                                            "  <button class=\"w3-btn w3-hover-light-blue w3-round-large\" style=\"outline: none;   border: 0;  background: transparent; color: white ; font-size: 15px \" onclick=\"location.href='/logout'\">Logout </button>" +
                                            " </li>\n"

                            );

                        }



                        //                                      out.print("Hello, "+name_user+" Welcome to Profile");


                    }
                    if(name_user == null ) {

                        out.print(
                                "<li>\n" +
                                        "  <a onclick=\"location.href='/login'\">LOGIN</a>\n" +
                                        " </li>\n" +

                                        " <li>\n" +
                                        "     <a onclick=\"location.href='/registration'\">REGISTER</a>\n" +
                                        "</li>"
                        );


                    }





                %>
            </ul>
        </div>
         

    </div>

</nav>

<main class="main">
    <div class="main_inner">
        <div class="main_inner_title_content">
            <img src="img/MoviePoster/We_Are_YourFriend/we-are-your-friends-3.jpg" class="main_inner_title_photo" alt="season's greetings" srcset="">
            <h1 class="main_inner_title">WE ARE YOUR FRIEND</h1>
            <span class="main_inner_date">18.12.2020</span>

        </div>
        
        <div class="main_inner_main_content">
            <img src="img/MoviePoster/We_Are_YourFriend/we-are-your-friends-3.jpg" class="main_inner_title_photo" alt="season's greetings" srcset="">
            <br>
            <br>
            <div class="main_text">

                <h2 class="main_inner_description">Description</h2>

                

                <p >
                    Caught between a forbidden romance and the expectations of his friends, aspiring DJ Cole Carter attempts to find the path in life that leads to fame and fortune. Cole is an aspiring DJ who spends his days scheming with his childhood friends and his nights working on the one track that will set the world on fire.
                   <!--<a href="https://www.youtube.com/watch?v=1fkqAZ2eSEw" style="color: #666;
                    font-size: 1em; text-decoration: underline;" target="_blank">HESITANT PROSPECT.</a> -->
                </p>

                <br><br><br>
                <p >
                    Director: <br>
                    <a href="https://www.imdb.com/name/nm3273000/?ref_=tt_ov_dr" class="test_description_movie"   target="_blank">Max Joseph</a>
                   
                </p>
                <br><br>

                <p >
                    Writers: <br>
                    <a href="https://www.imdb.com/title/tt3787590/?ref_=tt_mv_close" class="test_description_movie"  target="_blank">Max Joseph</a> (screenplay),

                    <a href="https://www.imdb.com/title/tt3787590/?ref_=tt_mv_close" class="test_description_movie"  target="_blank">Meaghan Oppenheimer</a>(screenplay), 
                    
                    <a href="https://www.imdb.com/title/tt3787590/?ref_=tt_mv_close" class="test_description_movie"  target="_blank">Richard Silverman</a>(story)
                   
                </p>
                
                <br><br>

                <p >
                    Stars: <br>
                    <a href="https://www.imdb.com/title/tt3787590/?ref_=tt_mv_close" class="test_description_movie"  target="_blank"> Zac Efron ,</a>
                    <a href="https://www.imdb.com/title/tt3787590/?ref_=tt_mv_close" class="test_description_movie"  target="_blank"> Wes Bentley ,</a>
                    <a href="https://www.imdb.com/title/tt3787590/?ref_=tt_mv_close" class="test_description_movie"  target="_blank">Emily Ratajkowski</a>  
                   
                </p>
                <br><br>

                <p >
                    Rental time: <br>
                    <a  class="test_description_movie"  target="_blank"> From 25.05.2020 To 25.06.2020 </a><br><br>
                    Schedule: <br>
                    <a  class="test_description_movie"  target="_blank"> 11:00 and 21:00 every day</a>
                    
                   
                   
                </p>
                
                <br>

            </div>



        </div>
        <div class="comment">

            <div class="comment_inner">

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
                            <div class="accent-orange-gradient"></div>
                        </div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div>
                            <div class="accent-green-gradient"></div>
                        </div>
                        <div class="weekend"></div>
                        <div class="weekend"></div>
                
                
                        <div></div>
                        <div></div>
                        <div></div>
                        <div>
                            <div class="accent-cyan-gradient"></div>
                        </div>
                        <div></div>
                        <div class="weekend"></div>
                        <div class="weekend"></div>
                
                
                        <div>
                                <div class="accent-pink-gradient">
                                    
                                </div>
                        </div>
                        <div></div>
                        <div>
                            <div class="accent-purple-gradient"></div>
                        </div>
                        <div></div>
                        <div></div>
                        <div class="weekend"></div>
                        <div class="weekend"></div>
                
                
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div class="weekend"></div>
                        <div class="weekend"></div>
                
                
                        <div>
                            <div class="accent-purple-gradient"></div>
                        </div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div class="weekend"></div>
                        <div class="weekend"></div>
                
                
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div class="weekend"></div>
                        <div class="weekend"></div>
                    </div>
                </div>


                <div class="button_send_buy">
                    <div class="poster">
                        *Show all seats*
                        <div class="descr">

                            <img src="img/cinema-seats.jpg" alt="" srcset="">
                        </div>
                    </div>

                    <form method="post">



                        Choose time and day and number of seat &nbsp
                        <select name="changeStatus">
                            <option >8:00 - 10:00</option>
                            <option >10:00 - 12:00</option>
                            <option >12:00 - 14:00</option>
                            <option >14:00 - 16:00</option>
                            <option >16:00 - 18:00</option>
                            <option >18:00 - 20:00</option>
                        </select>&nbsp

                        <select name="changeStatus">
                            <option >Monday</option>
                            <option >Tuesday</option>
                            <option >Wednesday</option>
                            <option >Thursday</option>
                            <option >Friday</option>
                            <option >Saturday</option>
                            <option >Sunday</option>
                        </select>&nbsp
                        <select name="changeStatus">

                        </select>&nbsp

                        <div class="button_send_buy">



                            <div id="btn_buy" onclick="OnButtonCommentSendClick()">
                                <button class="button_buy" type="submit">
                                        <span>
                                            <a onclick="location.href='/movieBuy'">Buy </a>
                                        </span>
                                </button><div id="circle"></div>

                            </div>




                        </div>

                    </form>



                </div>
            </div>
        </div>

        <ul class="links">
            <li class="">
                <a href="https://www.facebook.com/sharer/sharer.html?u=https%3A%2F%2Fwww.thelongdark.com%2Fnews%2Fdev-diary-october-2020%2F">

                    <img src="img/icon-share-facebook.svg" class="links_img" width="54px" height="26px"  alt="" srcset="">

                </a>
                


            </li>
            <li>
                <a href="https://twitter.com/home?status=https://www.thelongdark.com/news/dev-diary-october-2020/">

                    <img src="img/icon-share-twitter.svg" class="links_img" width="54px" height="26px" alt="" srcset="">

                </a>
                


            </li>
        </ul>



<!-- 
    Блоки коментів назив  comment або   comment_inner ( всередині comment-а )  
    
    comment_area-- поле вооду імені і дати  button_send- кнопка відправлення 

    comment_list -  коментарїї    
    comment_list_left -- блок зліва    like-- лайки     dislike- дизлайки

    comment_list_right-блок справа 



--> 


<div class="comment">

    <div class="comment_inner">

        <h1> WRITE YOUR COMMENT</h1><br>

        <div class="comment_area">
            <div class="name">
                <div class="page">
                    <label class="field field_v2">



                      <input id="nickNameField" type="text" class="field__input" placeholder="e.g. Hinterland">



                      <span class="field__label-wrap">
                        <span class="field__label"> Nick name </span>
                      </span>
                    </label>  
                  </div>
            </div>
         </div>
         <br><br>
         <div class="text">

            

            <textarea id="commentArea" class="text_inner" cols="85  " maxlength="909" rows="10"></textarea>



         </div>
         <div class="button_send">



            <div id="btn" onclick="OnButtonCommentSendClick()"><span class="noselect">Send</span><div id="circle"></div></div>



         </div>

         <h1 class="just_nicho">COMMENTS
         </h1><br>
         
             














































                        <div class="comment_list">
                            <div class="comment_list_left">
                                <p>name</p>
                                <img src="img/wolf.png" alt="" srcset=""><br>
                                <p id=" $likesId  ">likes </p><button >Like</button>
                                <p id=" $dislikesId '"> dislikes </p><button onClick="OnDislikeClick(' . $id . ', ' . $dislikesId . ')">Disike</button>
                            </div>
                            <div class="comment_list_right">
                                <div class="comment_list_right_posted">
                                    <p>Posted date </p>
                                </div>
                               
                            </div>
                        </div>';













            
    </div>
</div>

<!-- Блоки новин назив news_list  news_list_inner_text-текст справа  news_list_inner_photo - фото    --> 
        <div class="news_list">

            <span class="news_list_date">07.12.2020.</span>


            <div class="news_list_inner">

                
                <div class="news_list_inner_photo">

                    <a href="#">
                        <img src="img/HP-Blog-Featured-Img.png" width="329px" height="auto" alt="" srcset="">
                    </a>

                </div>
                

                <div class="news_list_inner_text">
                    HESITANT PROSPECT Update Now Live
                </div>
                

            </div>

        </div>

<!-- Блоки новин назив news_list  news_list_inner_text-текст справа  news_list_inner_photo - фото    --> 


        <div class="news_list">

            <span class="news_list_date">07.12.2020.</span>


            <div class="news_list_inner">

                
                <div class="news_list_inner_photo">

                    <a href="#">
                        <img src="img/HP-Blog-Featured-Img.png" width="329px" height="auto" alt="" srcset="">
                    </a>

                </div>
                

                <div class="news_list_inner_text">
                    HESITANT PROSPECT Update Now Live
                </div>
                

            </div>

        </div>


<!-- Блоки новин назив news_list  news_list_inner_text-текст справа  news_list_inner_photo - фото    --> 

        <div class="news_list">

            <span class="news_list_date">07.12.2020.</span>


            <div class="news_list_inner">

                
                <div class="news_list_inner_photo">

                    <a href="#">
                        <img src="img/HP-Blog-Featured-Img.png" width="329px" height="auto" alt="" srcset="">
                    </a>

                </div>
                

                <div class="news_list_inner_text">
                    HESITANT PROSPECT Update Now Live
                </div>
                

            </div>

        </div>

        <div class="about_game_forum">
            <a class="email_sender_forum" href="#">NEWS & UPDATES <img class="about_game_forum_padding" src="img/icon-promo.png" alt="" srcset=""></a>
    
        
    
    
        </div>
        

        


    </div>

    

</main>

<footer class="footer">

    <div class="footer_inner">

        <h2 >SIGN UP FOR NEWS & UPDATES</h2>

        <div class="email_sender_field">
            <form action="vlad_work_with_sql_email">

                
                <input type="email" value="" name="EMAIL" class="email_sender_field_inner"  required="" aria-label="Your email">
                
                <button type="submit" value="Subscribe" name="subscribe"  class="email_sender_field_inner_submit">Sign Up</button>



            </form>

        </div>

        <ul class="list_photo">
            <li>

                <a class="footer-list-twitter" href="https://www.facebook.com/intothelongdark">
                    <img src="img/icon-share-facebook.svg" width="40px" height="40px" alt="">
                    
                </a>

            </li>
            <li>

                <a href="" class="footer-list-twitter">
                    <img src="img/icon-community-twitch.svg" width="40px" height="36px" alt="https://twitter.com/HinterlandGames">
                </a>

            </li>
            <li>

                <a class="footer-list-twitter" href="https://www.youtube.com/user/hinterlandgames">
                    <img src="img/icon-youtube.svg" width="40px" height="40px" alt="">
                    
                </a>

            </li>
            <li>

                <a href="https://www.twitch.tv/directory/game/The%20Long%20Dark" class="footer-list-twitter">
                    <img src="img/icon-community-twitch.svg" width="40px" height="36px" alt="https://twitter.com/HinterlandGames">
                </a>

            </li>
            


        </ul>

        <ul class="footer_list_text">
            <li >
                <a href="movies.jsp" class="footer_list_text_li">MOVIE</a>
            </li>

           

            <li>
                <a href="https://www.facebook.com/" class="footer_list_text_li" target="_blank" >COMMUNITY</a>
            </li>
            <li>
                <a href="shop-right-sidebar.jsp" class="footer_list_text_li" >SHOP</a>
            </li>
            <li>
                <a href="contact.jsp" class="footer_list_text_li" target="_blank"  >SUPPORT</a>
            </li>
            <li>
                <a href="login.html" class="footer_list_text_li"  >LOGIN</a>
            </li>
            <li>
                <a href="registration.html"  class="footer_list_text_li"  >REGISTER</a>
            </li>
        </ul>

        <div class="footer_logo">

            <img src="img/logo-hinterland-wordmark.svg" alt="">

        </div>

        <div class="footer_logo_text">
            <p class="copyright">THE LONG DARK © 2012-2021 Hinterland Studio Inc.<br>
                "THE LONG DARK", "Hinterland" and the fox logo are registered trademarks or trademarks of Hinterland Studio Inc. All rights reserved.<br>
                Nintendo Switch is a trademark of Nintendo.

               </p>
               <p class="copyright"><a class="copyright_1"  href="https://hinterlandgames.com/privacy-policy/">Privacy Policy</a></p>

        </div>





    </div>




</footer>


</body>






















</html>
