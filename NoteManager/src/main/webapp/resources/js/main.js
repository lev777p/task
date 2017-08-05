$(function(){

	$('#calendar').fullCalendar({
		/*dayClick: function(){
			alert('Работает!');
		}*/
		theme: true,
		lang: 'ru',
		/*monthNames: ['Январь','Февраль','Март','Апрель','Май','οюнь','οюль','Август','Сентябрь','Октябрь','Ноябрь','Декабрь'],
        monthNamesShort: ['Янв.','Фев.','Март','Апр.','Май','οюнь','οюль','Авг.','Сент.','Окт.','Ноя.','Дек.'],
        dayNames: ["Воскресенье","Понедельник","Вторник","Среда","Четверг","Пятница","Суббота"],
        dayNamesShort: ["ВС","ПН","ВТ","СР","ЧТ","ПТ","СБ"],*/
		 editable: true,
		   /* events: "/CalendarJsonServlet"*/
		 events: [
		        {
		            title: 'My Event',
		            start: '2017-07-12',
		            url: 'http://google.com/'
		        }
		        // other events here
		    ],
		    dayClick: function(date, jsEvent, view) {

		        alert('Clicked on: ' + date.format());

		        alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);

		        alert('Current view: ' + view.name);

		        // change the day's background color just for fun
		        $(this).css('background-color', 'red');

		    }
		    	    
	});
	
});

