<%@ page contentType="text/html; charset=UTF-8"%>
<h1>공지사항</h1>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>공지사항</title>
        <style>
            .container {
                max-width: 960px;
                margin: 20px auto;
                padding: 20px;
                background-color: #fff;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            table {
                width: 100%;
                border-collapse: collapse;
                margin-bottom: 20px;
                border: none;
            }

            th,
            td {
                border: none;
                padding: 8px;
                text-align: center;
            }

            th {
                background-color: #f2f2f2;
            }

            th:first-child,
            td:first-child {
                width: 40px;
            }

            th:nth-child(2),
            td:nth-child(2) {
                width: 384px;
            }

            th:nth-child(3),
            td:nth-child(3) {
                width: 144px;
            }

            th:nth-child(4),
            td:nth-child(4) {
                width: 144px;
                /* Changed from width: 15%; */
            }

            th:nth-child(5),
            td:nth-child(5) {
                width: 144px;
            }

            tbody tr:hover {
                background-color: #e0e0e0;
            }

            .btn-primary {
                background-color: #007bff;
                color: #fff;
                border: none;
                padding: 10px 20px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 0 0 20px;
                cursor: pointer;
            }

            .btn-primary:hover {
                background-color: #0056b3;
            }

            .text-center {
                text-align: center;
            }

            .pagination {
                list-style: none;
                padding: 0;
            }

            .pagination li {
                display: inline;
                margin-right: 5px;
            }

            .pagination li a {
                text-decoration: none;
                background-color: #007bff;
                color: #fff;
                padding: 5px 10px;
                border-radius: 3px;
            }

            .pagination li a:hover {
                background-color: #0056b3;
            }

            h1 {
                background-color: #fff;
                color: #000;
                text-align: center;
                padding: 10px 0;
                margin: 0;
                border-bottom: 1px solid #ccc;
            }
        </style>
    </head>

    <body>
        <div class="container">
            <table>
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>날짜</th>
                        <th>조회수</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>아이야이야</td>
                        <td>박준형</td>
                        <td>2023.9.5</td>
                        <td>165</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>그렇게 살아가고</td>
                        <td>안데니</td>
                        <td>2023.9.5</td>
                        <td>141</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>그렇게 후회하고</td>
                        <td>손호영</td>
                        <td>2023.9.5</td>
                        <td>256</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>눈물도 흘리고</td>
                        <td>윤계상</td>
                        <td>2023.9.5</td>
                        <td>395</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>아이야이야</td>
                        <td>김태우</td>
                        <td>2023.9.5</td>
                        <td>1650</td>
                    </tr>
                </tbody>
            </table>
            <hr>
            <a class="btn btn-primary pull-right">글쓰기</a>
            <div class="text-center">
                <ul class="pagination">
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                </ul>
            </div>
        </div>
    </body>

    </html>