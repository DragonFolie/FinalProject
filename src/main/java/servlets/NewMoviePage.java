package servlets;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class NewMoviePage {
    private static String nameForMovie = null;
    public void createDirectionForImageMovie(String nameOfFolder){



        nameOfFolder =  nameOfFolder.replaceAll(" ","_");
        File file = new File("src/main/webapp/views/img/MoviePoster",nameOfFolder);
        if (file.mkdir()){

            System.out.println("Direction Create " + nameOfFolder);
            nameForMovie = nameOfFolder;
        }





    }

    public boolean createFile(String nameENG,String posterURL,String day,String actor1,String actor2,String actor3,
                              String director,String description,String timeStart,String timeEnd) throws IOException {
        String pageTemplate = "\n" +
                "\n" +
                "\n" +
                "<%@ page import=\"java.util.logging.Logger\" %>\n" +
                "<%@ page import=\"servlets.NewMoviePage\" %>\n" +
                "<%@ page import=\"DAO.DB_ManagerDAO\" %>\n" +
                "<%@ page import=\"DAO.Admin\" %>\n" +
                "<%@ page contentType=\"text/html;charset=UTF-8\" language=\"java\" %>\n" +
                "<!DOCTYPE html>\n" +
                "<html>\n" +
                "    <head>\n" +
                "        <meta charset=\"utf-8\">\n" +
                "        <title>Атрибут accesskey</title>\n" +
                "        <meta name=\"viewport\" content=\"width=device-width\">\n" +
                "        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\">\n" +
                "        <link href=\"https://fonts.googleapis.com/css2?family=Noto+Sans+JP&display=swap\" rel=\"stylesheet\">\n" +
                "        <link href=\"https://fonts.googleapis.com/css2?family=Cookie&display=swap\" rel=\"stylesheet\">\n" +
                "        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\">\n" +
                "<link href=\"https://fonts.googleapis.com/css2?family=Yusei+Magic&display=swap\" rel=\"stylesheet\">\n" +
                "        \n" +
                "    </head>\n" +
                "    <style>\n" +
                "/* General */\n" +
                "body{\n" +
                "    font-size: 14px;\n" +
                "    line-height: 1.42857143;\n" +
                "}\n" +
                "     *{\n" +
                "        font-family: 'Yusei Magic', sans-serif;\n" +
                "         padding: 0;\n" +
                "         margin: 0;\n" +
                "         list-style:none;\n" +
                "         text-decoration: none;\n" +
                "         \n" +
                "\n" +
                "     }\n" +
                "     ul, ol {\n" +
                "    list-style: none;\n" +
                "}\n" +
                "li {\n" +
                "    list-style-type: none; /* Убираем маркеры */\n" +
                "   }\n" +
                "\n" +
                "    .content_inner_text_hr{\n" +
                "    margin: 50px auto;\n" +
                "    width: 650px;\n" +
                "    padding-left:auto ;\n" +
                "    padding-right:auto ;\n" +
                "    color: #666;\n" +
                "\n" +
                "\n" +
                "\n" +
                "}\n" +
                "\n" +
                "     /*Header */ /*Header */ /*Header */ /*Header */ /*Header */ /*Header */ /*Header */\n" +
                "     .logo {\n" +
                "  padding-left: 50px;\n" +
                "  font-size: 25px;\n" +
                "  display: flex;\n" +
                "  justify-content: flex-end;\n" +
                "  align-items: center;\n" +
                "\n" +
                "  text-decoration: none;\n" +
                "}\n" +
                ".logo a {\n" +
                "  color: #666;\n" +
                "}\n" +
                ".logo a:hover {\n" +
                "  color: white;\n" +
                "  transition: 0.5s;\n" +
                "}\n" +
                "     .header{\n" +
                "        \n" +
                "\n" +
                "     }\n" +
                "     .header_container{\n" +
                "        border-bottom: .5px solid #666;\n" +
                "        width: 100%;\n" +
                "        height: 63px;\n" +
                "        background-color: black;\n" +
                "        display: grid;\n" +
                "        grid-template-columns: 30% 15% 55%;\n" +
                "        \n" +
                "\n" +
                "        \n" +
                "\n" +
                "        \n" +
                "       \n" +
                "        \n" +
                "\n" +
                "\n" +
                "     }\n" +
                "     @media  (max-width:1100px){\n" +
                "        .header_container_empty{\n" +
                "            display: none;\n" +
                "        }\n" +
                "        .header_container{\n" +
                "            display: grid;\n" +
                "            grid-template-columns: 25%  75%;\n" +
                "        }\n" +
                "        \n" +
                "\n" +
                "        }\n" +
                "     .header_container>div.header_logo{\n" +
                "         \n" +
                "     }\n" +
                "     .header_logo_image{\n" +
                "         width: 186px;\n" +
                "         height: 62px;\n" +
                "         padding-left: 35% ;\n" +
                "     }\n" +
                "\n" +
                "     .header_container>div.header_container_empty{\n" +
                "\n" +
                "     }\n" +
                "     .header_container>div.header_nav{\n" +
                "         padding-top: 15px;\n" +
                "         text-align: center;\n" +
                "         vertical-align: middle;\n" +
                "       \n" +
                "        \n" +
                "       \n" +
                "    \n" +
                "    \n" +
                "    }\n" +
                "    .header_inner_ul{\n" +
                "        vertical-align: middle;\n" +
                "\n" +
                "        margin: 0; /* Обнуляем значение отступов */\n" +
                "    padding: 4px; /* Значение полей */\n" +
                "    }\n" +
                "\n" +
                "    .header_inner_ul a{\n" +
                "        color:#666;\n" +
                "    }\n" +
                "    .header_inner_ul a:hover{\n" +
                "         color: white;\n" +
                "         transition: 0.5s;\n" +
                "     }\n" +
                "\n" +
                "    .header_inner_ul li {\n" +
                "    vertical-align: middle;\n" +
                "    display: inline; /* Отображать как строчный элемент */\n" +
                "    margin-right: 20px; /* Отступ слева */\n" +
                "    color: #666;\n" +
                "    padding: 3px; /* Поля вокруг текста */\n" +
                "   }\n" +
                "\n" +
                "\n" +
                "   /* Main *//* Main *//* Main *//* Main *//* Main *//* Main */\n" +
                "   \n" +
                "   \n" +
                "   \n" +
                "   .main{\n" +
                "        background-color: #000000;\n" +
                "        \n" +
                "    }\n" +
                "\n" +
                "    .main_inner{\n" +
                "\n" +
                "        padding-right: 15px;\n" +
                "    padding-left: 15px;\n" +
                "    margin-right: auto;\n" +
                "    margin-left: auto;\n" +
                "    text-align: center;\n" +
                "    width: 1170px;\n" +
                "    }\n" +
                ".main_inner_title_photo{\n" +
                "    \n" +
                "    padding-top: 74px;\n" +
                "    margin: 0 auto;\n" +
                "    display: block;\n" +
                "    \n" +
                "    max-width: 680px;\n" +
                "    \n" +
                "    width: 100%;\n" +
                "    height: auto;\n" +
                "\n" +
                "}\n" +
                "\n" +
                "\n" +
                ".main_inner_title{\n" +
                "    \n" +
                "    font-size: 3.2em;\n" +
                "    margin-bottom: 60px;\n" +
                "    \n" +
                "    max-width: 900px;\n" +
                "    color: white;\n" +
                "    text-align: center;\n" +
                "    margin: 74px auto;\n" +
                "}\n" +
                "\n" +
                ".main_inner_description{\n" +
                "    font-size: 2.2em;\n" +
                "    padding-top: 40px;\n" +
                "    margin-bottom: 60px;\n" +
                "    \n" +
                "    max-width: 900px;\n" +
                "    color: white;\n" +
                "    text-align: center;\n" +
                "    margin: 74px auto;\n" +
                "\n" +
                "\n" +
                "}\n" +
                ".main_inner_date{\n" +
                "    font-size:1.7em;\n" +
                "    margin-bottom: 60px;\n" +
                "    font-weight: 100;\n" +
                "    line-height: 2;\n" +
                "    max-width: 900px;\n" +
                "    color:#666;\n" +
                "    text-align: center;\n" +
                "    margin: 44px auto;\n" +
                "    padding-bottom: 104px;\n" +
                "    border-bottom: 1px solid #666 ;\n" +
                "\n" +
                "}\n" +
                "\n" +
                ".main_photo{\n" +
                "    padding-top: 74px;\n" +
                "    margin: 0 auto;\n" +
                "    display: block;\n" +
                "    \n" +
                "    max-width: 680px;\n" +
                "    \n" +
                "    width: 100%;\n" +
                "    height: auto;\n" +
                "    margin-bottom: 74px;\n" +
                "\n" +
                "\n" +
                "}\n" +
                "\n" +
                ".main_text{\n" +
                "    color: white;\n" +
                "    font-size: 1.6em;\n" +
                "    font-weight:300;\n" +
                "    text-align: left;\n" +
                "    max-width: 915px;\n" +
                "    margin: 45px auto;\n" +
                "    line-height: 1.65em;\n" +
                "    \n" +
                "}\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                ".links{\n" +
                "\n" +
                "    margin: 65px 0 100px;\n" +
                "    padding: 0 0 75px;\n" +
                "    background: url(img/icon-social-list.png) no-repeat center bottom;\n" +
                "\n" +
                "\n" +
                "\n" +
                "}\n" +
                ".links li{\n" +
                "    display: inline-block;\n" +
                "    width: 86px;\n" +
                "    height: 60px;\n" +
                "    border: 1px solid #333;\n" +
                "    opacity: 1;\n" +
                "    margin: 0 15px;\n" +
                "    transition: all 0.25s ease-out;\n" +
                "}\n" +
                ".links_img{\n" +
                "    padding-top: 15px;\n" +
                "    opacity: .5;\n" +
                "\n" +
                "}\n" +
                ".links_img:hover{\n" +
                "    \n" +
                "    opacity: 1;\n" +
                "    transition: 0.5s;\n" +
                "\n" +
                "}\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                ".news_list_date{\n" +
                "\n" +
                "    display: block;\n" +
                "    font-size: 1.7em;\n" +
                "    font-weight: 200;\n" +
                "    color: #757575;\n" +
                "}\n" +
                "\n" +
                "\n" +
                ".news_list_inner{\n" +
                "\n" +
                "    padding: 45px 0 74px;\n" +
                "    border-bottom: 1px solid #333;\n" +
                "    max-width: 680px;\n" +
                "    margin: 0 auto;\n" +
                "    display: grid;\n" +
                "    grid-template-columns: 50% 50%;\n" +
                "    grid-gap: 20px ;\n" +
                "    height: auto;\n" +
                "}\n" +
                ".news_list_inner>div.news_list_inner_text{\n" +
                "    padding-top: 40px;\n" +
                "    font-size: 1.5em;\n" +
                "    font-weight: 200;\n" +
                "    color: #fff;\n" +
                "    display: inline-block;\n" +
                "    vertical-align: center;\n" +
                "    text-align: left;\n" +
                "}\n" +
                "\n" +
                ".news_list_inner>div.news_list_inner_photo{\n" +
                "    \n" +
                "\n" +
                "}\n" +
                "\n" +
                "\n" +
                ".about_game_forum{\n" +
                "\n" +
                "    display: flex;\n" +
                "    \n" +
                "    \n" +
                "\n" +
                "\n" +
                "}\n" +
                "\n" +
                "\n" +
                ".email_sender_forum{\n" +
                "    margin: 150px auto;\n" +
                "    max-width: 880px;\n" +
                "    width: 300px;\n" +
                "    color: #757575;\n" +
                "    text-align: center;\n" +
                "    font-family: 'Yusei Magic', sans-serif;\n" +
                "    font-weight: 300;\n" +
                "    font-size: 24px;\n" +
                "    line-height: 2em;\n" +
                "    vertical-align: middle;\n" +
                "    display: flex;\n" +
                "    text-align: center;\n" +
                "    align-items: center;\n" +
                "    opacity: 0.8;\n" +
                "\n" +
                "}\n" +
                ".email_sender_forum:hover{\n" +
                "    color: white;\n" +
                "    transition: 1s;\n" +
                "    opacity: 1;\n" +
                "}\n" +
                "\n" +
                ".about_game_forum_padding{\n" +
                "    margin-left: 25px;\n" +
                "\n" +
                "}\n" +
                "\n" +
                "/* Comment *//* Comment *//* Comment *//* Comment *//* Comment *//* Comment *//* Comment */\n" +
                ".comment{\n" +
                "    color: white;\n" +
                "    background-color: #191b1f;\n" +
                "    padding-top: 30px;\n" +
                "    padding-bottom: 5px;\n" +
                "    \n" +
                "    \n" +
                "    max-width: 1015px;\n" +
                "    margin: 45px auto;\n" +
                "    line-height: 1.65em;\n" +
                "\n" +
                "\n" +
                "}\n" +
                ".comment_area{\n" +
                "    width: 615px;\n" +
                "    margin: 0 auto;\n" +
                "    max-width: 715px;\n" +
                "    position: relative;\n" +
                "    display: grid;\n" +
                "    grid-template-columns: 50% 50%;\n" +
                "    grid-gap:20px;\n" +
                "\n" +
                "\n" +
                "}\n" +
                "\n" +
                ".comment_area>div.name{\n" +
                "    \n" +
                "    \n" +
                "    \n" +
                "}\n" +
                ".content_inner_text_third_input_type_One{\n" +
                "    text-align: left;\n" +
                "    \n" +
                "    \n" +
                "    padding: 12px;\n" +
                "    margin: 10px 0;\n" +
                "    border: 1px solid rgb(66, 66, 66);\n" +
                "    background-color: rgb(24, 24, 23);\n" +
                "    color:white;\n" +
                "    font-family: sans-serif;\n" +
                "    font-size: 12px;\n" +
                "    text-align: center;\n" +
                "    height: 5px;\n" +
                "    \n" +
                "}\n" +
                ".comment_area>div.date{\n" +
                "\n" +
                "    display: inline-block;\n" +
                "    \n" +
                "    text-align: right;\n" +
                "\n" +
                "\n" +
                "}\n" +
                "\n" +
                "/*\n" +
                "=====\n" +
                "RESET STYLES\n" +
                "=====\n" +
                "*/\n" +
                "\n" +
                ".field__input{ \n" +
                "  --uiFieldPlaceholderColor: var(--fieldPlaceholderColor, #ffffff);\n" +
                "  \n" +
                "  background-color: transparent;\n" +
                "  border-radius: 0;\n" +
                "  border: none;\n" +
                "\n" +
                "  -webkit-appearance: none;\n" +
                "  -moz-appearance: none;\n" +
                "\n" +
                "  font-family: inherit;\n" +
                "  font-size: inherit;\n" +
                "  color: white;\n" +
                "}\n" +
                "\n" +
                ".field__input:focus::-webkit-input-placeholder{\n" +
                "  color: var(--uiFieldPlaceholderColor);\n" +
                "}\n" +
                "\n" +
                ".field__input:focus::-moz-placeholder{\n" +
                "  color: var(--uiFieldPlaceholderColor);\n" +
                "}\n" +
                "\n" +
                "/*\n" +
                "=====\n" +
                "CORE STYLES\n" +
                "=====\n" +
                "*/\n" +
                "\n" +
                ".field{\n" +
                "  --uiFieldBorderWidth: var(--fieldBorderWidth, 2px);\n" +
                "  --uiFieldPaddingRight: var(--fieldPaddingRight, 1rem);\n" +
                "  --uiFieldPaddingLeft: var(--fieldPaddingLeft, 1rem);   \n" +
                "  --uiFieldBorderColorActive: var(--fieldBorderColorActive, rgba(22, 22, 22, 1));\n" +
                "\n" +
                "  display: var(--fieldDisplay, inline-flex);\n" +
                "  position: relative;\n" +
                "  font-size: var(--fieldFontSize, 1rem);\n" +
                "}\n" +
                "\n" +
                ".field__input{\n" +
                "  box-sizing: border-box;\n" +
                "  width: var(--fieldWidth, 60%);\n" +
                "  height: var(--fieldHeight, 3rem);\n" +
                "  padding: var(--fieldPaddingTop, 1.25rem) var(--uiFieldPaddingRight) var(--fieldPaddingBottom, .5rem) var(--uiFieldPaddingLeft);\n" +
                "  border-bottom: var(--uiFieldBorderWidth) solid var(--fieldBorderColor, rgba(0, 0, 0, .25));  \n" +
                "}\n" +
                "\n" +
                ".field__input:focus{\n" +
                "  outline: none;\n" +
                "}\n" +
                "\n" +
                ".field__input::-webkit-input-placeholder{\n" +
                "  opacity: 0;\n" +
                "  transition: opacity .2s ease-out;\n" +
                "}\n" +
                "\n" +
                ".field__input::-moz-placeholder{\n" +
                "  opacity: 0;\n" +
                "  transition: opacity .2s ease-out;\n" +
                "}\n" +
                "\n" +
                ".field__input:focus::-webkit-input-placeholder{\n" +
                "  opacity: 1;\n" +
                "  transition-delay: .2s;\n" +
                "}\n" +
                "\n" +
                ".field__input:focus::-moz-placeholder{\n" +
                "  opacity: 1;\n" +
                "  transition-delay: .2s;\n" +
                "}\n" +
                "\n" +
                ".field__label-wrap{\n" +
                "  box-sizing: border-box;\n" +
                "  pointer-events: none;\n" +
                "  cursor: text;\n" +
                "\n" +
                "  position: absolute;\n" +
                "  top: 0;\n" +
                "  right: 0;\n" +
                "  bottom: 0;\n" +
                "  left: 0;\n" +
                "}\n" +
                "\n" +
                ".field__label-wrap::after{\n" +
                "  content: \"\";\n" +
                "  box-sizing: border-box;\n" +
                "  width: 60%;\n" +
                "  height: 0;\n" +
                "  opacity: 0;\n" +
                "\n" +
                "  position: absolute;\n" +
                "  bottom: 0;\n" +
                "  left: 0;\n" +
                "}\n" +
                "\n" +
                ".field__input:focus ~ .field__label-wrap::after{\n" +
                "  opacity: 1;\n" +
                "}\n" +
                "\n" +
                ".field__label{\n" +
                "  position: absolute;\n" +
                "  left: var(--uiFieldPaddingLeft);\n" +
                "  top: calc(50% - .5em);\n" +
                "\n" +
                "  line-height: 1;\n" +
                "  font-size: var(--fieldHintFontSize, inherit);\n" +
                "\n" +
                "  transition: top .2s cubic-bezier(0.9, -0.15, 0.1, 1.15), opacity .2s ease-out, font-size .2s ease-out;\n" +
                "  will-change: bottom, opacity, font-size;\n" +
                "}\n" +
                "\n" +
                ".field__input:focus ~ .field__label-wrap .field__label,\n" +
                ".field__input:not(:placeholder-shown) ~ .field__label-wrap .field__label{\n" +
                "  --fieldHintFontSize: var(--fieldHintFontSizeFocused, .75rem);\n" +
                "\n" +
                "  top: var(--fieldHintTopHover, .25rem);\n" +
                "}\n" +
                "/*\n" +
                "effect \n" +
                "*/\n" +
                "\n" +
                ".field_v2 .field__label-wrap{\n" +
                "  overflow: hidden;\n" +
                "}\n" +
                "\n" +
                ".field_v2 .field__label-wrap::after{\n" +
                "  border-bottom: var(--uiFieldBorderWidth) solid var(--uiFieldBorderColorActive);\n" +
                "  transform: translate3d(-105%, 0, 0);\n" +
                "  will-change: transform, opacity;\n" +
                "  transition: transform .285s ease-out .2s, opacity .2s ease-out .2s;\n" +
                "}\n" +
                "\n" +
                ".field_v2 .field__input:focus ~ .field__label-wrap::after{\n" +
                "  transform: translate3d(0, 0, 0);\n" +
                "  transition-delay: 0;\n" +
                "}\n" +
                "/*\n" +
                "=====\n" +
                "LEVEL 4. SETTINGS\n" +
                "=====\n" +
                "*/\n" +
                "\n" +
                ".field{\n" +
                "  --fieldBorderColor: #313131;\n" +
                "  --fieldBorderColorActive: #202de8de;\n" +
                "}\n" +
                "\n" +
                "/*\n" +
                "=====\n" +
                "DEMO\n" +
                "=====\n" +
                "*/\n" +
                "\n" +
                "body{\n" +
                "  font-family: -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Open Sans, Ubuntu, Fira Sans, Helvetica Neue, sans-serif;\n" +
                "  margin: 0;\n" +
                "\n" +
                "  min-height: 100vh;\n" +
                "  display: flex;\n" +
                "  flex-direction: column;\n" +
                "}\n" +
                "\n" +
                ".page{\n" +
                "  box-sizing: border-box;\n" +
                "  width: 100%;\n" +
                "  \n" +
                "  margin: auto;\n" +
                "  \n" +
                "\n" +
                "  display: grid;\n" +
                "  grid-gap: 30px;\n" +
                "}\n" +
                "\n" +
                "\n" +
                ".text{\n" +
                "\n" +
                "    width: 100%;\n" +
                "    \n" +
                "\n" +
                "}\n" +
                "\n" +
                ".text_inner{\n" +
                "    width: 740px;\n" +
                "    height: auto;\n" +
                "    padding: 20px;\n" +
                "    background: rgb(7, 7, 7);\n" +
                "    color: white;\n" +
                "    \n" +
                "    text-align: center;\n" +
                "    line-height: 1.48em;\n" +
                "    font-family: 'Yusei Magic', sans-serif;\n" +
                "    font-weight: 200;\n" +
                "    font-size: 18px;\n" +
                "    \n" +
                "    transition: all 1.7s ease-in-out;\n" +
                "    border-color:none;\n" +
                "\n" +
                "}\n" +
                "\n" +
                "\n" +
                "/* Bottun Send */ /* Bottun Send */ /* Bottun Send */ /* Bottun Send */ /* Bottun Send */ /* Bottun Send */ \n" +
                ".button_send {\n" +
                "    font-family: 'Cookie', cursive;\n" +
                "  height: 80%;\n" +
                "  display: flex;\n" +
                "  align-items: right;\n" +
                "  justify-content:flex-end;\n" +
                "  margin-top: 20px;\n" +
                "  padding-right: 100px;\n" +
                "  font-family: 'Cookie', cursive;\n" +
                "}\n" +
                "\n" +
                "#btn {\n" +
                "    font-family: 'Cookie', cursive;\n" +
                "  background: rgb(7, 7, 7);\n" +
                "  height: 40px;\n" +
                "  min-width: 150px;\n" +
                "  border: none;\n" +
                "  border-radius: 10px;\n" +
                "  color: #eee;\n" +
                "  font-size: 40px;\n" +
                "  font-family: 'Cookie', cursive;\n" +
                "  position: relative;\n" +
                "  transition: 1s;\n" +
                "  -webkit-tap-highlight-color: transparent;\n" +
                "  display: flex;\n" +
                "  align-items: center;\n" +
                "  justify-content: center;\n" +
                "  cursor: pointer;\n" +
                "  padding-top: 5px;\n" +
                "  font-family: 'Cookie', cursive;\n" +
                "}\n" +
                "\n" +
                "#btn #circle {\n" +
                "  width: 5px;\n" +
                "  height: 5px;\n" +
                "  background: transparent;\n" +
                "  border-radius: 50%;\n" +
                "  position: absolute;\n" +
                "  top: 0;\n" +
                "  left: 50%;\n" +
                "  overflow: hidden;\n" +
                "  transition: 500ms;\n" +
                "  font-family: 'Cookie', cursive !important;\n" +
                "}\n" +
                "#btn span{\n" +
                "    font-family: 'Cookie', cursive !important;\n" +
                "\n" +
                "}\n" +
                ".noselect {\n" +
                "    font-size: 40px;\n" +
                "    font-family: 'Cookie', cursive !important;\n" +
                "  -webkit-touch-callout: none;\n" +
                "    -webkit-user-select: none;\n" +
                "     -khtml-user-select: none;\n" +
                "       -moz-user-select: none;\n" +
                "        -ms-user-select: none;\n" +
                "            user-select: none;\n" +
                "            font-family: 'Cookie', cursive !important;\n" +
                "}\n" +
                ".button_send_button{\n" +
                "\n" +
                "    background: none;\n" +
                "    color: white;\n" +
                "    border: 0;\n" +
                "    font-size: 40px;\n" +
                "    font-family: 'Cookie', cursive !important;\n" +
                "}\n" +
                "#btn:hover {\n" +
                "  background: transparent;\n" +
                "  font-family: 'Cookie', cursive !important;\n" +
                "}\n" +
                "\n" +
                "#btn:hover #circle {\n" +
                "  height: 50px;\n" +
                "  width: 150px;\n" +
                "  left: 0;\n" +
                "  border-radius: 0;\n" +
                "  border-bottom: 2px solid #202de8de;\n" +
                "  font-family: 'Cookie', cursive !important;\n" +
                "}\n" +
                "\n" +
                "\n" +
                "\n" +
                "/* Comment List *//* Comment List *//* Comment List *//* Comment List *//* Comment List *//* Comment List */\n" +
                "\n" +
                ".comment_list{\n" +
                "    \n" +
                "\n" +
                "    color: white;\n" +
                "    max-width: 915px;\n" +
                "    margin: 45px auto;\n" +
                "    line-height: 1.65em;\n" +
                "    \n" +
                "    height: 350px;\n" +
                "    display: grid;\n" +
                "    grid-template-columns: 30% 70%;\n" +
                "}\n" +
                ".comment_list>div.comment_list_left{\n" +
                "    line-height: 2rem;\n" +
                "    padding-top: 25%;\n" +
                "    background-color: rgb(21, 23, 26);\n" +
                "    position: relative;\n" +
                "\n" +
                "    \n" +
                "}\n" +
                "\n" +
                ".comment_list_left p {\n" +
                "  \n" +
                "  color: #eee;\n" +
                "  font-size: 24px;\n" +
                "  font-family: 'Cookie', cursive;\n" +
                "  transition: 1s;\n" +
                "  \n" +
                "    margin-bottom: 10px;\n" +
                "}\n" +
                ".comment_list_left span{\n" +
                "    color: #666;\n" +
                "  font-size: 14px;\n" +
                "  font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;\n" +
                "  \n" +
                "  margin-bottom: 20px ;\n" +
                "\n" +
                "}\n" +
                ".comment_list>div.comment_list_right{\n" +
                "    background-color: #1f2024;\n" +
                "\n" +
                "\n" +
                "    \n" +
                "}\n" +
                ".comment_list_right {\n" +
                "    position: relative;\n" +
                "    color: #eee;\n" +
                "  font-size: 24px;\n" +
                "  \n" +
                "  transition: 1s;\n" +
                "  padding: 20px;\n" +
                "    text-align: left;\n" +
                "    \n" +
                "}\n" +
                ".comment_list_right_posted{\n" +
                "    color: #666;\n" +
                "    text-align: left;\n" +
                "    font-size: 16px;\n" +
                "    line-height: 1rem;\n" +
                "    font-weight: 200;\n" +
                "    margin-bottom: 20px;\n" +
                "}\n" +
                "\n" +
                ".like{\n" +
                "    \n" +
                "    position: absolute;\n" +
                "    bottom: 45px;\n" +
                "    height: 30px;\n" +
                "    padding-left: 8%;\n" +
                "    margin: 5px auto;\n" +
                "    border-bottom: .5px solid white ;\n" +
                "\n" +
                "}\n" +
                "\n" +
                ".like_button{\n" +
                "    opacity: .5;\n" +
                "}\n" +
                "\n" +
                ".like_button:hover{\n" +
                "    cursor: pointer;\n" +
                "    opacity: 1;\n" +
                "    transition: 1s;\n" +
                "    \n" +
                "}\n" +
                ".dislike{\n" +
                "    position: absolute;\n" +
                "    bottom: 10px;\n" +
                "    height: 30px;\n" +
                "    padding-left: 8%;\n" +
                "    margin: 5px auto;\n" +
                "    border-bottom: .5px solid white ;\n" +
                "\n" +
                "}\n" +
                "\n" +
                "\n" +
                "  /* Footer */ /* Footer */ /* Footer */ /* Footer */ /* Footer */ /* Footer */\n" +
                "\n" +
                "  .footer{\n" +
                "\n" +
                "border-top: 1px solid #333;\n" +
                "background: #000;\n" +
                "text-align: center;\n" +
                "padding: 87px 0 282px;\n" +
                "\n" +
                "}\n" +
                "\n" +
                ".footer_inner{\n" +
                "\n" +
                "padding-right: 15px;\n" +
                "padding-left: 15px;\n" +
                "margin-right: auto;\n" +
                "margin-left: auto;\n" +
                "width: 1170px;\n" +
                "text-align: center;\n" +
                "color: white;\n" +
                "\n" +
                "\n" +
                "\n" +
                "}\n" +
                "\n" +
                ".footer_inner h2{\n" +
                "\n" +
                "margin-bottom: 100px;\n" +
                "\n" +
                "\n" +
                "}\n" +
                "\n" +
                "\n" +
                "/* Community */\n" +
                "\n" +
                ".list_photo{\n" +
                "\n" +
                "margin: 0; /* Обнуляем значение отступов */\n" +
                "padding: 4px; /* Значение полей */\n" +
                "}\n" +
                ".list_photo li{\n" +
                "display: inline; /* Отображать как строчный элемент */\n" +
                "margin-right: 5px; /* Отступ слева */\n" +
                "border: 1px solid #000; /* Рамка вокруг текста */\n" +
                "padding: 3px; /* Поля вокруг текста **/\n" +
                "}\n" +
                "\n" +
                "\n" +
                "\n" +
                ".footer-list-twitter{\n" +
                "\n" +
                "width: 44px;\n" +
                "height: 36px;\n" +
                "margin: 17px 10px;\n" +
                "opacity: .6;\n" +
                "}\n" +
                ".footer-list-twitter:hover{\n" +
                "\n" +
                "transition: .8s;\n" +
                "opacity: 1;\n" +
                "}\n" +
                "\n" +
                "\n" +
                "/* footer_list_text */ /* footer_list_text */ /* footer_list_text */ /* footer_list_text */\n" +
                "\n" +
                ".footer_list_text{\n" +
                "text-align: center;\n" +
                "margin-top: 100px;\n" +
                "line-height: 2em;\n" +
                "font-size: 20px;\n" +
                "color: white;\n" +
                "font-weight: 400;\n" +
                "font-family: \"TLD Headline Updated15\";\n" +
                "\n" +
                "\n" +
                "}\n" +
                ".footer_list_text li .footer_list_text_li{\n" +
                "color: white;\n" +
                "opacity: .6;\n" +
                "\n" +
                "}\n" +
                "\n" +
                ".footer_list_text li:hover .footer_list_text_li:hover{\n" +
                "transition: .5s;\n" +
                "opacity: 1;\n" +
                "\n" +
                "}\n" +
                "\n" +
                ".footer_logo {\n" +
                "opacity: 0.5;\n" +
                "margin: 65px auto;\n" +
                "max-width: 112px;\n" +
                "max-height: 100px;\n" +
                "text-align: center;\n" +
                "display: flex;\n" +
                "align-items: center;\n" +
                "\n" +
                "\n" +
                "}\n" +
                ".footer_logo:hover {\n" +
                "opacity: 1;\n" +
                "transition: .8s;\n" +
                "\n" +
                "\n" +
                "\n" +
                "}\n" +
                ".footer_logo_text{\n" +
                "\n" +
                "color: white;\n" +
                "}\n" +
                "\n" +
                ".copyright {\n" +
                "font-family: 'Yusei Magic', sans-serif;\n" +
                "margin: 42px auto 20px;\n" +
                "font-size: 14px;\n" +
                "font-weight: 200;\n" +
                "line-height: 2em;\n" +
                "max-width: 460px;\n" +
                "color: #757575;\n" +
                "letter-spacing: 0.03em;\n" +
                "}\n" +
                ".copyright_1{\n" +
                "text-decoration: underline;\n" +
                "color: #757575;\n" +
                "}\n" +
                "/* Email Sender */ /* Email Sender */ /* Email Sender */ /* Email Sender */ /* Email Sender */ /* Email Sender */ /* Email Sender */ \n" +
                "    \n" +
                ".email_sender{\n" +
                "        background: url(img/hesitant-prospect-newsletter-comp.png)  center no-repeat;\n" +
                "        max-width: 880px;\n" +
                "        margin-top: 50 auto;\n" +
                "        \n" +
                "        \n" +
                "    \n" +
                "    \n" +
                "    }\n" +
                "    .email_sender_text{\n" +
                "        margin: 150px auto;\n" +
                "        \n" +
                "        color: white;\n" +
                "        text-align: center;\n" +
                "        \n" +
                "        font-weight: 500;\n" +
                "        font-size: 28px;\n" +
                "        line-height: 1.3em;\n" +
                "        vertical-align: middle;\n" +
                "        display: flex;\n" +
                "        text-align: center;\n" +
                "        align-items: center;\n" +
                "        opacity: 0.8;\n" +
                "        padding: 75px;\n" +
                "    \n" +
                "    }\n" +
                "    .email_sender_field{\n" +
                "        display: block;\n" +
                "        \n" +
                "        border: 1px solid #ffffff66 !important;\n" +
                "        margin: 20px auto 48px;\n" +
                "        width: 100%;\n" +
                "        max-width: 445px;\n" +
                "        height: 74px;\n" +
                "        position: relative;\n" +
                "    \n" +
                "    }\n" +
                "    .email_sender_field_inner{\n" +
                "        border-right: 1px solid #ffffff66 !important;\n" +
                "        vertical-align: top;\n" +
                "        padding: 24px 0 16px 27px;\n" +
                "        background: transparent;\n" +
                "        border: none;\n" +
                "        border-right: 0px;\n" +
                "        max-width: 322px;\n" +
                "        width: 70%;\n" +
                "        height: 74px;\n" +
                "        font-size: 22px;\n" +
                "        font-weight: 200;\n" +
                "        letter-spacing: 0.03em;\n" +
                "        border-radius: 0;\n" +
                "        font-weight: 400;\n" +
                "        box-sizing: border-box;\n" +
                "        outline-width: 0;\n" +
                "        color: white;\n" +
                "    \n" +
                "    }\n" +
                "    \n" +
                "    .email_sender_field_inner_submit{\n" +
                "    \n" +
                "    vertical-align: top;\n" +
                "        padding-top: 26px ;\n" +
                "        padding-left: 20px;\n" +
                "        color: rgba(255,255,255,0.4);\n" +
                "        background-color: transparent;\n" +
                "        font-style: normal;\n" +
                "        border: none;\n" +
                "       \n" +
                "        font-size: 20px; \n" +
                "        text-transform: uppercase;\n" +
                "        box-sizing: border-box;\n" +
                "        \n" +
                "        \n" +
                "    }\n" +
                "    \n" +
                "    .email_sender_field_inner_submit:hover{\n" +
                "        color: white;\n" +
                "        transition: 1s;\n" +
                "        opacity: 1;\n" +
                "    }\n" +
                "    .just_nicho{\n" +
                "        margin: 50px auto;\n" +
                "    }\n" +
                "    .sort_button{\n" +
                "    \n" +
                "    margin-left: 20px;\n" +
                "    opacity: .6;\n" +
                "    cursor: pointer;\n" +
                "    outline: none; /* Для синий ободки */\n" +
                "    border: 0;\n" +
                "    background: transparent;\n" +
                "\n" +
                "\n" +
                "}\n" +
                "\n" +
                ".sort_button:hover{\n" +
                "\n" +
                "transition: 1s;\n" +
                "    opacity:1;\n" +
                "\n" +
                "\n" +
                "}\n" +
                "\n" +
                "\n" +
                "\n" +
                "/*   TEXT DESCRIPTION   */\n" +
                "\n" +
                "\n" +
                ".test_description_movie{\n" +
                "\n" +
                "    color: white;\n" +
                "    opacity: 50%;\n" +
                "\n" +
                "}\n" +
                ".test_description_movie:hover{\n" +
                "\n" +
                "    color: white;\n" +
                "\n" +
                "    opacity: 1;\n" +
                "    transition: .8s;\n" +
                "\n" +
                "}\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "/*    TIME TABLE */ \n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                ".timetable {\n" +
                "        display: grid;\n" +
                "        grid-template-areas: \". week\" \"time content\";\n" +
                "        grid-template-columns: 120px;\n" +
                "        grid-template-rows: 60px;\n" +
                "        width: 100%;\n" +
                "        height: 30vh;\n" +
                "    }\n" +
                "    .accent-pink-gradient {\n" +
                "        display: flex;\n" +
                "        width: 100%;\n" +
                "        height: 100%;\n" +
                "        background: linear-gradient(135deg, #ee8ebc, #eea08e);\n" +
                "        transition: 0.2s ease box-shadow, 0.2s ease transform;\n" +
                "    }\n" +
                "    .timetable .accent-pink-gradient:hover {\n" +
                "        box-shadow: 0 20px 30px 0 rgba(238, 142, 188, 0.3);\n" +
                "        transform: scale(1.05);\n" +
                "    }\n" +
                "    accent-pink-gradient:target {\n" +
                "        background: linear-gradient(135deg, #68bdcc, #eea08e);\n" +
                "        box-shadow: 0 20px 30px 0 rgba(48, 211, 197, 0.795);\n" +
                "        transform: scale(1.5);\n" +
                "    }\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "    .timetable .accent-orange-gradient {\n" +
                "        display: flex;\n" +
                "        width: 100%;\n" +
                "        height: 100%;\n" +
                "        background: linear-gradient(135deg, #eec08e, #dcee8e);\n" +
                "        transition: 0.2s ease box-shadow, 0.2s ease transform;\n" +
                "    }\n" +
                "    .timetable .accent-orange-gradient:hover {\n" +
                "        box-shadow: 0 20px 30px 0 rgba(238, 192, 142, 0.3);\n" +
                "        transform: scale(1.05);\n" +
                "    }\n" +
                "    .timetable .accent-green-gradient {\n" +
                "        display: flex;\n" +
                "        width: 100%;\n" +
                "        height: 100%;\n" +
                "        background: linear-gradient(135deg, #bcee8e, #8eeea0);\n" +
                "        transition: 0.2s ease box-shadow, 0.2s ease transform;\n" +
                "    }\n" +
                "    .timetable .accent-green-gradient:hover {\n" +
                "        box-shadow: 0 20px 30px 0 rgba(188, 238, 142, 0.3);\n" +
                "        transform: scale(1.05);\n" +
                "    }\n" +
                "    .timetable .accent-cyan-gradient {\n" +
                "        display: flex;\n" +
                "        width: 100%;\n" +
                "        height: 100%;\n" +
                "        background: linear-gradient(135deg, #8eeec0, #8edcee);\n" +
                "        transition: 0.2s ease box-shadow, 0.2s ease transform;\n" +
                "    }\n" +
                "    .timetable .accent-cyan-gradient:hover {\n" +
                "        box-shadow: 0 20px 30px 0 rgba(142, 238, 192, 0.3);\n" +
                "        transform: scale(1.05);\n" +
                "    }\n" +
                "    .timetable .accent-blue-gradient {\n" +
                "        display: flex;\n" +
                "        width: 100%;\n" +
                "        height: 100%;\n" +
                "        background: linear-gradient(135deg, #8ebcee, #a08eee);\n" +
                "        transition: 0.2s ease box-shadow, 0.2s ease transform;\n" +
                "    }\n" +
                "    .timetable .accent-blue-gradient:hover {\n" +
                "        box-shadow: 0 20px 30px 0 rgba(142, 188, 238, 0.3);\n" +
                "        transform: scale(1.05);\n" +
                "    }\n" +
                "    .timetable .accent-purple-gradient {\n" +
                "        display: flex;\n" +
                "        width: 100%;\n" +
                "        height: 100%;\n" +
                "        background: linear-gradient(135deg, #c08eee, #ee8edc);\n" +
                "        transition: 0.2s ease box-shadow, 0.2s ease transform;\n" +
                "    }\n" +
                "    .timetable .accent-purple-gradient:hover {\n" +
                "        box-shadow: 0 20px 30px 0 rgba(192, 142, 238, 0.3);\n" +
                "        transform: scale(1.05);\n" +
                "    }\n" +
                "    .timetable .weekend {\n" +
                "        background: hsla(194, 76%, 67%, 0.685);\n" +
                "    }\n" +
                "    .timetable .week-names {\n" +
                "        grid-area: week;\n" +
                "        display: grid;\n" +
                "        grid-template-columns: repeat(7, 1fr);\n" +
                "        text-transform: uppercase;\n" +
                "        font-size: 12px;\n" +
                "    }\n" +
                "    .timetable .week-names > div {\n" +
                "        display: flex;\n" +
                "        align-items: center;\n" +
                "        justify-content: center;\n" +
                "        width: 100%;\n" +
                "        height: 100%;\n" +
                "        box-shadow: inset 1px 0 0 #eceff1;\n" +
                "    }\n" +
                "    .timetable .time-interval {\n" +
                "        grid-area: time;\n" +
                "        display: grid;\n" +
                "        grid-template-rows: repeat(6, 1fr);\n" +
                "        font-size: 14px;\n" +
                "    }\n" +
                "    .timetable .time-interval > div {\n" +
                "        display: flex;\n" +
                "        align-items: center;\n" +
                "        justify-content: center;\n" +
                "        width: 100%;\n" +
                "        height: 100%;\n" +
                "        box-shadow: inset 0 1px 0 0 #eceff1;\n" +
                "    }\n" +
                "    .timetable .content {\n" +
                "        grid-area: content;\n" +
                "        display: grid;\n" +
                "        grid-template-rows: repeat(6, 1fr);\n" +
                "        grid-template-columns: repeat(7, 1fr);\n" +
                "    }\n" +
                "    .timetable .content > div {\n" +
                "        box-shadow: inset 1px 0 0 #eceff1, inset 0 1px 0 0 #eceff1;\n" +
                "    }\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                ".button_buy {\n" +
                "    border: none;\n" +
                "    background: none;\n" +
                "    cursor: pointer;\n" +
                "    font-size: 30px;\n" +
                "    color: white;\n" +
                "    font-family: 'Cookie', cursive !important;\n" +
                "  -webkit-touch-callout: none;\n" +
                "    -webkit-user-select: none;\n" +
                "     -khtml-user-select: none;\n" +
                "       -moz-user-select: none;\n" +
                "        -ms-user-select: none;\n" +
                "            user-select: none;\n" +
                "            font-family: 'Cookie', cursive !important;\n" +
                "}\n" +
                "\n" +
                "\n" +
                "/* Bottun Send */ /* Bottun Send */ /* Bottun Send */ /* Bottun Send */ /* Bottun Send */ /* Bottun Send */ \n" +
                ".button_send {\n" +
                "    font-family: 'Cookie', cursive;\n" +
                "  height: 80%;\n" +
                "  display: flex;\n" +
                "  align-items: right;\n" +
                "  justify-content:flex-end;\n" +
                "  margin-top: 20px;\n" +
                "  padding-right: 100px;\n" +
                "  font-family: 'Cookie', cursive;\n" +
                "}\n" +
                "\n" +
                "#btn {\n" +
                "    font-family: 'Cookie', cursive;\n" +
                "  background: rgb(7, 7, 7);\n" +
                "  height: 40px;\n" +
                "  min-width: 150px;\n" +
                "  border: none;\n" +
                "  border-radius: 10px;\n" +
                "  color: #eee;\n" +
                "  font-size: 40px;\n" +
                "  font-family: 'Cookie', cursive;\n" +
                "  position: relative;\n" +
                "  transition: 1s;\n" +
                "  -webkit-tap-highlight-color: transparent;\n" +
                "  display: flex;\n" +
                "  align-items: center;\n" +
                "  justify-content: center;\n" +
                "  cursor: pointer;\n" +
                "  padding-top: 5px;\n" +
                "  font-family: 'Cookie', cursive;\n" +
                "}\n" +
                "\n" +
                "#btn #circle {\n" +
                "  width: 5px;\n" +
                "  height: 5px;\n" +
                "  background: transparent;\n" +
                "  border-radius: 50%;\n" +
                "  position: absolute;\n" +
                "  top: 0;\n" +
                "  left: 50%;\n" +
                "  overflow: hidden;\n" +
                "  transition: 500ms;\n" +
                "  font-family: 'Cookie', cursive !important;\n" +
                "}\n" +
                "#btn span{\n" +
                "    font-family: 'Cookie', cursive !important;\n" +
                "\n" +
                "}\n" +
                ".noselect {\n" +
                "    font-size: 40px;\n" +
                "    font-family: 'Cookie', cursive !important;\n" +
                "  -webkit-touch-callout: none;\n" +
                "    -webkit-user-select: none;\n" +
                "     -khtml-user-select: none;\n" +
                "       -moz-user-select: none;\n" +
                "        -ms-user-select: none;\n" +
                "            user-select: none;\n" +
                "            font-family: 'Cookie', cursive !important;\n" +
                "}\n" +
                ".button_send_button{\n" +
                "\n" +
                "    background: none;\n" +
                "    color: white;\n" +
                "    border: 0;\n" +
                "    font-size: 40px;\n" +
                "    font-family: 'Cookie', cursive !important;\n" +
                "}\n" +
                "#btn:hover {\n" +
                "  background: transparent;\n" +
                "  font-family: 'Cookie', cursive !important;\n" +
                "}\n" +
                "\n" +
                "#btn:hover #circle {\n" +
                "  height: 50px;\n" +
                "  width: 150px;\n" +
                "  left: 0;\n" +
                "  border-radius: 0;\n" +
                "  border-bottom: 2px solid #202de8de;\n" +
                "  font-family: 'Cookie', cursive !important;\n" +
                "}\n" +
                "\n" +
                "\n" +
                "/* Bottun BUY *//* Bottun BUY *//* Bottun BUY *//* Bottun BUY *//* Bottun BUY */\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                ".button_send_buy {\n" +
                "    font-family: 'Cookie', cursive;\n" +
                "  height: 80%;\n" +
                "  display: flex;\n" +
                "  align-items: right;\n" +
                "  justify-content:flex-end;\n" +
                "  margin-top: 20px;\n" +
                "  padding-right: 50px;\n" +
                "  font-family: 'Cookie', cursive;\n" +
                "}\n" +
                "\n" +
                "#btn_buy {\n" +
                "    font-family: 'Cookie', cursive;\n" +
                "  background: rgb(7, 7, 7);\n" +
                "  height: 40px;\n" +
                "  min-width: 150px;\n" +
                "  border: none;\n" +
                "  border-radius: 10px;\n" +
                "  color: #eee;\n" +
                "  font-size: 40px;\n" +
                "  font-family: 'Cookie', cursive;\n" +
                "  position: relative;\n" +
                "  transition: 1s;\n" +
                "  -webkit-tap-highlight-color: transparent;\n" +
                "  display: flex;\n" +
                "  align-items: center;\n" +
                "  justify-content: center;\n" +
                "  cursor: pointer;\n" +
                "  padding-top: 5px;\n" +
                "  font-family: 'Cookie', cursive;\n" +
                "}\n" +
                "\n" +
                "#btn_buy #circle {\n" +
                "  width: 5px;\n" +
                "  height: 5px;\n" +
                "  background: transparent;\n" +
                "  border-radius: 50%;\n" +
                "  position: absolute;\n" +
                "  top: 0;\n" +
                "  left: 50%;\n" +
                "  overflow: hidden;\n" +
                "  transition: 500ms;\n" +
                "  font-family: 'Cookie', cursive !important;\n" +
                "}\n" +
                "#btn_buy span{\n" +
                "    font-family: 'Cookie', cursive !important;\n" +
                "\n" +
                "}\n" +
                ".noselect {\n" +
                "    font-size: 40px;\n" +
                "    font-family: 'Cookie', cursive !important;\n" +
                "  -webkit-touch-callout: none;\n" +
                "    -webkit-user-select: none;\n" +
                "     -khtml-user-select: none;\n" +
                "       -moz-user-select: none;\n" +
                "        -ms-user-select: none;\n" +
                "            user-select: none;\n" +
                "            font-family: 'Cookie', cursive !important;\n" +
                "}\n" +
                "\n" +
                ".button_send_button{\n" +
                "\n" +
                "    background: none;\n" +
                "    color: white;\n" +
                "    border: 0;\n" +
                "    font-size: 40px;\n" +
                "    font-family: 'Cookie', cursive !important;\n" +
                "    }\n" +
                "    #btn_buy:hover {\n" +
                "    background: transparent;\n" +
                "    font-family: 'Cookie', cursive !important;\n" +
                "}\n" +
                "\n" +
                "#btn_buy:hover #circle {\n" +
                "    height: 50px;\n" +
                "    width: 150px;\n" +
                "    left: 0;\n" +
                "    border-radius: 0;\n" +
                "    border-bottom: 2px solid #2a91ccde;\n" +
                "    font-family: 'Cookie', cursive !important;\n" +
                "}\n" +
                "\n" +
                "\n" +
                "\n" +
                ".poster{\n" +
                "\n" +
                "    height: 30px;\n" +
                "    position:relative;\n" +
                "    margin-right: 150px;\n" +
                "\n" +
                "}\n" +
                ".descr{\n" +
                "    display:none;\n" +
                "    margin-left:-350px;\n" +
                "    padding:10px;\n" +
                "    margin-top:17px;\n" +
                "    background:#1f1f1f;\n" +
                "    height:auto;\n" +
                "    -moz-box-shadow:0 5px 5px rgba(0,0,0,0.3);\n" +
                "    -webkit-box-shadow:0 5px 5px rgba(0,0,0,0.3);\n" +
                "    box-shadow:0 5px 5px rgba(0,0,0,0.3);\n" +
                "}\n" +
                ".poster:hover .descr{\n" +
                "    display:block;\n" +
                "    position:absolute;\n" +
                "    top:120px;\n" +
                "    z-index:9999;\n" +
                "    width:400px;\n" +
                "}\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "    </style>\n" +
                "     \n" +
                "<body>\n" +
                "<nav class=\"header\">\n" +
                "    <div class=\"header_container\">\n" +
                "        <div class=\"logo\">\n" +
                "                    <img src=\"img/logo.jpg\" alt=\"logo+Hinterland\" href=\"http://localhost:8080\"srcset=\"\" height=\"63px\" width=\"63px\">\n" +
                "                    <span ><a href=\"http://localhost:8080\" class=\"HINTERLAND\">HINTERLAND</a></span>\n" +
                "                </div>\n" +
                "        <div class=\"header_container_empty\">\n" +
                "\n" +
                "        </div>\n" +
                "        <div class=\"header_nav\">\n" +
                "            <ul class=\"header_inner_ul\">\n" +
                "                <li >\n" +
                "                    <a onclick=\"location.href='/movies'\">MOVIES</a>\n" +
                "\n" +
                "                </li>\n" +
                "\n" +
                "               \n" +
                "\n" +
                "                <li>\n" +
                "                    <a href=\"https://www.facebook.com/\"  target=\"_blank\" >COMMUNITY</a>\n" +
                "                </li>\n" +
                "                <li>\n" +
                "                    <a href=\"shop-right-sidebar.jsp\"   >SHOP</a>\n" +
                "                </li>\n" +
                "                <li>\n" +
                "                    <a href=\"contact.jsp\" target=\"_blank\"  >SUPPORT</a>\n" +
                "                </li>\n" +
                "                <%\n" +
                "\n" +
                "                    String name_user  = (String)session.getAttribute(\"name\");\n" +
                "\n" +
                "                    if(name_user != null ){\n" +
                "\n" +
                "                        if(name_user.equals(\"admin\")){\n" +
                "\n" +
                "                            out.print(\n" +
                "                                    \"<li>\\n\" +\n" +
                "                                            \"  Hello, \"+name_user+\" Welcome to <a onclick=\\\"location.href='/admin'\\\"  >Admin Page</a>\\n\" +\n" +
                "                                            \" </li>\\n\"\n" +
                "\n" +
                "                            );\n" +
                "\n" +
                "                        }\n" +
                "                        if(!name_user.equals(\"admin\")){\n" +
                "\n" +
                "                            out.print(\n" +
                "                                    \"<li>\\n\" +\n" +
                "                                            \"  Hello, \"+name_user+\" Welcome to <a onclick=\\\"location.href='/userProfile'\\\"  >Profile</a>\\n\" +\n" +
                "                                            \" </li>\\n\"\n" +
                "\n" +
                "                            );\n" +
                "\n" +
                "                        }\n" +
                "\n" +
                "\n" +
                "\n" +
                "                        //                                      out.print(\"Hello, \"+name_user+\" Welcome to Profile\");\n" +
                "\n" +
                "\n" +
                "                    }\n" +
                "                    if(name_user == null ) {\n" +
                "\n" +
                "                        out.print(\n" +
                "                                \"<li>\\n\" +\n" +
                "                                        \"  <a onclick=\\\"location.href='/login'\\\">LOGIN</a>\\n\" +\n" +
                "                                        \" </li>\\n\" +\n" +
                "\n" +
                "                                        \" <li>\\n\" +\n" +
                "                                        \"     <a onclick=\\\"location.href='/registration'\\\">REGISTER</a>\\n\" +\n" +
                "                                        \"</li>\"\n" +
                "                        );\n" +
                "\n" +
                "\n" +
                "                    }\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "                %>\n" +
                "            </ul>\n" +
                "        </div>\n" +
                "         \n" +
                "\n" +
                "    </div>\n" +
                "\n" +
                "</nav>\n" +
                "\n" +
                "<main class=\"main\">\n" +
                "    <div class=\"main_inner\">\n" +
                "        <div class=\"main_inner_title_content\">\n" +
                "            <img src=\"img/MoviePoster/"+nameForMovie+"/"+posterURL+"\" class=\"main_inner_title_photo\" alt=\"season's greetings\" srcset=\"\">\n" +
                "            <h1 class=\"main_inner_title\">"+nameENG+"</h1>\n" +
                "            <span class=\"main_inner_date\">"+day+"</span>\n" +
                "\n" +
                "        </div>\n" +
                "        \n" +
                "        <div class=\"main_inner_main_content\">\n" +
                "            <img src=\"img/MoviePoster/We_Are_YourFriend/we-are-your-friends-3.jpg\" class=\"main_inner_title_photo\" alt=\"season's greetings\" srcset=\"\">\n" +
                "            <br>\n" +
                "            <br>\n" +
                "            <div class=\"main_text\">\n" +
                "\n" +
                "                <h2 class=\"main_inner_description\">Description</h2>\n" +
                "\n" +
                "                \n" +
                "\n" +
                "                <p >\n" +
                "                    "+description+"\n" +
                "                   <!--<a href=\"https://www.youtube.com/watch?v=1fkqAZ2eSEw\" style=\"color: #666;\n" +
                "                    font-size: 1em; text-decoration: underline;\" target=\"_blank\">HESITANT PROSPECT.</a> -->\n" +
                "                </p>\n" +
                "\n" +
                "                <br><br><br>\n" +
                "                <p >\n" +
                "                    Director: <br>\n" +
                "                    <a href=\"https://www.imdb.com\" class=\"test_description_movie\"   target=\"_blank\">Max Joseph</a>\n" +
                "                   \n" +
                "                </p>\n" +
                "                <br><br>\n" +
                "\n" +
                "                <p >\n" +
                "                    Writers: <br>\n" +
                "                    <a href=\"https://www.imdb.com\" class=\"test_description_movie\"  target=\"_blank\">"+director+"</a> (screenplay),\n" +
                "                </p>\n" +
                "                \n" +
                "                <br><br>\n" +
                "\n" +
                "                <p >\n" +
                "                    Stars: <br>\n" +
                "                    <a href=\"https://www.imdb.com\" class=\"test_description_movie\"  target=\"_blank\"> Zac Efron ,</a>\n" +
                "                    <a href=\"https://www.imdb.com\" class=\"test_description_movie\"  target=\"_blank\"> Wes Bentley ,</a>\n" +
                "                    <a href=\"https://www.imdb.com\" class=\"test_description_movie\"  target=\"_blank\">Emily Ratajkowski</a>  \n" +
                "                   \n" +
                "                </p>\n" +
                "                <br><br>\n" +
                "\n" +
                "                <p >\n" +
                "                    Schedule: <br>\n" +
                "                    <a  class=\"test_description_movie\"  target=\"_blank\"> "+timeStart+" and "+timeEnd+" every "+day+"</a>\n" +
                "                    \n" +
                "                   \n" +
                "                   \n" +
                "                </p>\n" +
                "                \n" +
                "                <br>\n" +
                "\n" +
                "            </div>\n" +
                "\n" +
                "\n" +
                "\n" +
                "        </div>\n" +
                "        <div class=\"comment\">\n" +
                "\n" +
                "            <div class=\"comment_inner\">\n" +
                "\n" +
                "                <div class=\"timetable\">\n" +
                "                    <div class=\"week-names\">\n" +
                "\n" +
                "                        <div>monday</div>\n" +
                "                        <div>tuesday</div>\n" +
                "                        <div>wednesday</div>\n" +
                "                        <div>thursday</div>\n" +
                "                        <div>friday</div>\n" +
                "                        <div class=\"weekend\">saturday</div>\n" +
                "                        <div class=\"weekend\">sunday</div>\n" +
                "\n" +
                "                    </div>\n" +
                "                    <div class=\"time-interval\">\n" +
                "\n" +
                "                        <div>8:00 - 10:00</div>\n" +
                "                        <div>10:00 - 12:00</div>\n" +
                "                        <div>12:00 - 14:00</div>\n" +
                "                        <div>14:00 - 16:00</div>\n" +
                "                        <div>16:00 - 18:00</div>\n" +
                "                        <div>18:00 - 20:00</div>\n" +
                "\n" +
                "                    </div>\n" +
                "                    <div class=\"content\">\n" +
                "                \n" +
                "                \n" +
                "                        <div>\n" +
                "                            <div class=\"accent-orange-gradient\"></div>\n" +
                "                        </div>\n" +
                "                        <div></div>\n" +
                "                        <div></div>\n" +
                "                        <div></div>\n" +
                "                        <div>\n" +
                "                            <div class=\"accent-green-gradient\"></div>\n" +
                "                        </div>\n" +
                "                        <div class=\"weekend\"></div>\n" +
                "                        <div class=\"weekend\"></div>\n" +
                "                \n" +
                "                \n" +
                "                        <div></div>\n" +
                "                        <div></div>\n" +
                "                        <div></div>\n" +
                "                        <div>\n" +
                "                            <div class=\"accent-cyan-gradient\"></div>\n" +
                "                        </div>\n" +
                "                        <div></div>\n" +
                "                        <div class=\"weekend\"></div>\n" +
                "                        <div class=\"weekend\"></div>\n" +
                "                \n" +
                "                \n" +
                "                        <div>\n" +
                "                                <div class=\"accent-pink-gradient\">\n" +
                "                                    \n" +
                "                                </div>\n" +
                "                        </div>\n" +
                "                        <div></div>\n" +
                "                        <div>\n" +
                "                            <div class=\"accent-purple-gradient\"></div>\n" +
                "                        </div>\n" +
                "                        <div></div>\n" +
                "                        <div></div>\n" +
                "                        <div class=\"weekend\"></div>\n" +
                "                        <div class=\"weekend\"></div>\n" +
                "                \n" +
                "                \n" +
                "                        <div></div>\n" +
                "                        <div></div>\n" +
                "                        <div></div>\n" +
                "                        <div></div>\n" +
                "                        <div></div>\n" +
                "                        <div class=\"weekend\"></div>\n" +
                "                        <div class=\"weekend\"></div>\n" +
                "                \n" +
                "                \n" +
                "                        <div>\n" +
                "                            <div class=\"accent-purple-gradient\"></div>\n" +
                "                        </div>\n" +
                "                        <div></div>\n" +
                "                        <div></div>\n" +
                "                        <div></div>\n" +
                "                        <div></div>\n" +
                "                        <div class=\"weekend\"></div>\n" +
                "                        <div class=\"weekend\"></div>\n" +
                "                \n" +
                "                \n" +
                "                        <div></div>\n" +
                "                        <div></div>\n" +
                "                        <div></div>\n" +
                "                        <div></div>\n" +
                "                        <div></div>\n" +
                "                        <div class=\"weekend\"></div>\n" +
                "                        <div class=\"weekend\"></div>\n" +
                "                    </div>\n" +
                "                </div>\n" +
                "\n" +
                "\n" +
                "                <div class=\"button_send_buy\">\n" +
                "                    <div class=\"poster\">\n" +
                "                        *Show all seats*\n" +
                "                        <div class=\"descr\">\n" +
                "\n" +
                "                            <img src=\"img/cinema-seats.jpg\" alt=\"\" srcset=\"\">\n" +
                "                        </div>\n" +
                "                    </div>\n" +
                "\n" +
                "                    <form method=\"post\">\n" +
                "\n" +
                "\n" +
                "\n" +
                "                        Choose time and day and number of seat &nbsp\n" +
                "                        <select name=\"changeStatus\">\n" +
                "                            <option >"+timeStart+" - "+timeEnd+"</option>\n" +
                "                        </select>&nbsp\n" +
                "\n" +
                "                        <select name=\"changeStatus\">\n" +
                "                            <option >"+day+"</option>\n" +
                "                        </select>&nbsp\n" +



                "                        <select name=\"changeStatus\">\n" +
                "                            <%\n" +
                "\n" +
                "                    Admin admin = new Admin();\n" +
                "                    \n" +
                "                    for (int i = 1; i <admin.getCountSeatsForSession()+1 ; i++) {\n" +
                "                        \n" +
                "                        out.print(\"<option >\"+i+\"</option>\");\n" +
                "                        \n" +
                "                    }\n" +
                "\n" +
                "\n" +
                "\n" +
                "                %>\n" +
                "                        </select>&nbsp\n" +
                "\n" +
                "                        <div class=\"button_send_buy\">\n" +
                "\n" +
                "\n" +
                "\n" +
                "                            <div id=\"btn_buy\" onclick=\"OnButtonCommentSendClick()\">\n" +
                "                                <button class=\"button_buy\" type=\"submit\">\n" +
                "                                        <span >\n" +
                "                                            Buy\n" +
                "                                        </span>\n" +
                "                                </button><div id=\"circle\"></div>\n" +
                "\n" +
                "                            </div>\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "                        </div>\n" +
                "\n" +
                "                    </form>\n" +
                "\n" +
                "\n" +
                "\n" +
                "                </div>\n" +
                "            </div>\n" +
                "        </div>\n" +
                "\n" +
                "        <ul class=\"links\">\n" +
                "            <li class=\"\">\n" +
                "                <a href=\"https://www.facebook.com/sharer/sharer.html?u=https%3A%2F%2Fwww.thelongdark.com%2Fnews%2Fdev-diary-october-2020%2F\">\n" +
                "\n" +
                "                    <img src=\"img/icon-share-facebook.svg\" class=\"links_img\" width=\"54px\" height=\"26px\"  alt=\"\" srcset=\"\">\n" +
                "\n" +
                "                </a>\n" +
                "                \n" +
                "\n" +
                "\n" +
                "            </li>\n" +
                "            <li>\n" +
                "                <a href=\"https://twitter.com/home?status=https://www.thelongdark.com/news/dev-diary-october-2020/\">\n" +
                "\n" +
                "                    <img src=\"img/icon-share-twitter.svg\" class=\"links_img\" width=\"54px\" height=\"26px\" alt=\"\" srcset=\"\">\n" +
                "\n" +
                "                </a>\n" +
                "                \n" +
                "\n" +
                "\n" +
                "            </li>\n" +
                "        </ul>\n" +
                "\n" +
                "\n" +
                "\n" +
                "<!-- \n" +
                "    Блоки коментів назив  comment або   comment_inner ( всередині comment-а )  \n" +
                "    \n" +
                "    comment_area-- поле вооду імені і дати  button_send- кнопка відправлення \n" +
                "\n" +
                "    comment_list -  коментарїї    \n" +
                "    comment_list_left -- блок зліва    like-- лайки     dislike- дизлайки\n" +
                "\n" +
                "    comment_list_right-блок справа \n" +
                "\n" +
                "\n" +
                "\n" +
                "--> \n" +
                "\n" +
                "\n" +
                "<div class=\"comment\">\n" +
                "\n" +
                "    <div class=\"comment_inner\">\n" +
                "\n" +
                "        <h1> WRITE YOUR COMMENT</h1><br>\n" +
                "\n" +
                "        <div class=\"comment_area\">\n" +
                "            <div class=\"name\">\n" +
                "                <div class=\"page\">\n" +
                "                    <label class=\"field field_v2\">\n" +
                "\n" +
                "\n" +
                "\n" +
                "                      <input id=\"nickNameField\" type=\"text\" class=\"field__input\" placeholder=\"e.g. Hinterland\">\n" +
                "\n" +
                "\n" +
                "\n" +
                "                      <span class=\"field__label-wrap\">\n" +
                "                        <span class=\"field__label\"> Nick name </span>\n" +
                "                      </span>\n" +
                "                    </label>  \n" +
                "                  </div>\n" +
                "            </div>\n" +
                "         </div>\n" +
                "         <br><br>\n" +
                "         <div class=\"text\">\n" +
                "\n" +
                "            \n" +
                "\n" +
                "            <textarea id=\"commentArea\" class=\"text_inner\" cols=\"85  \" maxlength=\"909\" rows=\"10\"></textarea>\n" +
                "\n" +
                "\n" +
                "\n" +
                "         </div>\n" +
                "         <div class=\"button_send\">\n" +
                "\n" +
                "\n" +
                "\n" +
                "            <div id=\"btn\" onclick=\"OnButtonCommentSendClick()\"><span class=\"noselect\">Send</span><div id=\"circle\"></div></div>\n" +
                "\n" +
                "\n" +
                "\n" +
                "         </div>\n" +
                "\n" +
                "         <h1 class=\"just_nicho\">COMMENTS\n" +
                "         </h1><br>\n" +
                "         \n" +
                "             \n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "                        <div class=\"comment_list\">\n" +
                "                            <div class=\"comment_list_left\">\n" +
                "                                <p>name</p>\n" +
                "                                <img src=\"img/wolf.png\" alt=\"\" srcset=\"\"><br>\n" +
                "                                <p id=\" $likesId  \">likes </p><button >Like</button>\n" +
                "                                <p id=\" $dislikesId '\"> dislikes </p><button onClick=\"OnDislikeClick(' . $id . ', ' . $dislikesId . ')\">Disike</button>\n" +
                "                            </div>\n" +
                "                            <div class=\"comment_list_right\">\n" +
                "                                <div class=\"comment_list_right_posted\">\n" +
                "                                    <p>Posted date </p>\n" +
                "                                </div>\n" +
                "                               \n" +
                "                            </div>\n" +
                "                        </div>';\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "            \n" +
                "    </div>\n" +
                "</div>\n" +
                "\n" +
                "<!-- Блоки новин назив news_list  news_list_inner_text-текст справа  news_list_inner_photo - фото    --> \n" +
                "        <div class=\"news_list\">\n" +
                "\n" +
                "            <span class=\"news_list_date\">07.12.2020.</span>\n" +
                "\n" +
                "\n" +
                "            <div class=\"news_list_inner\">\n" +
                "\n" +
                "                \n" +
                "                <div class=\"news_list_inner_photo\">\n" +
                "\n" +
                "                    <a href=\"#\">\n" +
                "                        <img src=\"img/HP-Blog-Featured-Img.png\" width=\"329px\" height=\"auto\" alt=\"\" srcset=\"\">\n" +
                "                    </a>\n" +
                "\n" +
                "                </div>\n" +
                "                \n" +
                "\n" +
                "                <div class=\"news_list_inner_text\">\n" +
                "                    HESITANT PROSPECT Update Now Live\n" +
                "                </div>\n" +
                "                \n" +
                "\n" +
                "            </div>\n" +
                "\n" +
                "        </div>\n" +
                "\n" +
                "<!-- Блоки новин назив news_list  news_list_inner_text-текст справа  news_list_inner_photo - фото    --> \n" +
                "\n" +
                "\n" +
                "        <div class=\"news_list\">\n" +
                "\n" +
                "            <span class=\"news_list_date\">07.12.2020.</span>\n" +
                "\n" +
                "\n" +
                "            <div class=\"news_list_inner\">\n" +
                "\n" +
                "                \n" +
                "                <div class=\"news_list_inner_photo\">\n" +
                "\n" +
                "                    <a href=\"#\">\n" +
                "                        <img src=\"img/HP-Blog-Featured-Img.png\" width=\"329px\" height=\"auto\" alt=\"\" srcset=\"\">\n" +
                "                    </a>\n" +
                "\n" +
                "                </div>\n" +
                "                \n" +
                "\n" +
                "                <div class=\"news_list_inner_text\">\n" +
                "                    HESITANT PROSPECT Update Now Live\n" +
                "                </div>\n" +
                "                \n" +
                "\n" +
                "            </div>\n" +
                "\n" +
                "        </div>\n" +
                "\n" +
                "\n" +
                "<!-- Блоки новин назив news_list  news_list_inner_text-текст справа  news_list_inner_photo - фото    --> \n" +
                "\n" +
                "        <div class=\"news_list\">\n" +
                "\n" +
                "            <span class=\"news_list_date\">07.12.2020.</span>\n" +
                "\n" +
                "\n" +
                "            <div class=\"news_list_inner\">\n" +
                "\n" +
                "                \n" +
                "                <div class=\"news_list_inner_photo\">\n" +
                "\n" +
                "                    <a href=\"#\">\n" +
                "                        <img src=\"img/HP-Blog-Featured-Img.png\" width=\"329px\" height=\"auto\" alt=\"\" srcset=\"\">\n" +
                "                    </a>\n" +
                "\n" +
                "                </div>\n" +
                "                \n" +
                "\n" +
                "                <div class=\"news_list_inner_text\">\n" +
                "                    HESITANT PROSPECT Update Now Live\n" +
                "                </div>\n" +
                "                \n" +
                "\n" +
                "            </div>\n" +
                "\n" +
                "        </div>\n" +
                "\n" +
                "        <div class=\"about_game_forum\">\n" +
                "            <a class=\"email_sender_forum\" href=\"#\">NEWS & UPDATES <img class=\"about_game_forum_padding\" src=\"img/icon-promo.png\" alt=\"\" srcset=\"\"></a>\n" +
                "    \n" +
                "        \n" +
                "    \n" +
                "    \n" +
                "        </div>\n" +
                "        \n" +
                "\n" +
                "        \n" +
                "\n" +
                "\n" +
                "    </div>\n" +
                "\n" +
                "    \n" +
                "\n" +
                "</main>\n" +
                "\n" +
                "<footer class=\"footer\">\n" +
                "\n" +
                "    <div class=\"footer_inner\">\n" +
                "\n" +
                "        <h2 >SIGN UP FOR NEWS & UPDATES</h2>\n" +
                "\n" +
                "        <div class=\"email_sender_field\">\n" +
                "            <form action=\"vlad_work_with_sql_email\">\n" +
                "\n" +
                "                \n" +
                "                <input type=\"email\" value=\"\" name=\"EMAIL\" class=\"email_sender_field_inner\"  required=\"\" aria-label=\"Your email\">\n" +
                "                \n" +
                "                <button type=\"submit\" value=\"Subscribe\" name=\"subscribe\"  class=\"email_sender_field_inner_submit\">Sign Up</button>\n" +
                "\n" +
                "\n" +
                "\n" +
                "            </form>\n" +
                "\n" +
                "        </div>\n" +
                "\n" +
                "        <ul class=\"list_photo\">\n" +
                "            <li>\n" +
                "\n" +
                "                <a class=\"footer-list-twitter\" href=\"https://www.facebook.com/intothelongdark\">\n" +
                "                    <img src=\"img/icon-share-facebook.svg\" width=\"40px\" height=\"40px\" alt=\"\">\n" +
                "                    \n" +
                "                </a>\n" +
                "\n" +
                "            </li>\n" +
                "            <li>\n" +
                "\n" +
                "                <a href=\"\" class=\"footer-list-twitter\">\n" +
                "                    <img src=\"img/icon-community-twitch.svg\" width=\"40px\" height=\"36px\" alt=\"https://twitter.com/HinterlandGames\">\n" +
                "                </a>\n" +
                "\n" +
                "            </li>\n" +
                "            <li>\n" +
                "\n" +
                "                <a class=\"footer-list-twitter\" href=\"https://www.youtube.com/user/hinterlandgames\">\n" +
                "                    <img src=\"img/icon-youtube.svg\" width=\"40px\" height=\"40px\" alt=\"\">\n" +
                "                    \n" +
                "                </a>\n" +
                "\n" +
                "            </li>\n" +
                "            <li>\n" +
                "\n" +
                "                <a href=\"https://www.twitch.tv/directory/game/The%20Long%20Dark\" class=\"footer-list-twitter\">\n" +
                "                    <img src=\"img/icon-community-twitch.svg\" width=\"40px\" height=\"36px\" alt=\"https://twitter.com/HinterlandGames\">\n" +
                "                </a>\n" +
                "\n" +
                "            </li>\n" +
                "            \n" +
                "\n" +
                "\n" +
                "        </ul>\n" +
                "\n" +
                "        <ul class=\"footer_list_text\">\n" +
                "            <li >\n" +
                "                <a href=\"movies.jsp\" class=\"footer_list_text_li\">MOVIE</a>\n" +
                "            </li>\n" +
                "\n" +
                "           \n" +
                "\n" +
                "            <li>\n" +
                "                <a href=\"https://www.facebook.com/\" class=\"footer_list_text_li\" target=\"_blank\" >COMMUNITY</a>\n" +
                "            </li>\n" +
                "            <li>\n" +
                "                <a href=\"shop-right-sidebar.jsp\" class=\"footer_list_text_li\" >SHOP</a>\n" +
                "            </li>\n" +
                "            <li>\n" +
                "                <a href=\"contact.jsp\" class=\"footer_list_text_li\" target=\"_blank\"  >SUPPORT</a>\n" +
                "            </li>\n" +
                "            <li>\n" +
                "                <a href=\"login.html\" class=\"footer_list_text_li\"  >LOGIN</a>\n" +
                "            </li>\n" +
                "            <li>\n" +
                "                <a href=\"registration.html\"  class=\"footer_list_text_li\"  >REGISTER</a>\n" +
                "            </li>\n" +
                "        </ul>\n" +
                "\n" +
                "        <div class=\"footer_logo\">\n" +
                "\n" +
                "            <img src=\"img/logo-hinterland-wordmark.svg\" alt=\"\">\n" +
                "\n" +
                "        </div>\n" +
                "\n" +
                "        <div class=\"footer_logo_text\">\n" +
                "            <p class=\"copyright\">THE LONG DARK © 2012-2021 Hinterland Studio Inc.<br>\n" +
                "                \"THE LONG DARK\", \"Hinterland\" and the fox logo are registered trademarks or trademarks of Hinterland Studio Inc. All rights reserved.<br>\n" +
                "                Nintendo Switch is a trademark of Nintendo.\n" +
                "\n" +
                "               </p>\n" +
                "               <p class=\"copyright\"><a class=\"copyright_1\"  href=\"https://hinterlandgames.com/privacy-policy/\">Privacy Policy</a></p>\n" +
                "\n" +
                "        </div>\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "    </div>\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "</footer>\n" +
                "\n" +
                "\n" +
                "</body>\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "\n" +
                "</html>\n";


        File file = new File("src/main/webapp/views", nameForMovie+".jsp");
        if(!file.exists()){

            file.createNewFile();

        }
        FileWriter fileWriter = new FileWriter(file);
        fileWriter.write(pageTemplate);


        fileWriter.flush();
        fileWriter.close();
        return true;






    }

//    public static void main(String[] args) {
//
//        NewMoviePage newMoviePage = new NewMoviePage();
//
//        newMoviePage.createDirectionForImageMovie("Baby boss");
//        try {
//            newMoviePage.createFile(nameForMovie,"we-are-your-friends-3.jpg","Monday","One","Two","Three","Max","Good","17","18");
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//
//
//
//    }


}
