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
                    <td style="font-weight: 500">12th February 2024</td>
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
                    <td style="font-weight: 500">14th February 2024</td>
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
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <button type="button" class="click">click</button>
        <div class="leave-modal-main">
          <div class="modal-top">
            <p>Kindly includes details of the Makeover Class here</p>
          </div>
          <div class="modal-bottom">
            <button type="button" class="btn-yes">Yes</button>
            <button type="button" class="btn-cancel">Cancel</button>
          </div>
        </div>
      </main>
    </section>
    <script src="js/adminscript.js"></script>

    <script>
      const clickBtn = document.querySelector(".click");
      const modal = document.querySelector(".leave-modal-main");
      const cancelBtn = document.querySelector(".btn-cancel");

      clickBtn.addEventListener("click", () => {
        modal.classList.add("show");
        setTimeout(() => {
          modal.classList.add("visible");
        }, 10);
      });

      cancelBtn.addEventListener("click", () => {
        closeModal();
      });

      window.addEventListener("click", (event) => {
        if (event.target === modal) {
          closeModal();
        }
      });

      function closeModal() {
        modal.classList.remove("visible");
        setTimeout(() => {
          modal.classList.remove("show");
        }, 300);
      }
    </script>
  </body>
</html>
