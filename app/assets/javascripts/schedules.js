$(document).ready(function(){

    $('#estimate').on('click',function(){
        var init_date = $('#init_date_picker').data("datetimepicker").getDate()
        var end_date = $('#end_date_picker').data("datetimepicker").getDate()
        var difference = end_date.getTime() - init_date.getTime()
        var days = Math.round(difference/ (1000*60*60*24))
        if (days >= 0){
            console.log(days)
            $('h3').html('')
            $('h3').html(days).slideDown(8000)
        }
        else {console.log('La fecha de salida debe ser igual o posterior a la de ingreso')
        }
    })
  
    $('#init_date_picker').datetimepicker({
        minView: 2,
        format: 'dd-MM-yyyy',
        autoclose: true,
        language: 'es-do',
        weekStart: 1,
        icons: {
            time: 'fa fa-clock-o',
            date: 'fa fa-calendar',
            up: 'fa fa-chevron-up',
            down: 'fa fa-chevron-down',
            previous: 'fa fa-chevron-left',
            next: 'fa fa-chevron-right',
            today: 'glyphicon glyphicon-screenshot',
            clear: 'fa fa-trash',
            close: 'fa fa-times'
        }
    })

    $('#end_date_picker').datetimepicker({
        minView: 2,
        format: 'dd-MM-yyyy',
        autoclose: true,
        language: 'es-do',
        weekStart: 1,
        icons: {
            time: 'fa fa-clock-o',
            date: 'far fa-calendar-alt',
            up: 'fa fa-arrow-up',
            down: 'fa fa-arrow-down'
            }
    });
})
    
    

