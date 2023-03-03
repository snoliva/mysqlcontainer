FROM mysql:5.7

#Change localtime 
RUN rm -rf /etc/localtime
RUN ln -s /usr/share/zoneinfo/America/Santiago /etc/localtime
#Copy Advanced configuration
COPY master.cnf /etc/mysql/conf.d/master.cnf
COPY support_for_high_load.cnf /etc/mysql/conf.d/support_for_high_load.cnf
RUN chmod 0444 /etc/mysql/conf.d/master.cnf
RUN chmod 0444 /etc/mysql/conf.d/support_for_high_load.cnf