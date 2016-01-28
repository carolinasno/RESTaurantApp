// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(function(){

  var $permissions = $('.permission');
  var permissionTypes = ['chef', 'server', 'admin'];

  var permission;
  var permissionNum;

  for (var i = 0; i < $permissions.length; i++) {
    permissionNum = $permissions.eq(i).text();
    permission = permissionTypes[permissionNum-1];
    $permissions.eq(i).text(permission);
  }

});
