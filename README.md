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

