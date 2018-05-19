/**
 * 
 */

// 메뉴바 색 전환 마우스 이벤트 처리
$("#hot").on({
	mouseenter : function() {
		$(this).css("background-color", "#ffffff"),
		$(this).css("color", "#ff7200");
	},
	mouseleave : function() {
		$(this).css("background-color", "#f0f0f0"),
		$(this).css("color", "#000000");
	}
});

$("#sports").on({
	mouseenter : function() {
		$(this).css("background-color", "#ffffff"),
		$(this).css("color", "#ff7200");
	},
	mouseleave : function() {
		$(this).css("background-color", "#f0f0f0"),
		$(this).css("color", "#000000");
	}
});

$("#beauty").on({
	mouseenter : function() {
		$(this).css("background-color", "#ffffff"),
		$(this).css("color", "#ff7200");
	},
	mouseleave : function() {
		$(this).css("background-color", "#f0f0f0"),
		$(this).css("color", "#000000");
	}
});

$("#music").on({
	mouseenter : function() {
		$(this).css("background-color", "#ffffff"),
		$(this).css("color", "#ff7200");
	},
	mouseleave : function() {
		$(this).css("background-color", "#f0f0f0"),
		$(this).css("color", "#000000");
	}
});

$("#food").on({
	mouseenter : function() {
		$(this).css("background-color", "#ffffff"),
		$(this).css("color", "#ff7200");
	},
	mouseleave : function() {
		$(this).css("background-color", "#f0f0f0"),
		$(this).css("color", "#000000");
	}
});

$("#design").on({
	mouseenter : function() {
		$(this).css("background-color", "#ffffff"),
		$(this).css("color", "#ff7200");
	},
	mouseleave : function() {
		$(this).css("background-color", "#f0f0f0"),
		$(this).css("color", "#000000");
	}
});

$("#business").on({
	mouseenter : function() {
		$(this).css("background-color", "#ffffff"),
		$(this).css("color", "#ff7200");
	},
	mouseleave : function() {
		$(this).css("background-color", "#f0f0f0"),
		$(this).css("color", "#000000");
	}
});

$("#language").on({
	mouseenter : function() {
		$(this).css("background-color", "#ffffff"),
		$(this).css("color", "#ff7200");
	},
	mouseleave : function() {
		$(this).css("background-color", "#f0f0f0"),
		$(this).css("color", "#000000");
	}
});

$("#progam").on({
	mouseenter : function() {
		$(this).css("background-color", "#ffffff"),
		$(this).css("color", "#ff7200");
	},
	mouseleave : function() {
		$(this).css("background-color", "#f0f0f0"),
		$(this).css("color", "#000000");
	}
});

$("#life").on({
	mouseenter : function() {
		$(this).css("background-color", "#ffffff"),
		$(this).css("color", "#ff7200");
	},
	mouseleave : function() {
		$(this).css("background-color", "#f0f0f0"),
		$(this).css("color", "#000000");
	}
});

/*카테고리별 이벤트 처리*/
function fetchPage(name){
	var list = $('.list-group');
	var listHtml = '';
	
	fetch(name,{
		method : 'GET'
		}).then(function(response) {
			if (!response.ok) {
				throw Error(response.statusText);
			}
			return response.json();
		}).then((data) => {
			/*for문 처리*/
			$.each(data,function(index,value){
				listHtml += "<a href='#' class='list-group-item'>"+value+"</a>";
			});
			list.html(listHtml);
		}).catch((e) => {
			console.log(e);
		});
}

function test(){      
    var list = $('.list-group');
    var listHtml = '';
    
    fetch("main/category_music",{
       method : 'GET'                  
    }).then(function(response) {
        if (!response.ok) {
            throw Error(response.statusText);
          }      
          return response.json();
        }).then((data) => {
           /*for문 처리*/
           $.each(data,function(index,value){
              alert(index+' : '+value);      
              listHtml += "<a href='#' class='list-group-item'>"+value+"</a>";
              alert(listHtml);
           });
           list.html(listHtml);
           
        }).catch((e) => {
          console.log(e);
        });
}
