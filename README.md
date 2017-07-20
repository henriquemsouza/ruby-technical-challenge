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
* [More Info](https://bitbucket.org/henriquemsouza/gympass-technical-challenge/src/c807d59139b40e82d6e2fd89251113ac183e95b3/GympassToy/app/models/user.rb?at=master&fileviewer=file-view-default)
* [More Info 2](https://bitbucket.org/henriquemsouza/gympass-technical-challenge/src/c807d59139b40e82d6e2fd89251113ac183e95b3/GympassToy/db/migrate/20170716005309_create_users.rb?at=master&fileviewer=file-view-default)

![Alt text](https://content-na.drive.amazonaws.com/cdproxy/templink/hVxKz8tzYP3gq1UVGT2e7jH9xwzfwHofPPBsamHy3TkpX92IB?viewBox=1366)

###	gyms should have the following attributes ###

* a name, which should be unique and not empty 
* an "address" (see user "addresses")
* opening and closing times
* one gym manager 
* [More Info](https://bitbucket.org/henriquemsouza/gympass-technical-challenge/src/05b67a191623ef9bf4a2cacec94dd83d2047ff30/GympassToy/app/models/gym.rb?at=master&fileviewer=file-view-default)
 
![Alt text](https://content-na.drive.amazonaws.com/cdproxy/templink/23ebmOQv5JL25ivgkavHoiGR4H_WcnEPRKQuxKoP4DMpX92IB?viewBox=1366)
 
 
### users can register themselves ###

![Alt text](https://content-na.drive.amazonaws.com/cdproxy/templink/x_lXK8zVtd6L-c2zNLirXZcyZ7UIoeEMQdedPzB3u6kpX92IB?viewBox=1366)
 
 
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


### Online version in the Heroku###
###### Almost 100% functional 
###### 'links to the site'

* [Heroku url](https://gymtlogin.herokuapp.com)
* [Add new Gym](https://gymtlogin.herokuapp.com/en/gyms/new)
* [Login](https://gymtlogin.herokuapp.com/user_sessions/new)
* [List gyms](https://gymtlogin.herokuapp.com/en/gyms)


###### OBS:The login part is not working due to problems with the mailgun that is not firing email for who signs up in the online version


