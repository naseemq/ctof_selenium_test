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

  IAM_AUTH_USER_SDG=rgupta3
  IAM_AUTH_USER_SDG_PASSWORD=ctof2014

  IAM_AUTH_USER_MTV=blengade
  IAM_AUTH_USER_MTV_PASSWORD=ctof2014

  IAM_AUTH_USER_BAN=santoshar
  IAM_AUTH_USER_BAN_PASSWORD=ctof2014

  IAM_AUTH_USER_BUR=xbao
  IAM_AUTH_USER_BUR_PASSWORD=ctof2014

  IAM_AUTH_USER_CMB=ckuo
  IAM_AUTH_USER_CMB_PASSWORD=ctof2014

  IAM_AUTH_USER_EDM=bcard
  IAM_AUTH_USER_EDM_PASSWORD=ctof2014

  IAM_AUTH_USER_MIS=gsharples
  IAM_AUTH_USER_MIS_PASSWORD=ctof2014

  IAM_AUTH_USER_PLN=mthomas1
  IAM_AUTH_USER_PLN_PASSWORD=ctof2014

  IAM_AUTH_USER_RMT=ado1
  IAM_AUTH_USER_RMT_PASSWORD=ctof2014

  IAM_AUTH_USER_WDH=torik157
  IAM_AUTH_USER_WDH_PASSWORD=ctof2014

  IAM_UNAUTH_USER=fozkan
  IAM_UNAUTH_USER_PASSWORD=ctof2014

  URL=http://ec2-75-101-173-222.compute-1.amazonaws.com/qa/#/landing
```
Users in QA
------------
```
User - user
```
