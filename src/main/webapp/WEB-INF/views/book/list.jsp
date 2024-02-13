<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link href="/css/reset.css" type="text/css" rel="stylesheet" />
    <link href="/css/style.css" type="text/css" rel="stylesheet" />

    <link href="/css/component/header/header.css" type="text/css" rel="stylesheet" />
    <link href="/css/component/main-menu/main-menu.css" type="text/css" rel="stylesheet" />
    <link href="/css/component/category/category.css" type="text/css" rel="stylesheet" />

    <link href="/css/components/layout.css" type="text/css" rel="stylesheet" />

<!--     <link href="/css/component/category.css" type="text/css" rel="stylesheet" /> -->
    <!-- <link href="/css/component/list-icon/icon.css" type="text/css" rel="stylesheet" /> -->

    <link href="/css/book/list.css" type="text/css" rel="stylesheet" />

    <link href="/css/icon.css" type="text/css" rel="stylesheet" />
    <link href="/css/font.css" type="text/css" rel="stylesheet" />
    <link href="/css/util.css" type="text/css" rel="stylesheet" />

    <link href="/css/util/util.css" type="text/css" rel="stylesheet" />
    <link href="/css/component/icon.css" type="text/css" rel="stylesheet" />

    <!--  -->

    <!-- header + main-menu css -->
    <link rel="stylesheet" href="/css/component/icon.css" />


    <!-- header css -->
    <link rel="stylesheet" href="/css/component/header.css" />


    <!-- main-menu css -->
    <link rel="stylesheet" href="/css/reset.css" />
    <link rel="stylesheet" href="/css/component/main-menu.css" />
    <link rel="stylesheet" href="/css/util/util.css" />
    <link rel="stylesheet" href="/css/font.css" />
    <link rel="stylesheet" href="/css/style.css" />

    <link rel="stylesheet" href="/css/component/catecomponent.css" />
    <!--   뉴렉처 css
    <linkrel="stylesheet" type="text/css"href="https://cdn.jsdelivr.net/npm/newtil-css@latest/dist/style.css" /> -->
</head>

<body>

    <header class="header">
        <h1 class="font-family-sans font-weight-bold font-size-5">책 상세</h1>
        <div><a class="icon icon-alert" href="">알림</a></div>
    </header>

    <main class="main" id="main">
       <div class="main-under-con">
        <section class="search-con">
            <h1 class="d-none">검색</h1>
            <form class="search-box" action="df">
              <input type="text">
              <div><a href="" class="search"></a></div>
      
      
              </form>
        </section>
        <section class="cate-con">
            <h1 class="d-none">카테고리</h1>

            <ul>
                <li><a href="">베스트셀러</a></li>
                <li><a href="">경제/경영</a></li>
                <li><a href="">인문</a></li>
                <li><a href="">과학</a></li>
                <li><a href="">소설</a></li>
                <li><a href="">사회/정치</a></li>
                <li><a href="">시/희곡</a></li>
                <li><a href="">자기계발</a></li>
                <li><a href="">여행</a></li>
                <li><a href="">컴퓨터/IT</a></li>
                <li><a href="">기타</a></li>


            </ul>
        </section>

        <div class="reset-con">
         <div class="reset-box"><a href="d" class=""><img src="\imgs\reset.svg" class="reset-img"><span class="reset-text">초기화</span></a></div>
        </div>

      <div class="border"></div>
      
    </div>

        <section class="book-list">
            <h1>북리스트</h1>

            <ul>
            <c:forEach var="b" items="${list}">
                <li>
                   
                    <div><a href="detail?id=${b.id}">  <img alt="책표지" src="/imgs/book/${b.img}" class="book-img" /><br /> </a></div>
                    <div> <span class="book-title">${b.title}</span><br /></div>
                    <div>  <span class="book-author">${b.author}</span></div>
                  
                   
                </li>
             </c:forEach>

    </main>



    <nav class="main-menu-bar">
        <h1 class="d-none">메인메뉴목록</h1>
        <ul class="main-menu-bar-list">
            <li><a class="icon icon-mywith icon-position-top font-family-sans font-weight-bold font-size-1 text-rest del-underline"
                    href="">마이위드</a></li>
            <li><a class="icon icon-booklog icon-position-top  font-family-sans font-weight-bold font-size-1  text-rest del-underline"
                    href="">북로그</a></li>
            <li><a class="icon icon-home" href="">홈</a></li>
            <li><a class="icon icon-search icon-position-top  font-family-sans font-weight-bold font-size-1  text-rest del-underline"
                    href="">책 검색</a></li>
            <li><a class="icon icon-mybook icon-position-top  font-family-sans font-weight-bold font-size-1  text-rest del-underline"
                    href="">내 서재</a></li>
        </ul>
    </nav>
</body>

</html>