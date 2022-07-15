<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        :root {
            --sil: #d5d5d5;
        }

        * {
            box-sizing: border-box;
        }

        .container {
            width: 100%;
            min-height: 2800px;
            height: 1px;
        }

        .header {
            height: 10%;
        }

        .footer {
            height: 10%;
        }

        .content {
            height: 80%;
        }

        .content_header {
            height: 4%;
        }

        .content_footer {
            height: 4%;
        }

        .boardList {
            height: 86%;
        }

        .content_header {
            display: flex;
            justify-content: space-between;
            border-bottom: 1px solid var(--sil);
        }

        .content_header h3 {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #search_form {
            flex-basis: 400px;
            display: flex;
            align-items: center;
        }

        #search_form #category {
            width: 30%;
            height: 40px;
            margin-right: 10px;
        }

        #search_form .search {
            position: relative;
            flex-basis: 65%;
        }

        #search_form #search {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            width: 100%;
            height: 40px;
            z-index: 1;
            border-radius: 10px;
        }

        #search_form #searchBtn {
            width: 40px;
            height: 40px;
            position: absolute;
            top: 50%;
            left: 0;
            transform: translate(0%, -50%);
            background-color: var(--sil);
            border: none;
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 2;
            border-top-left-radius: 10px;
            border-bottom-left-radius: 10px;
        }

        #searchBtn img {
            background-color: var(--sil);
            width: 30px;
            height: 30px;
        }

        .boardList {
            margin-top: 30px;
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 70px;
            padding: 10px;
            margin-bottom: 50px;
        }

        .boardList a {
            text-decoration: none;
        }

        .board {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px;
            padding: 10px;
        }

        .board_img {
            flex-basis: 65%;
            width: 80%;
            display: flex;
            border-radius: 20px;
        }

        .board_img img {
            justify-content: center;
            align-items: center;
            overflow: hidden;
            width: 100%;
            height: 100%;
        }

        .board_content {
            flex-basis: 25%;
            width: 80%;
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            grid-template-rows: repeat(3, 1fr);
        }

        .board_content span {
            color: var(--sil);
            font-size: 0.8em;
            display: block;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;

        }

        .board_content .count,
        .board_content .title {
            color: black;
            font-size: 1.0em;
        }

        .board_content .count,
        .board_content .vol_date,
        .board_content .written_date {
            text-align: end;
        }

        .board_content span:nth-child(5) {
            grid-column: 2/3;
        }

        .content_footer {
            border-top: 1px solid var(--sil);
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
        }

        #write {
            position: absolute;
            right: 3%;
            height: 40px;
            width: 70px;
            background-color: white;
            border: 1px solid var(--sil);
            color: var(--sil);
            border-radius: 10px;
        }

        #write:hover {
            color: #ffffff;
            background-color: var(--sil);
        }

        @media screen and (max-width: 640px) {
            .container {
                min-height: 3600px;
            }

            .content_header {
                flex-direction: column;
                align-items: flex-start;
                height: 110px;
                gap: 3px;
            }

            #search_form {
                flex-basis: auto;
                height: 60px;
                width: 100%;
            }

            .boardList {
                grid-template-columns: none;
                grid-template-rows: repeat(12, 200px);
                gap: 10px;
            }

            .boardList a {
                color: black;
                text-decoration: none;
            }

            .board {
                flex-direction: row;
                border-bottom: 1px solid var(--sil);
            }

            .board_img {
                flex-basis: 30%;
                height: 100%;
            }

            .board_content {
                flex-basis: 65%;
                grid-template-columns: repeat(2, 1fr);
                grid-template-rows: repeat(4, 1fr);
            }

            .board_content .title {
                grid-column: 1/2;
                grid-row: 1/2;
                font-size: 1.2em;
                margin-bottom: 3px;
            }

            .board_content .nickname {
                grid-column: 1/2;
                grid-row: 2/3;

            }

            .board_content .written_date {
                grid-column: 2/3;
                grid-row: 2/3;
            }

            .board_content .count {
                grid-column: 1/3;
                grid-row: 3/4;
                text-align: start;
            }

            .board_content .vol_date {
                grid-column: 1/3;
                grid-row: 4/5;
                text-align: start;
                color: black;
            }

        }
    </style>
</head>
<body>
<div class="container">
    <div class="header">HEADER</div>
    <div class="content">
        <div class="content_header">
            <h3>후원 게시판</h3>
            <form action="" id="search_form">
                <label for="category"></label>
                <select name="category" id="category">
                    <option value="제목">제목</option>
                    <option value="내용">내용</option>
                    <option value="작성자">작성자</option>
                </select>
                <div class="search">
                    <button type="button" id="searchBtn"><img src="/resources/images/search.png"></button>
                    <label for="search">
                        <input type="text" id="search">
                    </label>
                </div>
            </form>
        </div>
        <div class="boardList">
            <c:forEach items="${list}" var="i">
                <a href="/supportBoard/view?seq_board=${i.seq_board}">
                    <div class="board">
                        <div class="board_img">
                            <img src="/resources/images/No_image.png">
                        </div>
                        <div class="board_content">
                            <span class="title"><c:out value="${i.board_title}"/></span>
                            <span class="nickname"><c:out value="${i.writer_nickname}"/></span>
                            <span class="written_date"><fmt:formatDate value="${i.written_date}" pattern="yyyy-MM-dd HH:mm:ss"/> /span>
                        </div>
                    </div>
                </a>
            </c:forEach>
        </div>
        <div class="content_footer">
            <div class="pagination">paging</div>
            <button type="button" id="write">글쓰기</button>
        </div>
    </div>
    <div class="footer">FOOTER</div>
</div>
</body>
<script>
    document.querySelector("#write").addEventListener("click",()=>{
        location.href = "/supportBoard/write"
    })
</script>
</html>
<html>
<head>