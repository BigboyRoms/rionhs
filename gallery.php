<?php include("layoutsWebsite/head.php"); ?>
<?php include("layoutsWebsite/header.php"); ?>
<?php include("layoutsWebsite/menu.php"); ?>


<style>
  /* Add custom CSS styles here */
  .hidden {
    display: none;
  }

  .custom-card {
    border: 1px solid #ddd;
    border-radius: 5px;
    transition: transform 0.2s ease-in-out;
    height: 15rem;
  }

  .custom-card:hover {
    transform: scale(1.05);
    transition: transform 0.3s ease-in-out;
    background-color: #FE9900;
  }

  .cat-card {
    background-size: cover;
    opacity: 0.8;
    height: 4rem;
    border: 2px solid #000;
    cursor: pointer;
  }

  /* CSS code */
  .cat-card.active {
    background-color: #FE9900;
  }

  .drop {
    cursor: pointer;
  }
</style>

<div class="home">
  <!-- Background image artist https://unsplash.com/@thepootphotographer -->
  <div class="home_background parallax_background parallax-window" data-parallax="scroll"
    data-image-src="assets/images/pic8.jpg" data-speed="0.8"></div>
  <div class="home_container">
    <div class="container">
      <div class="row">
        <div class="col">
          <div class="home_content text-center">
            <!-- <div class="home_title">GALLERY</div> -->
            <!-- <div class="breadcrumbs">
              <ul>
                <li><a href="index.php">Home</a></li>
                <li style="color: maroon">Gallery</li>
              </ul>
            </div> -->
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<br>
<div class="container mt-5">
  <div class="row">
    <div class="jumbotron mx-auto">
      <h1 class="gallery" style="color: maroon;"><i class="fa fa-camera-retro"></i> School Gallery</h1>
    </div>
  </div>
</div>

<div class="container b-5">
  <div class="dropdown float-left">
    <!-- <button class="btn btn-secondary dropdown-toggle" type="button" id="yearDropdown" data-toggle="dropdown">
      Select Year
    </button> -->
    <select id="year_val" class="form-control drop">
      <!-- <a class="dropdown-item" href="#">2023</a>
      <a class="dropdown-item" href="#">2022</a>
      <a class="dropdown-item" href="#">2021</a> -->
    </select>
  </div>
</div>


<div class="container mt-5" id="sup_container">
  <div class="row" id="cat_container">

    <div class="col-md-3 mb-4">
      <div class="card custom-card  cat-card" id="all_cat">
        <div class="card-body card-content">
          <h3 class="card-title text-center" style="color: black;">ALL</h3>
          <!-- <p class="card-text" style="color: black;">Click to See more Image.</p> -->
        </div>
      </div>
    </div>

  </div>
  <div class="row mt-3 " id="container_2">
  </div>

</div>

<script>
  var cat_ids = {};
  $.get({
    url: "admin/categories/categoriesCrud.php",
    data: { getData: "getData" },
    success: function (data) {
      let newData = JSON.parse(data);

      newData.forEach((cat, i) => {



        let cat_container = $("#cat_container ");
        let sup_container = $("#sup_container ");
        let container_2 = $("#container_2 ");


        var cat_id = cat.category_id.toLowerCase();

        cat_container.append(
          '<div class="col-md-3 mb-4">' +
          '<div class="card custom-card  cat-card" id=' + cat_id + '>' +
          '<div class="card-body card-content">' +
          '<h3 class="card-title text-center" style="color: black;">' + cat.category_name + '</h3>' +
          // '<p class="card-text" style="color: black;">Click to See more Image.</p>' +
          '</div >' +
          '</div >' +
          '</div >'
        );


        $('#' + cat_id).on('click', function () {
          // Remove the "active" class from all elements
          $('.cat-card').removeClass('active');

          // Add the "active" class to the clicked element
          $(this).addClass('active');
        });





        $('#' + cat_id).click(function () {
          let tae = $(this).attr('id');
          $.get({
            url: "admin/galleries/galleriesCrud.php",
            data: { getDataCat: "getDataCat", gallery_category_id: tae },
            success: function (data) {
              let newData = JSON.parse(data);
              container_2.empty();

              newData.forEach((gal, i) => {
                var details_id = gal.gallery_id.toLowerCase() + "-details";
                container_2.append(


                  '<div class="col-md-3 mb-4 " id=' + details_id + '>' +
                  '<div class="card custom-card" style="background-image: url(\'assets/images/gallery/' + gal.gallery_category_id + '/' + gal.gallery_image + '\'); background-size: cover;">' +
                  '</div>' +
                  '</div>'



                );


              });


            }
          });
        });




      });
    },
  });


  var currentDate = new Date();
  var currentYear = currentDate.getFullYear();
  getAllGAlData(currentYear);

  function getAllGAlData() {



    $.get({
      url: "admin/galleries/galleriesCrud.php",
      data: { getData2: "getData2", cur_Year: currentYear },
      success: function (data) {
        let newData = JSON.parse(data);

        let container_2 = $("#container_2 ");
        container_2.empty();

        newData.forEach((gal, i) => {
          var details_id = gal.gallery_id.toLowerCase() + "-details";
          container_2.append(


            '<div class="col-md-3 mb-4 " id=' + details_id + '>' +
            '<div class="card custom-card" style="background-image: url(\'assets/images/gallery/' + gal.gallery_category_id + '/' + gal.gallery_image + '\'); background-size: cover;">' +
            '</div>' +
            '</div>'



          );


        });


      }
    });

  }


  var gal_year = currentYear;

  $("#all_cat").click(function () {

    $('.cat-card').removeClass('active');

    $(this).addClass('active');
    getAllGAlData();
  })



  $.get({
    url: "admin/galleries/galleriesCrud.php",
    data: { getDataGalYear: "getDataGalYear" },
    success: function (data) {
      let newData = JSON.parse(data);
      let opList = $("#year_val");
      $("<option>", {
        html: "Select Year",
      }).appendTo(opList);

      newData.forEach((gal, i) => {
        $("<option>", {
          value: gal.gallery_id,
          html: gal.distinct_years,
        }).appendTo(opList);
      });
    },
  });

  $("#year_val").change(function () {
    var year = $(this).val();
    gal_year = year;

  })




</script>

<br><br><br>

<?php include("layoutsWebsite/footer.php"); ?>