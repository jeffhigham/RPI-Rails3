function all_questions(){ajax_request_obj=$.ajax({type:"GET",url:server+"/api/questions/all.json",async:!1});var t=$.parseJSON(ajax_request_obj.responseText);return t}function load_question(){var t=question_list[current_question];$("#question").html(current_question+". "+t.question),$("#answer1").html(t.answers[0].content+"."),$("#answer2").html(t.answers[1].content+"."),answer_a_category=t.answers[0].category,answer_b_category=t.answers[1].category}function load_next_question(){current_question+=1,console.log("current_question: "+current_question),current_question>total_questions?(console.log("Submitting form!"),$("form").submit()):load_question()}var current_question=1,total_questions=70,answer_a_category="",answer_b_category="",question_list=null,server=location.protocol+"//"+location.host;$(document).ready(function(){question_list=all_questions(),load_question(),$("#answer1").bind("click",function(){$("#question"+current_question).attr({value:answer_a_category}),console.log($("#question"+current_question).attr("value")),load_next_question()}),$("#answer2").bind("click",function(){$("#question"+current_question).attr({value:answer_b_category}),console.log($("#question"+current_question).attr("value")),load_next_question()})});