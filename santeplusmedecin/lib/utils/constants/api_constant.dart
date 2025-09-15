//for emulator android
//const url = 'http://10.0.2.2:5000/';

//for real device
//(cmd==>ipconfig ==>Carte réseau sans fil Wi-Fi :  Adresse IPv4: 192.168.183.34)
const url = 'http://192.168.1.103:5000/';

//Auth
const register = "${url}users/addMedecin";
const login = "${url}users/login";

//Ordonnance
const getOrdonnance = "${url}ordonnances/getOrdonnanceByIdPatient/";
const addOrdonnance = "${url}ordonnances/addOrdonnance";
const updateOrdonnance = "${url}ordonnances/updateOrdonnance/";
const deleteOrdonnance = "${url}ordonnances/deleteOrdonnance/";


//Rendez-vous
const getRdv = "${url}rendezvous/getRdvByIdPatient/";
const addRdv = "${url}rendezvous/addRdv";
const updateRdv = "${url}rendezvous/updateRdv/";
const deleteRdv = "${url}rendezvous/deleteRdv/";


