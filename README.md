# Gympass Technical Challenge - J1.0.2 #



### users should have the following attributes ###
* an email, which should be unique
* a password
* a name
* some "addresses" (actually locations defined by latitude and longitude are enough, full textual address is optional)
* at least two for regular end users: home address and work address
* at least one for gym managers: work address
* at least one for Gympass employees: work address
* zero or more managed gyms if gym manager


###	gyms should have the following attributes ###

* a name, which should be unique and not empty 
* an "address" (see user "addresses")
* opening and closing times
* one gym manager 
 
 
### users can register themselves ###


 
 
###### Obs: Some functions will only be available in the next version 


### How to run: ###

1. Clone or download the project
2. Open the folder GympassToy
3. Press shift+Left mouse button = open CMD
4. Type it at CMD rails s 
5. In the browser type http://localhost:3000/


###### To complete the registration ######

1. If it has not installed install it by running:   gem install mailcatcher
2. At Type mailcatcher
3. In the browse go to : http://localhost:1080/
4. Open the confirmation email to access all content


## Site presentation: ##

* [PDF](https://1drv.ms/b/s!AqysHlKEcnBOkyv0CW0ZOWvzZD6C)


###### Almost 100% functional 



