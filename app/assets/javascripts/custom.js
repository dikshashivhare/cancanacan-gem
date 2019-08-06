//role _privilage
$(document).ready(function(){
       $('.access_check').on('click', function(){
         var accessToEmp = $(this).prop("checked");
         var Role = $(this).data("role");
         var userId = $(this).data("user-id");
         var actionName = $(this).data("action-name");
         debugger
         $.ajax({
           url: 'set_role_permissions',
           method: 'GET',
           data: {
             access_allowed: accessToEmp,
             role: Role,
             user_id: userId,
             action_name: actionName
           }
         });
       });
     });

//user_privilage
$(document).ready(function(){
       $('.access_check').on('click', function(){
         var accessToEmp = $(this).prop("checked");
         var userId = $(this).data("user-id");
         var actionName = $(this).data("action-name");
         debugger
         $.ajax({
           url: 'set_user_permissions',
           method: 'GET',
           data: {
             access_allowed: accessToEmp,
             user_id: userId,
             action_name: actionName
           }
         });
       });
     });