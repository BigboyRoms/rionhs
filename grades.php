<?php include("layoutsWebsite/head.php"); ?>
<?php include("layoutsWebsite/header.php"); ?>
<?php include("layoutsWebsite/menu.php"); ?>



<style>
    #preload-spinner {
        text-align: center;
        display: none;
    }

    #preload-spinner .spinner-border {
        width: 3rem;
        height: 3rem;
        margin-left: auto;
        margin-right: auto;
    }

    #preload-spinner span {
        font-size: 1.2rem;
        margin-top: 10px;
    }
</style>

<!-- Home -->

<div class="home">
    <!-- Background image artist https://unsplash.com/@thepootphotographer -->
    <div class="home_background parallax_background parallax-window" data-parallax="scroll"
        data-image-src="assets/images/pic8.jpg" data-speed="0.8"></div>
    <div class="home_container">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="home_content text-center">
                        <div class="home_title"></div>
                        <!-- <div class="breadcrumbs">
                            <ul>
                                <li><a href="index.php">Home</a></li>
                                <li style="color: maroon">Contact</li>
                            </ul>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<br><br>
<!-- STUDENT GRADES -->

<div id="preload-spinner" style="display: none;">
    <!-- Spinner -->
    <div>
        <h2 style="color: #FE9900;">Please wait a few seconds...</h2>
        <div class="spinner-border" role="status">
            <i class="fa fa-spinner fa-spin fa-4x" style="color: maroon;"></i>
            <span class="visually-hidden"></span>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="mt-5 mb-4" style="color: maroon;">Student Grades</h1>
            <form id="formBodyData">
                <input type="text" name="std_lrn" id="std_lrn" placeholder="Enter LRN">
                <select id="year" name="year" style="cursor: pointer;">
                    <option value="">Select School Year</option>
                </select>

                <button type="button" name="addNew" class="btn btn-dark" id="btn-save">Go</button>

            </form>


            <!-- <div class="form-group">
                <label for="inputAddress">School Year</label>

            </div> -->
            <!-- Table for displaying student grades with image -->
            <div class="table-responsive" style="color: black;">
                <table border="1" class="w-100 mt-4 text-center">
                    <thead style="font-size: 2rem;">
                        <tr>
                            <th scope="col">LRN</th>
                            <th scope="col">Name</th>
                            <th scope="col">Section</th>
                            <th scope="col">Grading</th>
                            <th scope="col">School Year</th>
                            <th scope="col">Report Card</th>
                        </tr>
                    </thead>
                    <tbody id="rioMainTable">
                        <!-- <tr>
                            <th scope="row" id="lrn" >

                            </th>
                            <td id="lrn">

                            </td>
                            <td id="lrn">

                            </td>
                            <td id="pic">

                                
                            </td>
                        </tr> -->
                    </tbody>
                </table>
            </div>

            <div class="modal fade" id="modalMain" tabindex="-1" role="dialog" aria-labelledby="modalMainLabel"
                aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="modalMainLabel">Email code verification</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form id="formBodyData">
                                <div class="form-group">
                                    <label for="inputAddress">Enter Code here</label>
                                    <input type="text" class="form-control" id="emailcode" name="emailcode">
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                    <button type="button" name="addNew" class="btn btn-info"
                                        id="btn-save1">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <div id="imageModal">
                <!-- Button trigger modal -->
                <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                    Launch demo modal
                </button> -->

                <!-- Modal -->
                <div class="modal fade" id="modalContent" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Report Card</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body" id="modal_body">

                            </div>
                            <!-- <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary">Save changes</button>
                            </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $.get({
        url: "admin/schoolyears/schoolyearsCrud.php",
        data: { getData: "getData" },
        success: function (data) {
            let newData = JSON.parse(data);
            newData.forEach((year, i) => {
                let opList = $("#year");
                $("<option>", {
                    value: year.schoolyear_from + " " + year.schoolyear_to,
                    html: year.schoolyear_from + " " + year.schoolyear_to,
                }).appendTo(opList);
            });
        },
    });



    $("#btn-save").click(function () {
        $("#preload-spinner").show();

        let form = {
            lrn: $("#std_lrn").val(),
            year: $("#year").val(),
            checkStud: "checkStud",
        };
        $.post({
            url: "checkStudentCrud.php",
            data: form,
            success: function (data) {

                let newData = JSON.parse(data);

                if (newData.length < 1) {
                    alert("Empty Table");
                } else {
                    function populateTable() {
                        let table = $("#rioMainTable");
                        newData.forEach((student, i) => {
                            let tableRow = $("<tr>", { id: newData.permission_id });
                            $("<td>", {
                                class: "text-wrap",
                                html: student.student_LRN,
                            }).appendTo(tableRow);

                            $("<td>", {
                                class: "text-wrap",
                                html: student.student_Lname +
                                    " " +
                                    student.student_Fname +
                                    " " +
                                    student.student_Mname,
                            }).appendTo(tableRow);

                            $("<td>", {
                                class: "text-wrap",
                                html:
                                    student.strand_acronym + " " + student.section_name,
                            }).appendTo(tableRow);

                            $("<td>", {
                                class: "text-wrap",
                                html:
                                    student.grading,
                            }).appendTo(tableRow);

                            $("<td>", {
                                class: "text-wrap",
                                html:
                                    student.year,
                            }).appendTo(tableRow);



                            var openModal = $("<td>", {
                                class: "text-wrap",

                            }).appendTo(tableRow);

                            var buttonColumn = $("<td>", {
                                class: "text-wrap",
                            }).appendTo(tableRow);

                            var viewReportButton = $("<button>", {
                                class: "open_modal", // Using a class instead of an ID for multiple buttons
                                html: "VIEW REPORT CARD",
                                style: "cursor: pointer;",
                                'data-student': student.student, // Store the student ID or relevant data
                                'data-grades': student.grades, // Store the grades or relevant data
                            }).appendTo(buttonColumn);

                            viewReportButton.click(function () {
                                var studentId = $(this).data('student');
                                var grades = $(this).data('grades');

                                var modalImg = $("<img>", {
                                    class: "img-thumbnail w-100",
                                    style: "height: 15rem; background-size: cover;",
                                    src: `assets/images/grades/${studentId}/${grades}`,
                                    onerror: "this.onerror=null;this.src='assets/img/RCNHSLOGO.jpg';",
                                });

                                // Show the modal with the specific report card image
                                $("#modal_body").empty().append(modalImg);
                                $("#modalContent").modal("show");
                            });

                            // buttons action

                            table.append(tableRow);
                        });
                    }


                    const cipher = (salt) => {
                        const textToChars = (text) => text.split("").map((c) => c.charCodeAt(0));
                        const byteHex = (n) => ("0" + Number(n).toString(16)).substr(-2);
                        const applySaltToChar = (code) =>
                            textToChars(salt).reduce((a, b) => a ^ b, code);

                        return (text) =>
                            text
                                .split("")
                                .map(textToChars)
                                .map(applySaltToChar)
                                .map(byteHex)
                                .join("");
                    };
                    const myCipher = cipher("LPBNHS");


                    function showModal(student_id) {
                        $("#modalMain").modal("show");


                        $("#btn-save1").click(function () {
                            let form2 = {
                                student_id: student_id,
                                emailcode: myCipher($("#emailcode").val()),
                                checkStudCode: "checkStudCode",
                            };
                            $.post({
                                url: "checkStudentCrud.php",
                                data: form2,
                                dataType: "json",
                                success: function (data) {
                                    if (data.length != 0) {
                                        // alert("Successful");
                                        $("#formBodyData").trigger("reset");
                                        $("#modalMain").modal("hide");
                                        $("#rioMainTable").empty();
                                        populateTable();
                                    }
                                    else {
                                        alert("wrong code");
                                    }








                                }

                            });


                        });

                    }



                    function generateRandomString(length) {
                        const characters =
                            "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
                        let randomString = "";

                        if (length < 8) {
                            length = 8;
                        }

                        for (let i = 0; i < length; i++) {
                            const randomIndex = Math.floor(Math.random() * characters.length);
                            randomString += characters.charAt(randomIndex);
                        }

                        return randomString;
                    }
                    var updateCode = true;

                    newData.forEach((student, i) => {
                        let student_id = student.student_id;
                        let student_email = student.student_email;
                        if (updateCode == true) {
                            updateCode = false;
                            const randomString = generateRandomString(8);
                            $password = myCipher(randomString);
                            let form2 = {
                                student_id: student_id,
                                code: $password,
                                code2: randomString,
                                student_email: student_email,
                                updateStudent: "updateStudent",
                            };
                            $.post({
                                url: "checkStudentCrud.php",
                                data: form2,
                                dataType: "json",
                                success: function (data) {
                                    if (data.success === true) {
                                        showModal(student_id);

                                    }


                                }

                            });


                        }



                    });

                }
                setTimeout(function () {
                    $("#preload-spinner").hide();
                }, 3700);
            }
        });
    });

</script>


<br><br>

<?php include("layoutsWebsite/footer.php"); ?>