#To mount ldap data directory
#mount /dev/vg_app_data/sarathi_data /app_data/sarathi
#To create the initial directory
#docker run --volume /app_data/sarathi/isro/openldap/environment:/container/environment/01-custom/env.yaml --detach osixia/openldap
docker run --net vbgdockernet --ip 172.18.0.14 --name vbg-ldap --volume /app_data/sarathi/isro/openldap/etc/ldap/slapd.d:/etc/ldap/slapd.d  --volume /app_data/sarathi/isro/openldap/var/lib/ldap:/var/lib/ldap -p 389:389 --detach osixia/openldap

#To test ldif
#docker exec my-openldap-container ldapsearch -x -H ldap://localhost -b dc=isro,dc=org -D "cn=admin,dc=isro,dc=org" -w Adm1n\!
