<script src="<?php echo base_url();?>assets/myChart.js"></script>
    <!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
        <div class="page-content">


<div class="chart-container" style="background-color: white;" >
<canvas id="myChart"></canvas>

</div>


<script type="text/javascript">
var dataName=[];
dataName[0]="";
var dataScore=[];
dataScore[0]=0;
var id=1;
<?php foreach($list as $row):?>
dataName[id]="<?php echo $row->name;?>";
dataScore[id++]="<?php echo $row->average;?> ";
<?php endforeach;?>
var ctx = document.getElementById('myChart').getContext('2d');
var chart = new Chart(ctx, {
    // The type of chart we want to create
    type: 'line',

    // The data for our dataset
    data: {
        labels: dataName,
        datasets: [{
            label: "M.S.S ",
           // backgroundColor: 'rgb(255, 99, 132)',
            borderColor: 'rgb(255, 99, 132)',
            data: dataScore,
            responsive:'true',
        }]
    },

    // Configuration options go here
    options: {}
});


</script>























        </div> 
    </div>
    <!-- END CONTENT -->

