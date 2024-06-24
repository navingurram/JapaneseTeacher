<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dashboard</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
      integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
  </head>

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      /* font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande",
        "Lucida Sans", Arial, sans-serif;
      color: #282c3f; */
    }

    html,
    body {
      width: 100%;
      height: 100%;
      background-color: #0093e9;
    }

    main {
      width: 100%;
      height: 100%;
      position: relative;
    }

    .dashboard-main {
      width: 100%;
      height: 100vh;
      display: flex;
      justify-content: space-between;
      flex-wrap: wrap;
      background-image: linear-gradient(160deg, #0093e9 0%, #80d0c7 100%);
      padding-left: 20px;
      padding-right: 20px;
    }

    /*card style start.........................................................*/
    .card1 {
      width: 25%;
      min-width: 250px;
      max-width: 400px;
      height: 270px;
      box-shadow: 0px 0px 4px 0px rgba(50, 145, 125, 0.342);
      border-radius: 10px;
      position: relative;
      overflow: visible;
      /* background: rgba(255, 255, 255, 0.2); */
      backdrop-filter: blur(10px);
      border: 1px solid rgba(255, 255, 255, 0.3);
      background-color: white;
      margin-top: 50px;
    }

    .card1:hover {
      box-shadow: 0px 0px 8px 1px rgba(50, 145, 125, 0.342);
    }

    /* .card-heading-div {
      width: 100%;
      height: 100%;
      display: flex;
      align-items: center;
      z-index: 2;
      justify-content: space-between;
    }

    .card-heading-div {
      font-size: 1.3rem;
      font-weight: 900;
    } */

    .view-more-div {
      width: 100%;
      height: 100%;
      display: flex;
      justify-content: space-between;
      align-items: flex-end;
      z-index: 2;
      border-top: none;
      background-color: white;
    }

    .view-more-div span {
      font-size: 1.2rem;
      font-weight: 500;
    }

    .card:hover .view-more-div span {
      color: white;
    }

    /*card style end.........................................................*/

    /*modal style start.........................................................*/
    .modal1 {
      display: none;
      position: fixed;
      z-index: 1;
      left: 0;
      right: 0;
      top: 0;
      bottom: 0;
      width: 100%;
      height: 100%;
      overflow: hidden;
      /* background-color: rgba(255, 255, 255, 0.3); */
      /* background-color: rgba(164, 157, 157, 0.386); */
      backdrop-filter: blur(7px);
    }

    .modal-content1 {
      background-color: rgba(255, 255, 255, 0.2);
      backdrop-filter: blur(10px);
      border-radius: 7px;
      border: 1px solid rgba(255, 255, 255, 0.3);
      margin: 5% auto;
      padding: 20px 20px;
      width: 40%;
      height: 50%;
      min-height: 50vh;
      margin-top: 120px;
      overflow-y: auto;
    }

    .modal-content1::-webkit-scrollbar {
      width: 12px;
    }

    .modal-content1::-webkit-scrollbar-thumb {
      background-color: rgba(255, 255, 255, 0.4);
      border-radius: 10px;
    }

    .modal-content1::-webkit-scrollbar-thumb:hover {
      background-color: rgba(255, 255, 255, 0.5);
    }

    .close-btn {
      color: #aaa;
      float: right;
      font-size: 28px;
      font-weight: bold;
    }

    .close-btn:hover,
    .close-btn:focus {
      color: black;
      text-decoration: none;
      cursor: pointer;
    }

    .fade-in {
      animation: fadeIn 0.8s ease-in-out;
    }

    @keyframes fadeIn {
      from {
        opacity: 0;
        transform: scale(2);
      }

      to {
        opacity: 1;
        transform: scale(1);
      }
    }

    table {
      width: 80%;
      border-collapse: collapse;
      margin: 20px auto;
      text-align: center;
      height: 80%;
      max-height: 80%;
    }

    .modal-heading {
      text-align: center;
    }

    th,
    td {
      padding: 10px;
    }

    th {
      font-weight: bold;
    }

    td {
      font-weight: lighter;
    }

    table tr:hover {
      background-color: #f1f1f1;
    }

    table tr:first-child:hover {
      background-color: inherit;
    }

    .btn23 {
      color: #0093e9;
      background-color: white;
      border: none;
      outline: none;
      font-size: 15px;
      font-weight: 600;
      padding: 16px;
      border-radius: 7px;
    }

    .btn23:hover {
      background-color: #0093e9;
      transition: all 1s;
      color: white;
    }

    /*modal style end..................................................................*/

    /*responsive style start.........................................................*/
    @media (max-width: 1000px) {
      html,
      body {
        width: 100%;
        height: auto;
      }

      main {
        width: 100%;
        height: 100%;
        position: relative;
      }

      .dashboard-main {
        width: 100%;
        height: 100%;
        display: flex;
        justify-content: center;
        flex-wrap: wrap;
      }

      .card1 {
        width: 100%;
        min-width: 300px;
        max-width: 450px;
        height: 270px;
      }

      .card1:nth-child(odd) {
        margin-top: 15%;
        margin-bottom: 15%;
      }

      .modal-content1 {
        background-color: rgba(255, 255, 255, 0.2);
        backdrop-filter: blur(10px);
        border-radius: 7px;
        border: 1px solid rgba(255, 255, 255, 0.3);
        margin: 5% auto;
        padding: 20px;
        width: 80%;
        min-width: 280px;
        height: 70vh;
        min-height: 50vh;
        margin-top: 100px;
      }
    }

    ol {
      list-style-type: decimal;
    }

    /*responsive style end.........................................................*/
  </style>

  <body>
    <jsp:include page="sidenav.jsp"></jsp:include>
    <section id="content">
      <jsp:include page="header.jsp"></jsp:include>
      <main>
        <div class="dashboard-main">
          <div class="card1">
            <div
              style="
                display: flex;
                justify-content: space-between;
                flex-wrap: wrap;
                margin-top: 10px;
              "
            >
              <h3 style="margin-left: 10px; font-size: 18px; font-weight: 800">
                Courses
              </h3>
              <i
                class="fa-solid fa-book"
                style="font-size: 50px; margin-right: 20px; color: #102c57"
              ></i>
            </div>
            <div
              style="margin-left: 20px; font-size: 17px; font-weight: normal"
            >
              <ol>
                <li style="padding: 5px;"><label>JLPT-N5 </label>-<label style="padding-left: 30px;">N5-10</label></li>
                <li style="padding: 5px;"><label>JLPT-N4 </label>-<label style="padding-left: 30px;">N5-12</label></li>
                <li style="padding: 5px;"><label>JLPT-N2 </label>-<label style="padding-left: 30px;">N5-12</label></li>
                <li style="padding: 5px;"><label>JLPT-N2 </label>-<label style="padding-left: 30px;">N5-12</label></li>
              </ol>
            </div>
            <div
              class="btn1"
              style="
                display: flex;
                justify-content: center;
                align-items: center;
                margin-top: 20px;
                cursor: pointer;
              "
              data-type="courses"
            >
              <button class="btn23">View More</button>
            </div>
          </div>
          <div class="card1">
            <div
              style="
                display: flex;
                justify-content: space-between;
                flex-wrap: wrap;
                margin-top: 10px;
              "
            >
              <h3 style="margin-left: 10px; font-size: 18px; font-weight: 800">
                Upcoming Tests
              </h3>
              <i
                class="fa-solid fa-scroll"
                style="font-size: 50px; margin-right: 20px; color: #402E7A"
              ></i>
            </div>
            <div
              style="
                margin-left: 20px;
                margin-top: 10px;
                font-size: 17px;
                font-weight: normal;
                display: flex;
                justify-content: space-between;
                margin-right: 20px;
              "
            >
              <div>
                <h5>Title</h5>
                <ol>
                  <li style="padding: 5px;"><label>JLPT-N5 </label></li>
                  <li style="padding: 5px;"><label>JLPT-N4 </label></li>
                  <li style="padding: 5px;"><label>JLPT-N2 </label></li>
                </ol>
              </div>
              <div>
                <h5>Due Date</h5>
                <ol>
                  <li style="padding: 5px;"><label>JLPT-N5 </label></li>
                  <li style="padding: 5px;"><label>JLPT-N4 </label></li>
                  <li style="padding: 5px;"><label>JLPT-N2 </label></li>
                </ol>
              </div>
            </div>
            <div
              class="btn1"
              style="
                display: flex;
                justify-content: center;
                align-items: center;
                margin-top: 20px;
                cursor: pointer;
              "
              data-type="homework"
            >
              <button class="btn23">View More</button>
            </div>
          </div>
          <div class="card1">
            <div
              style="
                display: flex;
                justify-content: space-between;
                flex-wrap: wrap;
                margin-top: 10px;
              "
            >
              <h3 style="margin-left: 10px; font-size: 18px; font-weight: 800">
                Documents from Admin
              </h3>
              <i
                class="fa-solid fa-file"
                style="font-size: 50px; margin-right: 20px; color: #3572EF"
              ></i>
            </div>
            <div
              style="margin-left: 20px; font-size: 17px; font-weight: normal"
            >
              <ol>
                <li style="padding: 5px;"><label>JLPT-N5 - N5-10 </label></li>
                <li style="padding: 5px;"><label>JLPT-N4 - N5-12 </label></li>
                <li style="padding: 5px;"><label>JLPT-N2 - N5-10 </label></li>
                <li style="padding: 5px;"><label>JLPT-N2 - N5-10 </label></li>
              </ol>
            </div>
            <div
              class="btn1"
              style="
                display: flex;
                justify-content: center;
                align-items: center;
                margin-top: 20px;
                cursor: pointer;
              "
              data-type="tests"
            >
              <button class="btn23">View More</button>
            </div>
          </div>
        </div>

        <div id="modal" class="modal1">
          <div class="modal-content1 fade-in">
            <span class="close-btn" onclick="closeModal()">&times;</span><br />
            <div id="modal-content1"></div>
          </div>
        </div>
      </main>
    </section>
    <script src="js/index.js"></script>

    <script>
      const modal = document.querySelector(".modal1");
      const btns = document.querySelectorAll(".btn1");
      const modalContent = document.getElementById("modal-content1");

      const data = {
        courses: {
          heading: "Courses",
          items: [{ title: "JLPT N5" }, { title: "JLPT N4" }],
        },
        homework: {
          heading: "Upcoming Homework",
          items: [
            { name: "Homework-1", dueDate: "22 April 2024" },
            { name: "Homework-2", dueDate: "23 April 2024" },
            { name: "Homework-3", dueDate: "24 April 2024" },
            { name: "Homework-1", dueDate: "22 April 2024" },
            { name: "Homework-2", dueDate: "23 April 2024" },
            { name: "Homework-3", dueDate: "24 April 2024" },
            { name: "Homework-1", dueDate: "22 April 2024" },
            { name: "Homework-2", dueDate: "23 April 2024" },
            { name: "Homework-3", dueDate: "24 April 2024" },
            { name: "Homework-3", dueDate: "24 April 2024" },
            { name: "Homework-1", dueDate: "22 April 2024" },
            { name: "Homework-2", dueDate: "23 April 2024" },
            { name: "Homework-3", dueDate: "24 April 2024" },
          ],
        },
        tests: {
          heading: "Upcoming Tests",
          items: [
            { name: "Test-1", date: "22 April 2024" },
            { name: "Test-2", date: "23 April 2024" },
          ],
        },
      };

      btns.forEach((btn) => {
        btn.addEventListener("click", () => {
          const type = btn.getAttribute("data-type");
          const contentData = data[type];
          let content = `<h2 class="modal-heading">${contentData.heading}</h2>`;

          if (type === "courses") {
            content =
              content +
              contentData.items
                .map((course) => `<h3>${course.title}</h3>`)
                .join("");
          } else if (type === "homework") {
            const items = contentData.items;
            content =
              content + "<table><tr><th>Title</th><th>Due Date</th></tr>";
            content =
              content +
              items
                .map(
                  (item) =>
                    `<tr><td>${item.name}</td><td>${
                      item.dueDate || item.date
                    }</td></tr>`
                )
                .join("");
            content = content + "</table>";
          } else if (type === "tests") {
            const items = contentData.items;
            content = content + "<table><tr><th>Name</th><th>Date</th></tr>";
            content =
              content +
              items
                .map(
                  (item) =>
                    `<tr><td>${item.name}</td><td>${
                      item.dueDate || item.date
                    }</td></tr>`
                )
                .join("");
            content = content + "</table>";
          }

          modalContent.innerHTML = content;
          modal.style.display = "block";
        });
      });

      function closeModal() {
        modal.style.display = "none";
      }

      window.onclick = function (event) {
        if (event.target === modal) {
          modal.style.display = "none";
        }
      };
    </script>
  </body>
</html>
