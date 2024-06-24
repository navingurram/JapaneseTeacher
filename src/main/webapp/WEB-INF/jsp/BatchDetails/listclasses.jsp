<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
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
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
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
        overflow: scroll;
        padding: 20px;
        cursor: pointer;
        position: relative;
        z-index: 1;
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

      .profile1 {
        position: relative;
      }

      .profile1 .profimg1 {
        width: 36px;
        height: 36px;
        border-radius: 50%;
        object-fit: cover;
        cursor: pointer;
      }

      .profile1 .profile-link1 {
        position: absolute;
        top: calc(100% + 10px);
        right: 0;
        background: lightcoral;
        padding: 10px 0;
        box-shadow: 4px 4px 16px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        width: 200px;
        opacity: 0;
        pointer-events: none;
        transition: all 0.8s ease;
        z-index: 10;
      }

      .profile1 .profile-link1.show1 {
        opacity: 1;
        pointer-events: visible;
        top: 100%;
      }

      .profile1 .profile-link1 a {
        padding: 10px 16px;
        display: flex;
        grid-gap: 25px;
        font-size: 14px;
        color: #000;
        align-items: center;
        transition: all 0.8s ease;
      }

      .profile1 .profile-link1 a:hover {
        background: #55d0ff;
      }

      .dropdown-menu {
        position: absolute;
        z-index: 10;
      }
    </style>
  </head>
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
            LIST OF CLASSES
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
                      SrNo
                    </th>
                    <th style="font-weight: 800; color: white">Course</th>
                    <th style="font-weight: 800; color: white">Batch Name</th>
                    <th style="font-weight: 800; color: white">
                      Batch Start Date
                    </th>
                    <th style="font-weight: 800; color: white">
                      Batch End Date
                    </th>
                    <th style="font-weight: 800; color: white">Student List</th>
                    <th style="font-weight: 800; color: white">Status</th>
                    <th style="font-weight: 800; color: white">Attendance</th>
                    <th style="font-weight: 800; color: white; width: 500px">
                      More Details
                    </th>
                  </tr>
                </thead>
                <tbody class="tablebody">   
                 <tr>
                    <td style="font-weight: 500">1</td>
                    <td style="font-weight: 500">JLPT N5</td>
                    <td style="font-weight: 600">
                      <a style="color: #55d0ff" href="viewDetails"> N5-10</a>
                    </td>
                    <td style="font-weight: 500">01 April 2024</td>
                    <td style="font-weight: 500">30 May 2024</td>
                    <td style="font-weight: 500">10</td>
                    <td style="font-weight: 500">Ongoing</td>
                    <td style="font-weight: 500">
                      <a href="attendance">
                        <button
                          style="
                            cursor: pointer;
                            background-color: #55d0ff;
                            padding: 7px;
                            color: white;
                            width: 150px;
                            border-radius: 50px;
                            outline: none;
                            border: none;
                          "
                        >
                          Take Attendance
                        </button>
                      </a>
                    </td>
                    <td style="width: 500px; position: relative">
                      <div class="filter dropdown-center text-center">
                        <a
                          href="#"
                          class="icon"
                          style="color: black"
                          data-bs-toggle="dropdown"
                        >
                          <i class="fa-solid fa-ellipsis-vertical"></i>
                        </a>
                        <ul class="dropdown-menu">
                          <li>
                            <a href="viewDetails" class="dropdown-item">View Batch Details</a>
                          </li>
                          <li>
                            <a href="attendance" class="dropdown-item">Attendance List</a>
                          </li>
                        </ul>
                      </div>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </main>
    </section>
    <script src="js/adminscript.js"></script>
    <script>
      const profile1 = document.querySelector(".profile1");
      const imgProf1 = profile1.querySelector(".profimg1");
      const dropdownProfile1 = profile1.querySelector(".profile-link1");

      imgProf1.addEventListener("click", function (e) {
        e.stopPropagation();
        dropdownProfile1.classList.toggle("show1");
        console.log(dropdownProfile1);
      });
    </script>
    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
      integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
      integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
