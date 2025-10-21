;
; Archivo de zona DIRECTA para miempresa.com
;
$TTL    604800
@       IN      SOA     ns1.miempresa.com. admin.miempresa.com. (
                              1         ; Serial (empezamos en 1)
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
; Servidor de Nombres
@       IN      NS      ns1.miempresa.com.

; Registros de la zona (A Records)
ns1     IN      A       192.168.1.100   ; Puede usar la misma IP del servidor
webmail IN      A       192.168.1.102   ; Una IP nueva para el webmail
www     IN      A       192.168.1.103   ; Una IP nueva para la web