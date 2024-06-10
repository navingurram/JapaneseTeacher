<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Notifications & Messages</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
      integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />

<style>
      
      body {
        font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande",
          "Lucida Sans", Arial, sans-serif;
        color: #282c3f;
      }

      .container {
        width: 80%;
        margin: auto;
      }

      i:hover {
        cursor: pointer;
      }

      #container-head {
        width: 100%;
        display: flex;
        justify-content: space-between;
        align-items: center;
      }

      #container-head h1 {
        font-size: 38px;
        font-weight: 900;
      }

      input[type="date"] {
        width: 200px;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
        font-weight: 700;
        color: #888;
      }

      input[type="date"]::-webkit-calendar-picker-indicator {
        cursor: pointer;
      }


    /*table style start..................................................................*/  
      table {
        width: 100%;
        border-collapse: separate;
        border-spacing: 0;
        border: 1px solid #ddd;
        border-radius: 10px;
        overflow: hidden;
        margin-top: 20px;
        box-shadow: 1px 1px 7px 1px rgba(0, 0, 0, 0.1);
      }

      th {
        padding: 25px;
        text-align: center;
        font-size: 1.1rem;
        color: #282c3f;
        font-weight: 900;
      }

      td {
        padding: 15px;
        text-align: center;
      }

      .name{
        font-weight: 900;
      }

      tbody tr:nth-child(odd) {
        background-color: #f7f6fe;
      }

      tr:first-child th:first-child {
        border-top-left-radius: 10px;
      }

      tr:first-child th:last-child {
        border-top-right-radius: 10px;
      }

      tr:last-child td:first-child {
        border-bottom-left-radius: 10px;
      }

      tr:last-child td:last-child {
        border-bottom-right-radius: 10px;
      }

      .profile-span {
        border: 5px solid powderblue;
        margin: auto;
        border-radius: 50%;
        width: 30px;
        height: 30px;
        display: flex;
        justify-content: center;
        align-items: center;
      }

      /* .profile-icon {
      width: 30px;
      height: 30px;
      border-radius: 50%;
    } */

      .profile-img {
        height: 100%;
        border-radius: 50%;
      }

      .view-btn {
        cursor: pointer;
        background-color: transparent;
        border: none;
        font-size: 18px;
      }
      /*table style end..........................................................................*/



     /*modal style start.......................................................................*/ 
      .modal {
        display: none;
        position: fixed;
        z-index: 1;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: rgb(0, 0, 0);
        background-color: rgba(0, 0, 0, 0.4);
        padding-top: 60px;
      }

      .modal-content {
        background-color: #fefefe;
        margin: 5% auto;
        padding: 20px;
        border: 1px solid #888;
        border-radius: 7px;
        width: 80%;
        min-height: 50vh;
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
        animation: fadeIn 0.8s ease;
      }

      @keyframes fadeIn {
        from {
          opacity: 0;
          transform: scale(1.9);
        }

        to {
          opacity: 1;
          transform: scale(1);
        }
      }

      #msg-content {
        text-align: left;
        padding: 20px;
        font-weight: 500;
      }
   /*modal style end........................................................................*/



   /*pagination style start..................................................................*/
      .pagination {
        display: flex;
        justify-content: center;
        margin: 20px 0;
      }

      .pagination button {
        padding: 10px 20px;
        margin: 0 5px;
        border: none;
        border-radius: 4px;
        background-color: #f2f2f2;
        cursor: pointer;
      }

      .pagination button.active {
        background-color: #4caf50;
        color: white;
      }

      .pagination button:hover:not(.active) {
        background-color: #ddd;
      }

      /*pagination style end..........................................................*/
    </style>

  </head>
  <body> 
    <div class="container">
      <div id="container-head">
        <h1>Notifications & Messages</h1>
        <input type="date" />
      </div>

      <table id="message-table">
        <thead>
          <tr>
            <th>Profile</th>
            <th>Name</th>
            <th>Message</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody></tbody>
      </table>

      <div class="pagination">
        <button id="prev-btn" onclick="prevPage()">Prev</button>
        <div id="page-numbers"></div>
        <button id="next-btn" onclick="nextPage()">Next</button>
      </div>
    </div>

    <div id="modal" class="modal">
      <div class="modal-content fade-in">
        <span class="close-btn" onclick="closeModal()">&times;</span><br />
        <p id="msg-content">msg content</p>
      </div>
    </div>
</body>

<script src="js/adminscript.js"></script>
    <script>
    function openModal(fullText) {
        document.getElementById("msg-content").textContent = fullText;
        document.getElementById("modal").style.display = "block";
      }

      function closeModal() {
        document.getElementById("modal").style.display = "none";
      }

      window.onclick = function (event) {
        var modal = document.getElementById("modal");
        if (event.target == modal) {
          modal.style.display = "none";
        }
      };

      


      const messages = [
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magnam",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier Lorem ipsum dolor sit", 
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier Lorem ",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magnam",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magnam",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magnam",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magnam",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magnam",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magnam",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magnam",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier amet consectetur adipisicing elit. Illo voluptatem ab rem expedita excepturi, perferendis vitae beatae voluptas ",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier amet consectetur adipisicing elit. Illo voluptatem ab rem expedita excepturi, perferendis vitae beatae voluptas ",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier amet consectetur adipisicing elit. Illo voluptatem ab rem expedita excepturi, perferendis vitae beatae voluptas ",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier amet consectetur adipisicing elit. Illo voluptatem ab rem expedita excepturi, perferendis vitae beatae voluptas ",
        },
        {
          profile: "fa-solid fa-user",
          name: "ABC Kumar",
          message:
            "As discussed earlier amet consectetur adipisicing elit. Illo voluptatem ab rem expedita excepturi, perferendis vitae beatae voluptas ",
        },
      ];

      const rowsPerPage = 8;
      let currentPage = 1;
      const totalPages = Math.ceil(messages.length / rowsPerPage);


      function displayPage(page) {
        const tableBody = document.querySelector("#message-table tbody");
        tableBody.innerHTML = "";

        const start = (page - 1) * rowsPerPage;
        const end = start + rowsPerPage;
        const pageMessages = messages.slice(start, end);

        pageMessages.forEach((message) => {
          const row = document.createElement("tr");
          row.innerHTML = `
          <td><span class="profile-span"><img src="profile-img.jpg" class="${message.profile} profile-img"></span></td>
          <td class="name">${message.name}</td>
          <td class="cut-text" data-full-text="${message.message}"></td>
          <td><button class="view-btn" onclick="openModal('${message.message}')"><i class="fa-solid fa-eye" style="color: #55a2dd;"></i></button></td>
        `;
          tableBody.appendChild(row);
        });

        const cells = document.querySelectorAll(".cut-text");
        cells.forEach((cell) => {
          const fullText = cell.getAttribute("data-full-text");
          const words = fullText.split(" ");
          if (words.length > 10) {
            const cutText = words.slice(0, 10).join(" ") + "...";
            cell.textContent = cutText;
          } else {
            cell.textContent = fullText;
          }
        });

        updatePagination();
      }

      function updatePagination() {
        const pageNumbers = document.getElementById("page-numbers");
        pageNumbers.innerHTML = "";
        for (let i = 1; i <= totalPages; i++) {
          const button = document.createElement("button");
          button.textContent = i;
          if (i === currentPage) {
            button.classList.add("active");
          }
          button.addEventListener("click", () => goToPage(i));
          pageNumbers.appendChild(button);
        }
      }

      function prevPage() {
        if (currentPage > 1) {
          currentPage--;
          displayPage(currentPage);
        }
      }

      function nextPage() {
        if (currentPage < totalPages) {
          currentPage++;
          displayPage(currentPage);
        }
      }

      function goToPage(page) {
        currentPage = page;
        displayPage(currentPage);
      }

      document.addEventListener("DOMContentLoaded", function () {
        displayPage(currentPage);
      });
    </script>
</html>
