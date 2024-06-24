<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Manage Students</title>
    <link rel="stylesheet" href="css/admin.css" />
    <link rel="stylesheet" href="css/admin.css" />
    <script
      src="https://kit.fontawesome.com/ae73087723.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <style>
    .Container {
      width: 100%;
      height: 100vh;
      margin-top: 50px;
    }

    .container2 {
      display: grid;
      grid-template-columns: 1fr 1fr 1fr 1fr;
    }

    .TableContainer {
      margin-top: 20px;
      background: #fff;
      border-radius: 7px;
      border: 1.5px solid #e8e8e8;
      padding: 20px;
      cursor: pointer;
      overflow: scroll;
    }

    .MainTable {
      border-collapse: collapse;
      text-align: center;
      overflow: hidden;
      cursor: pointer;
      width: 100%;
    }

    .tableheading {
      border-bottom: 1px solid rgb(208, 208, 208);
      background-color: #36454f;
    }

    .tableheading th {
      padding: 1rem;
      text-transform: capitalize;
      letter-spacing: 0.1rem;
      font-size: 0.9rem;
      font-weight: 600;
      color: rgb(56, 56, 56);
    }

    .tablebody {
      padding: 1rem 1.8rem;
      font-weight: 500;
      font-size: 13.5px;
    }

    .iconmag {
      position: absolute;
      top: 12.5rem;
      right: 2rem;
    }

    .popup {
      background-color: white;
      max-width: 400px;
      min-width: 275px;
      max-height: 40%;
      min-height: 35%;
      position: fixed;
      top: 35%;
      left: 40%;
      border-radius: 5px;
      /* display: flex;
      justify-content: center;
      align-items: center; */
      display: none;
      box-shadow: 1px 1px 5px 2px rgba(0, 0, 0, 0.1);
      z-index: 999;
    }

    .popup-content {
      height: 250px;
      width: 500px;
      background-color: white;
      padding: 20px;
      border-radius: 5px;
      position: relative;
    }

    .close {
      border-radius: 50%;
      position: absolute;
      left: 380px;
      top: 5px;
    }

    .popup.flex {
      transform: translate(-50%, -50%) scale(1);
      opacity: 1;
    }

    .first-modal-main {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%) scale(0.5);
      opacity: 0;
      display: none;
      transition: transform 0.9s ease, opacity 0.3s ease;
      max-width: 400px;
      min-width: 275px;
      max-height: 40%;
      min-height: 35%;
      border-radius: 5px;
      z-index: 2; /* Second modal */
      box-shadow: 1px 1px 5px 2px rgba(0, 0, 0, 0.1);
      background-color: white;
    }

    .first-modal-main.show {
      display: block;
    }

    .first-modal-main.visible {
      transform: translate(-50%, -50%) scale(1);
      opacity: 1;
    }

    .first-modal-top {
      width: 100%;
      height: 7rem;
      text-align: center;
      padding: 5%;
      margin-top: 5%;
    }

    .first-modal-top p {
      font-size: 1.3rem;
      font-weight: 700;
    }

    .first-modal-bottom {
      width: 100%;
      height: 10rem;
      padding: 10% 1%;
      display: flex;
      justify-content: space-evenly;
      align-items: center;
    }

    .btn-yes,
    .btn-cancel {
      width: 25%;
      padding: 2% 0;
      margin-top: 7%;
      cursor: pointer;
      border: none;
      background-color: #282c3f;
      border-radius: 5px;
      font-size: 1.1rem;
      font-weight: 700;
      color: whitesmoke;
      transition: background-color 0.4s, box-shadow 0.5s, transform 0.6s;
    }

    .btn-yes:hover,
    .btn-cancel:hover {
      background-color: #444;
      box-shadow: 1px 0px 5px 3px rgba(0, 0, 0, 0.1);
      transform: translateY(-3px);
    }

    .second-modal-main {
      width: 50%;
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%) scale(0.5);
      opacity: 0;
      display: none;
      transition: transform 0.9s ease, opacity 0.3s ease;
      height: 50vh;
      border-radius: 4px;
      box-shadow: 1px 1px 5px 2px rgba(0, 0, 0, 0.1);
      z-index: 3;
      background-color: white;
    }

    .second-modal-main.show {
      display: block;
    }

    .second-modal-main.visible {
      transform: translate(-50%, -50%) scale(1);
      opacity: 1;
    }

    .second-modal-content {
      width: 100%;
      height: 100%;
      padding: 5px 10px;
    }

    .second-modal-close-button {
      width: 100%;
      display: flex;
      justify-content: flex-end;
    }

    .close-btn {
      color: #aaa;
      float: right;
      font-size: 28px;
      font-weight: bold;
      cursor: pointer;
    }

    .close-btn:hover,
    .close-btn:focus {
      color: black;
      text-decoration: none;
      cursor: pointer;
    }

    @media (max-width: 700px) {
      main > button {
        width: 80px;
      }

      .second-modal-main {
        width: 65%;
      }
    }

    
  </style>

  <body>
    <jsp:include page="../sidenav.jsp"></jsp:include>
    <section id="content">
      <jsp:include page="../header.jsp"></jsp:include>
      <main>
        <div class="Container">
          <h1
            style="
              margin-bottom: 30px;
              text-align: center;
              font-weight: 600;
              font-size: 30px;
            "
          >
            ATTENDANCE OF STUDENTS
          </h1>
          <div
            style="
              display: flex;
              justify-content: space-between;
              flex-wrap: wrap;
            "
          >
            <div style="margin-left: 20px">
              <h6 style="display: inline-block; font-size: 14px">Records</h6>
              <select
                style="
                  padding: 10px;
                  width: 70px;
                  border-radius: 7px;
                  height: 40px;
                "
              >
                <option>1</option>
                <option>2</option>
                <option>3</option>
              </select>
            </div>
            <div style="margin-right: 20px">
              <div style="display: inline">
                <input
                  type="text"
                  placeholder="Search"
                  style="
                    background: none;
                    border: none;
                    border-bottom: 2px solid grey;
                    padding: 12px;
                  "
                />
                <span class="fa-solid fa-magnifying-glass iconmag"></span>
              </div>
            </div>
          </div>
          <div class="TableContainer">
            <div class="tablestyle">
              <table class="MainTable">
                <thead class="tableheading">
                  <tr>
                    <th style="width: 100px; font-weight: 800; color: white">
                      Date
                    </th>
                    <th style="font-weight: 800; color: white">Sr No</th>
                    <th style="font-weight: 800; color: white">
                      Active/Inactive
                    </th>
                    <th style="font-weight: 800; color: white">
                      Student Type Date
                    </th>
                    <th style="font-weight: 800; color: white">Student Name</th>
                    <th style="font-weight: 800; color: white">Time</th>
                    <th style="font-weight: 800; color: white">Status</th>
                    <th style="font-weight: 800; color: white">
                      Attendance Taken
                    </th>
                  </tr>
                </thead>
                <tbody class="tablebody">
                  <tr>
                    <td style="font-weight: 500; color: #55d0ff" class="click">
                      12th February 2024
                    </td>
                    <td style="font-weight: 500">1</td>
                    <td style="font-weight: 500">Active</td>
                    <td style="font-weight: 500">Rugular</td>
                    <td style="font-weight: 500">Student 1</td>
                    <td style="font-weight: 500">8:00 PM to 9:00 pm</td>
                    <td style="font-weight: 500">
                      <select
                        id=""
                        name=""
                        style="
                          padding: 13px;
                          border-radius: 5px;
                          border-color: #bfb8b8;
                        "
                      >
                        <option>Select</option>
                        <option>Pending</option>
                        <option>Present</option>
                        <option>Absent</option>
                      </select>
                    </td>
                    <td style="font-weight: 500; text-align: center">
                      <a style="color: black" href="viewDetails"
                        ><i
                          style="
                            border-radius: 10px;
                            font-size: 30px;
                            color: greenyellow;
                          "
                          class="fa-solid fa-check"
                        ></i
                      ></a>
                    </td>
                  </tr>
                  <tr>
                    <td style="font-weight: 500; color: #55d0ff">
                      14th February 2024
                    </td>
                    <td style="font-weight: 500">1</td>
                    <td style="font-weight: 500">Active</td>
                    <td style="font-weight: 500">Rugular</td>
                    <td style="font-weight: 500">Student 1</td>
                    <td style="font-weight: 500">8:00 PM to 9:00 pm</td>
                    <td style="font-weight: 500">
                      <select
                        id=""
                        name=""
                        style="
                          padding: 13px;
                          border-radius: 5px;
                          border-color: #bfb8b8;
                        "
                      >
                        <option>Select</option>
                        <option>Pending</option>
                        <option>Present</option>
                        <option>Absent</option>
                      </select>
                    </td>
                    <td style="font-weight: 500; text-align: center">
                      <a style="color: black" href="viewDetails"
                        ><i
                          style="
                            border-radius: 10px;
                            font-size: 30px;
                            color: red;
                          "
                          class="fa-solid fa-xmark"
                        ></i
                      ></a>
                    </td>
                  </tr>
                  <tr style="text-align: center;">
                    <td style="font-weight: 500; color: #55d0ff">
                      14th February 2024
                    </td>
                    <td style="font-weight: 500">-</td>
                    <td style="font-weight: 500">-</td>
                    <td style="font-weight: 500">-</td>
                    <td style="font-weight: 500">-</td>
                    <td style="font-weight: 500">-</td>  
                    <td style="font-weight: 500; text-align: center">
                      <h3 style="color: red">Leave</h3>
                    </td>
                    <td>-</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <div class="first-modal-main">
          <div class="first-modal-top">
            <p>Do you want leave?</p>
          </div>
          <div class="first-modal-bottom">
            <button type="button" class="btn-yes">Yes</button>
            <button type="button" class="btn-cancel">Cancel</button>
          </div>
        </div>

        <div class="second-modal-main">
          <div class="first-modal-top">
            <p>Kindly includes details of the Makeover Class here</p>
            <div class="first-modal-bottom">
              <button type="button" class="btn-yes">
                <a href="makeover" style="color: white">Yes</a>
              </button>
              <button type="button" class="btn-cancel">Cancel</button>
            </div>
          </div>
        </div>
      </main>
    </section>
    <script src="js/index.js"></script>

    <script>
      const clickBtn = document.querySelector(".click");
      const firstModal = document.querySelector(".first-modal-main");
      const cancelBtn = document.querySelector(".btn-cancel");
      const yesBtn = document.querySelector(".btn-yes");
      const secondModal = document.querySelector(".second-modal-main");
      const closeBtn = document.querySelector(".close-btn");

      const showModal = (modal) => {
        modal.classList.add("show");
        setTimeout(() => {
          modal.classList.add("visible");
        }, 10);
      };

      const closeModal = (modal) => {
        modal.classList.remove("visible");
        setTimeout(() => {
          modal.classList.remove("show");
        }, 300);
      };

      clickBtn.addEventListener("click", () => showModal(firstModal));

      cancelBtn.addEventListener("click", () => closeModal(firstModal));

      yesBtn.addEventListener("click", () => {
        closeModal(firstModal);
        setTimeout(() => showModal(secondModal), 300);
      });

      closeBtn.addEventListener("click", () => closeModal(secondModal));

      window.addEventListener("click", (event) => {
        if (!firstModal.contains(event.target) && event.target !== clickBtn) {
          closeModal(firstModal);
        }
        if (!secondModal.contains(event.target) && event.target !== yesBtn) {
          closeModal(secondModal);
        }
      });

    </script>
  </body>
</html>
