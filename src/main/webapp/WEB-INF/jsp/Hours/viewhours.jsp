<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Update Batch</title>
        <link rel="stylesheet" href="css/admin.css">
        <script src="https://kit.fontawesome.com/ae73087723.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    </head>
    <style>
        .Container {
            width: 100%;
            height: 100vh;
        }

        .container2 {
            display: grid;
            grid-template-columns: 1fr 1fr 1fr 1fr;
            grid-gap: 30px;
        }

        @media screen and (max-width: 1000px) {
            .container2 {
                grid-template-columns: 1fr;
            }
        }

        .container3 {
            display: grid;
            grid-template-columns: 1fr 1fr;
            grid-gap: 30px;
        }

        .TableContainer {
            margin-top: 20px;
            background: #fff;
            border-radius: 7px;
            border: 1.5px solid #e8e8e8;
            padding: 20px;
            cursor: pointer;
        }

        .MainTable {
            border-collapse: collapse;
            text-align: center;
            overflow: hidden;
            cursor: pointer;
            width: 500px;
            text-align: center;
        }

        .tableheading {
            border-bottom: 1px solid rgb(208, 208, 208);
            background-color: #36454f;
            text-align: center;
        }

        .tableheading th {
            padding: 1rem;
            text-transform: capitalize;
            letter-spacing: 0.1rem;
            font-size: 0.9rem;
            font-weight: 600;
            color: rgb(56, 56, 56);
        }

        .tablebody tr {
            font-weight: 500;
            font-size: 13.5px;
            text-align: center;
        }

        tbody tr:nth-child(even) {
            background: white
        }

        tbody tr:nth-child(odd) {
            background: #0000000b
        }
    </style>

    <body>
        <jsp:include page="../sidenav.jsp"></jsp:include>
        <section id="content">
            <jsp:include page="../header.jsp"></jsp:include>
            <main>
                <div>
                    <h1 style="margin-bottom: 30px; text-align: center; font-weight: 600; font-size: 30px">VIEW
                        WORKING HOURS</h1>
                    <div class="container2" style="margin-left: 20px; margin-right: 20px">
                        <input type="hidden" id="id" name="id">
                        <div style="display: flex; flex-direction: column;">
                            <label style="font-size: 13px; font-weight: 500; margin-bottom: 15px">
                                Batch Name</label> <label id="batchName" name="batchName" type="text"
                                required="required"
                                style="padding: 16px; border-radius: 5px; background-color: none; border: none; border-bottom: 1px solid #bfb8b8">NPT-5</label>
                        </div>
                        <div style="display: flex; flex-direction: column;">
                            <label style="font-size: 13px; font-weight: 500; margin-bottom: 7px">
                                Total Classes</label> <label id="teacher" name="teacher" type="text"
                                required="required"
                                style="padding: 16px; border-radius: 5px; background-color: none; border: none; border-bottom: 1px solid #bfb8b8">20</label>
                        </div>
                        <div style="display: flex; flex-direction: column;">
                            <label style="font-size: 13px; font-weight: 500; margin-bottom: 7px">
                                Total Classes Taking</label> <label id="batchFees" name="batchFees" type="text" required="required"
                                style="padding: 16px; border-radius: 5px; background-color: none; border: none; border-bottom: 1px solid #bfb8b8">15</label>
                        </div>
                        <div style="display: flex; flex-direction: column;">
                            <label style="font-size: 13px; font-weight: 500; margin-bottom: 7px">Total Missed Classes
                                </label>
                            <label id="zoomDetails" name="zoomDetails" type="text" rows="6" required="required"
                                style="padding: 16px; border-radius: 5px; background-color: none; border: none; border-bottom: 1px solid #bfb8b8">5</label>
                            .
                        </div>
                        <div style="display: flex; flex-direction: column;">
                            <label style="font-size: 13px; font-weight: 500; margin-bottom: 7px">Makeover Classes
                                </label>
                            <label id="zoomDetails" name="zoomDetails" type="text" rows="6" required="required"
                                style="padding: 16px; border-radius: 5px; background-color: none; border: none; border-bottom: 1px solid #bfb8b8">5</label>
                            .
                        </div>
                        <div style="display: flex; flex-direction: column;">
                            <label style="font-size: 13px; font-weight: 500; margin-bottom: 7px">Total Hours
                                </label>
                            <label id="zoomDetails" name="zoomDetails" type="text" rows="6" required="required"
                                style="padding: 16px; border-radius: 5px; background-color: none; border: none; border-bottom: 1px solid #bfb8b8">50</label>
                            .
                        </div>
                    </div>
                </div>
            </main>
        </section>
        <script src="js/adminscript.js"></script>
       
    </body>

    </html>