//for emulator android
//const url = 'http://10.0.2.2:5000/';

//for real device
//(cmd==>ipconfig ==>Carte réseau sans fil Wi-Fi :  Adresse IPv4: 192.168.183.34)
const url = 'http://192.168.1.103:5000/';

//Auth
const register = "${url}auth/registration";
const login = "${url}auth/login";

//Todo
const storeTodo = "${url}todo/storeTodo";
const getTodo = "${url}todo/getUserTodoList";
const deleteTodoItem = "${url}todo/deleteTodo";