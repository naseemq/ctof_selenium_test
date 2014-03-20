Run all tests 
----------------------------
```
rake spec:browser type=remote suite=regression browser=firefox
```
Run smoke tests
------------------------------
```
rake spec:browser type=remote
```
Run smoke tests from one file
-----------------------------
```
rake spec:browser type=remote browser=firefox SPEC=spec/browser/post_details_spec.rb
```
Setting environment for tests to run against 
--------------------------------------------
```
.testenv (file not tracked - change to be done on machine)

example - URL=https://selenium.qa-1.pod-2.intuit-lc.com/

example in .testenv file
  ADMIN_USER=Admin
  ADMIN_PASSWORD=<find_someone_who_knows>

  IAM_USER=mvp_user1
  IAM_USER_PASSWORD=Intuit01

  IAM_DISABLEDUSER=mvp_disableduser
  IAM_DISABLEDUSER_PASSWORD=intuit01

  IAM_EMPLOYEE=mvp_employee1
  IAM_EMPLOYEE_PASSWORD=Intuit01

  IAM_SUPERUSER=mvp_superuser1
  IAM_SUPERUSER_PASSWORD=Intuit01

  IAM_NOTIFICATION_USER=mvp_user42
  IAM_NOTIFICATION_USER_PASSWORD=Intuit01

  URL=https://selenium.qa-1.pod-2.intuit-lc.com/
```
Users in QA
------------
```
User - mvp_user1/intuit01
Superuser - mvp_superuser1/intuit01
Employee -mvp_employee1/intuit01
Notification user -mvp_user42/intuit01
```
Gmail box
----------
```
mvpuser42@gmail.com
mvpuser42/intuit01
```
