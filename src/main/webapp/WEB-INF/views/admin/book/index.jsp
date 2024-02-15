<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>

    <link href="/css/style.css" type="text/css" rel="stylesheet" />
    <link href="/css/components/layout.css" type="text/css" rel="stylesheet" />

    <link href="/css/component/category.css" type="text/css" rel="stylesheet" />
    <!-- <link href="/css/component/list-icon/icon.css" type="text/css" rel="stylesheet" /> -->
    <link href="/css/book/list.css" type="text/css" rel="stylesheet" />
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


    <!--   뉴렉처 css
    <linkrel="stylesheet" type="text/css"href="https://cdn.jsdelivr.net/npm/newtil-css@latest/dist/style.css" /> -->
</head>

<body>

    <header class="header">
        <h1 class="font-family-sans font-weight-bold font-size:5">책 상세</h1>
        <div><a class="icon icon-alert" href="">알림</a></div>
    </header>

    <main class="main" id="main">
        <section class="search-filter">
            <h1 class="filter-title">책검색필터</h1>

            <form action="">
                <fieldset class="keyword-field">
                    <legend class="field-title">필터목록</legend>
                    <div class="keyword-content">
                        <input type="text" name="search-keyword" class="search-keyword border-none" />
                        <button type="submit" onclick="alert('검색완료!')" class="icon icon-search icon-size:1 border-none">
                            검색버튼
                        </button>
                    </div>
                </fieldset>

                <ul class="category-content">
                    <li>
                        <a href=""><span>어린이</span></a>
                    </li>
                    <li>
                        <a href=""><span>에세이</span></a>
                    </li>
                    <li>
                        <a href=""><span>소설/시/희곡</span></a>
                    </li>
                    <li>
                        <a href=""><span>자기계발</span></a>
                    </li>
                    <li>
                        <a href=""><span>종교</span></a>
                    </li>
                    <li>
                        <a href=""><span>자연과학</span></a>
                    </li>
                    <li>
                        <a href=""><span>잡지</span></a>
                    </li>
                    <li>
                        <a href=""><span>전집</span></a>
                    </li>
                    <li>
                        <a href=""><span>청소년</span></a>
                    </li>
                    <li>
                        <a href=""><span>초등참고서</span></a>
                    </li>
                    <li>
                        <a href=""><span>중고등참고서</span></a>
                    </li>
                    <li>
                        <a href=""><span>인물</span></a>
                    </li>
                    <li>
                        <a href=""><span>유아</span></a>
                    </li>
                    <li>
                        <a href=""><span>수험서 자격증</span></a>
                    </li>
                </ul>
            </form>

            <div class="dashed-line"></div>
        </section>

        <section class="sort-container">
            <h1>정렬하기</h1>

            <div>
                <a href="">
                    <span class="icon icon-sort icon-size:1 display-inline-block"></span>
                    <span>최신순</span>
                </a>
            </div>
        </section>

        <section class="book-list">
            <h1>북리스트</h1>

			       <div><a href="/admin/book/reg">등록하기</a></div>
            <ul>
            <c:forEach var="b" items="${list}">
                <li>
                   
                    <div><a href="detail?id=${b.id}">  <img alt="책표지" src="/imgs/book/${b.img}" class="book-img" /><br /> </a></div>
                    <div> <span class="book-title">${b.title}</span><br /></div>
                    <div>  <span class="book-author">${b.author}</span></div>
             
                    <div><a href="/admin/book/edit?id=${b.id}">수정하기</a></div>
                           <div><a href="/admin/book/delete?id=${b.id}">삭제하기</a></div>
                  
                   
                </li>
             </c:forEach>

    </main>



    <nav class="main-menu-bar">
        <h1 class="d-none">메인메뉴목록</h1>
        <ul class="main-menu-bar-list">
            <li><a class="icon icon-mywith icon-position-top font-family-sans font-weight-bold font-size:2 text-rest del-underline"
                    href="">마이위드</a></li>
            <li><a class="icon icon-booklog icon-position-top  font-family-sans font-weight-bold font-size:2  text-rest del-underline"
                    href="">북로그</a></li>
            <li><a class="icon icon-home" href="">홈</a></li>
            <li><a class="icon icon-search icon-position-top  font-family-sans font-weight-bold font-size:2  text-rest del-underline"
                    href="">책 검색</a></li>
            <li><a class="icon icon-mybook icon-position-top  font-family-sans font-weight-bold font-size:2  text-rest del-underline"
                    href="">내 서재</a></li>
        </ul>
    </nav>
</body>

</html>