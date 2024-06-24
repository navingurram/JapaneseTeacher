<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Working Hours</title>
        <link rel="stylesheet" href="css/admin.css" />
        <link rel="stylesheet" href="css/admin.css">
        <script src="https://kit.fontawesome.com/ae73087723.js" crossorigin="anonymous"></script>
    </head>
    <style>
        .Container {
            width: 100%;
            height: 100vh;
            margin-top: 50px
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
      color: white;
    }

    .tablebody tr>td {
       padding: 1rem 1.8rem;
       font-weight: 500;
       font-size: 15px;
    }

    .from,
    .to {
      padding: 0;
      border-radius: 5px;
      width: 150px;
      height: 30px;
      border: none;
      outline: none;
      font-size: 18px;
      font-weight: 900;
    }

    .highlight {
      background-color: #d3f8d3;
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
                    <h1 style="margin-bottom: 30px; text-align: center; font-weight: 600; font-size: 30px">MAKE OVER CLASSES
                         </h1>
                    <div style="display: flex; justify-content: space-between; flex-wrap: wrap;">
                        <div style="margin-left: 20px;">
                            <h6 style="display: inline-block; font-size: 14px">Records</h6>
                            <select style="padding: 10px; width: 70px; border-radius: 7px; height: 40px">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                            </select>
                        </div>
                        <div style="margin-right: 20px;">
                            <div style="display: inline;">
                                <input type="text" placeholder="Search"
                                    style="background: none; border: none; border-bottom: 2px solid grey; padding: 12px;">
                                <span class="fa-solid fa-magnifying-glass iconmag"></span>
                            </div>
                        </div>
                    </div>
                    <div class='TableContainer'>
                        <div class="tablestyle">
                            <table class="MainTable">
      <thead class="tableheading">
        <tr>
          <th rowspan="2" style="width: 100px; font-weight: 800; color: white;">Days</th>
          <th rowspan="2" style="font-weight: 800; color: white;">Date</th>
          <th colspan="2" style="font-weight: 800; color: white; text-align: center;">Makeover Timing</th>
          <th rowspan="2" style="font-weight: 800; color: white;">Total Timing</th>
        </tr>
        <tr>
          <th style="font-weight: 800; color: white; text-align: center;">from</th>
          <th style="font-weight: 800; color: white; text-align: center;">to</th>
        </tr>
      </thead>
      <tbody class="tablebody">
        <tr class="rows">
          <td style="color: #55d0ff;">Thursday</td>
          <td style="color: #55d0ff;">15 Feb 2024</td>
          <td style="text-align: center"><input type="text" class="from" placeholder="00:00" style="text-align: center; border: 1px solid black"></td>
          <td style="text-align: center"><input type="text" class="to" placeholder="00:00" style="text-align: center; border: 1px solid black"></td>
          <td class="total-time">--</td>
        </tr>
        <tr class="rows">
          <td>Friday</td>
          <td>16 Feb 2024</td>
          <td style="text-align: center"><input type="text" class="from" placeholder="00:00" style="text-align: center; border: 1px solid black"></td>
          <td style="text-align: center"><input type="text" class="to" placeholder="00:00" style="text-align: center; border: 1px solid black"></td>
          <td class="total-time">--</td>
        </tr>
        <tr class="rows">
          <td style="color: #55d0ff;">Saturday</td>
          <td style="color: #55d0ff;">17 Feb 2024</td>
          <td style="text-align: center"><input type="text" class="from" placeholder="00:00" style="text-align: center; border: 1px solid black"></td>
          <td style="text-align: center"><input type="text" class="to" placeholder="00:00" style="text-align: center; border: 1px solid black"></td>
          <td class="total-time">--</td>
        </tr>
        <tr class="rows">
          <td>Monday</td>
          <td>19 Feb 2024</td>
          <td style="text-align: center"><input type="text" class="from" placeholder="00:00" style="text-align: center; border: 1px solid black"></td>
          <td style="text-align: center"><input type="text" class="to" placeholder="00:00" style="text-align: center; border: 1px solid black"></td>
          <td class="total-time">--</td>
        </tr>
        <tr class="rows">
          <td style="color: #55d0ff;">Tuesday</td>
          <td style="color: #55d0ff;">20 Feb 2024</td>
          <td style="text-align: center"><input type="text" class="from" placeholder="00:00" style="text-align: center; border: 1px solid black"></td>
          <td style="text-align: center"><input type="text" class="to" placeholder="00:00" style="text-align: center; border: 1px solid black"></td>
          <td class="total-time">--</td>
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
    const from_Time_ele = document.querySelectorAll('.from');
    const to_Time_ele = document.querySelectorAll('.to');   

    function convertTo12HourFormat(time) {
      const [hour, minute] = time.split(':');
      let hour12 = hour % 12 || 12;
      const ampm = hour < 12 ? 'am' : 'pm';
      return `${hour12}:${minute} ${ampm}`;
    }

    function updateTotalTime() {
      const rows = document.querySelectorAll('.rows');
      rows.forEach(row => {
        const from = row.querySelector('.from');
        const to = row.querySelector('.to');
        const totalTimeCell = row.querySelector('.total-time');
        const fromTime = from.value;
        const toTime = to.value;
        if (fromTime && toTime) {
          const fromTimeFormatted = convertTo12HourFormat(fromTime);
          const toTimeFormatted = convertTo12HourFormat(toTime);
          totalTimeCell.textContent = `${fromTimeFormatted} to ${toTimeFormatted}`;
          row.classList.add('highlight');
        } else {
          totalTimeCell.textContent = '--';
          row.classList.remove('highlight');
        }
      });
    }

    from_Time_ele.forEach((from) => {
      from.addEventListener('focus', () => {
        from.type = 'time';
      });
      from.addEventListener('change', updateTotalTime);
    });

    to_Time_ele.forEach((to) => {
      to.addEventListener('focus', () => {
        to.type = 'time';
      });
      to.addEventListener('change', updateTotalTime);
    });

  </script>

    </body>

    </html>