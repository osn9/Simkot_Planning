function drawDoughnut(divname, label, datum,Colors,border) {
    debugger;
    var brandPrimary = '#33b35a';
    new Chart($('#' + divname), {
        type: 'doughnut',
        data: {
            labels: label,
            datasets: [
                {
                    data: datum,
                    borderwidth: border,
                    backgroundColor: Colors,
                    hoverBackgroundColor: Colors
                }]
        },
        options: {
        legend: {
    	    display: true
        }
  	    //tooltips: {
    	//    callbacks: {
      	//    label: function(tooltipItem) {
        //    console.log(tooltipItem)
        //    return tooltipItem.labels;
        //    }
        //  }
        //}
      }
    });
}