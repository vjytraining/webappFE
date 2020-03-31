#!/bin/bash                                                                                                                                          
                                                                                                                                                     
#Entering to the home directiory                                                                                                                     
cd /                                                                                                                                                 
#creating the flighttracking directory                                                                                                                    
sudo mkdir flighttrack                                                                                                                                          
#entering to the flighttracking                                                                                                                         
cd flighttrack                                                                                                                                             
#cloning the files here                                                                           
git clone https://ansible-story@dev.azure.com/ansible-story/springbootapp_mumbai/_git/springbootapp_mumbai                                          
#entering to the  springboot_mumbai/flight-tracking
cd springbootapp_mumbai/flight-tracking/

#build the package
mvn clean package

cd
#deploying the war file to the tomcat
sudo cp /flighttrack/springbootapp_mumbai/flight-tracking/target/flight-tracking-web.war /opt/tomcat/webapps/ 

