// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


var permission = $(user.permission);

if (permission == 3) {
  echo "Admin";
} else if (permission == 2) {
  echo "Server";
} else {
  echo "Chef";
};
