<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

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
        <h1 class="font-family-sans font-weight-bold font-size-5">책 상세</h1>
        <div><a class="icon icon-alert" href="">알림</a></div>
    </header>

    <main>
        <h1 style="display: block; font-size: 20px; font-weight: bold;">관리자 책 등록 페이지</h1>
        <form action="" method="post">
     
            <label>ID</label>
            <input type="text" name="id" value="${book.id}"></br>

            <label>제목</label>
            <input type="text" name="title" value="${book.title}"></br>

            <label>이미지</label>
            <input type="file" name="img" value = "${book.img}"></br> 

            <label>작가</label>
            <input type="text" name="author" value = "${book.author}"></br>

            <label>isbn</label>
            <input type="text" name="isbn" value = "${book.isbn}"></br>

            <label>출판사</label>
            <input type="text" name="publisher" value = "${book.publisher}"></br>

            <label>출판일</label>
            <input type="text" name="publicationdate" value = "${book.publicationDate}"></br>

            <label>인트로</label>
            <input type="text" name="intro" value = "${book.intro}"></br>

            <label>가격</label>
            <input type="text" name="price" value = "${book.price}"></br>

            <label>페이지</label>
            <input type="text" name="page" value = "${book.page}"></br>

            <button>전송</button>


        </form>



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