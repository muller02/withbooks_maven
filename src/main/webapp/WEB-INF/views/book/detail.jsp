<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>


    <link href="/css/reset.css" type="text/css" rel="stylesheet" />
    <link href="/css/style.css" type="text/css" rel="stylesheet" />
    <link href="/css/component/header/header.css" type="text/css" rel="stylesheet" />
    <link href="/css/component/main-menu/main-menu.css" type="text/css" rel="stylesheet" />
    <link href="/css/component/category/category.css" type="text/css" rel="stylesheet" />
    <link href="/css/book/detail.css" type="text/css" rel="stylesheet" />
    <link href="/css/icon.css" type="text/css" rel="stylesheet" />
    <link href="/css/font.css" type="text/css" rel="stylesheet" />
    <link href="/css/util.css" type="text/css" rel="stylesheet" />
    
</head>
<body>
    <header class="header">
        <h1 class="font-family-sans font-weight-bold font-size:5">책 상세</h1>
        <div><a class="icon icon-alert" href="">알림</a></div>
    </header>

    <div >
        <main>
            <section>
                <h1 class="d-none">책 상세</h1>
                <div class="main-top-box">
                    <ul class="hash-tag">
                        <li>#베스트셀러</li>
                        <li>#교양</li>
                        <li>#올해의 책</li>
                    </ul>
                    <div class="book-img"><img src="/imgs/book/${book.img}" alt="stolen-focus"></div>
                </div>
    
                <div class="main-bot-box">
                    <div class="font-family-sans font-weight-bold font-size:6">${book.title}</div>
                    <div class="font-family-sans font-weight-normal font-size:3">${book.author}</div>
                    <div class="publisher-publ_date-box">
                        <div class="publisher font-family-sans font-weight-normal font-size:1 icon icon-position-left icon-publisher text-rest">${book.publisher}</div>
                        <div class="publ-date font-family-sans font-weight-normal font-size:1 icon icon-position-left icon-publ-date text-rest">${book.publicationDate}</div>
                    </div>
                    <div class="cat-price-box">
                        <div class="cat font-family-sans font-weight-normal font-size:1 icon icon-position-left icon-cat text-rest">인문/사회학</div>
                        <div class="price font-family-sans font-weight-normal font-size:1 icon icon-position-left icon-price text-rest">${book.price}원</div>
                    </div>
                    <div class="isbn-page-box">
                        <div class="isbn font-family-sans font-weight-normal font-size:1 icon icon-position-left icon-isbn text-rest">${book.isbn}</div>
                        <div class="page font-family-sans font-weight-normal font-size:1 icon icon-position-left icon-page text-rest">${book.page}쪽</div>                
                    </div>
                </div>
            </section>   
             <nav class="go-to-booklog">
            <h1 class="d-none">북로그 바로가기</h1>
            <div><a class="font-family-sans font-weight-lighter font-size:1 icon icon-right-arrow icon-position-right text-rest" href="">북로그 보러 가기</a></div>
        </nav>
    <div class=pur-rental-con>
        <nav class="pur-rental-nav">
            <h1 class="d-none">구매/대여하기</h1>
            <ul class="pur-rental-ul">
                <li class="purchase"><label class="font-family-sans font-weight-normal font-size:1" for="">구매하기</label><a class="font-family-sans font-weight-normal font-size:1" href="">16,920 원</a></li>
                <li class="rental"><label class="font-family-sans font-weight-normal font-size:1" for="">대여하기</label><a class="font-family-sans font-weight-normal font-size:1" href="">0/3 대여하기</a></li>
            </ul>
        </nav>
    </div>
        <nav class="debate-now">
            <h1 class="font-family-sans font-weight-normal font-size:1 icon icon-hamberger icon-position-16px text-rest">현재 토론중인 방</h1>
            <ul class="debating-with">
                <li><a href="">뉴렉 동아리</a></li>
                <li><a href="">경인이 동아리</a></li>
                <li><a href="">명길이 동아리</a></li>
            </ul>
        </nav>
        </main>
    
       
    </div>
    


  


   <nav class="main-menu-bar">
        <h1 class="d-none">메인메뉴목록</h1>
        <ul class="main-menu-bar-list">
            <li><a class="icon icon-mywith icon-position-top font-family-sans font-weight-bold font-size:2 text-rest del-underline" href="">마이위드</a></li>
            <li><a class="icon icon-booklog icon-position-top  font-family-sans font-weight-bold font-size:2  text-rest del-underline" href="">북로그</a></li>
            <li><a class="icon icon-home" href="">홈</a></li>
            <li><a class="icon icon-search icon-position-top  font-family-sans font-weight-bold font-size:2  text-rest del-underline" href="">책 검색</a></li>
            <li><a class="icon icon-mybook icon-position-top  font-family-sans font-weight-bold font-size:2  text-rest del-underline" href="">내 서재</a></li>
        </ul>
    </nav> 
</body>
</html>