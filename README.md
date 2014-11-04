grails-modldx-test  tester for modaldynamix plugin
=======================



## Getting started


## Post 2.4 (tested on 2.4.4)

Please refer to [testmodaldynamix](https://github.com/vahidhedayati/testmodaldynamix) to see this being used and where all the below examples were taken from.

After having either followed above steps or copied the
[test controller](https://github.com/vahidhedayati/testmodaldynamix/blob/master/grails-app/controllers/testmodaldynamix/TestdynamixController.groovy)
and copied [the views folder](https://github.com/vahidhedayati/testmodaldynamix/tree/master/grails-app/views/testdynamix) to you own app.

The changes required to a vanilla 2.4.4 install are:

Update [BuildConfig.groovy](https://github.com/vahidhedayati/testmodaldynamix/blob/master/grails-app/conf/BuildConfig.groovy)
```
compile ":jquery-ui:1.10.3"
compile ":modaldynamix:0.12" 
```
update (main.gsp)(https://github.com/vahidhedayati/testmodaldynamix/blob/master/grails-app/views/layouts/main.gsp) add this loadbootrap call, if your site is not already bootstrapped. You could also choose not to make your entire site load this and instead make the call on a given gsp page that will use the plugin.
```
<!-- Vahid load in bootstrap - if app has no bootstrap -->
<g:loadbootstrap/>
```

Update [application.js](https://github.com/vahidhedayati/testmodaldynamix/blob/master/grails-app/assets/javascripts/application.js) addd the jquery-ui line
```
//= require jquery
//= require jquery-ui/js/jquery-ui-1.10.3.custom.min
```

I think that should be all. If any issues/suggestions raise it [here](https://github.com/vahidhedayati/modaldynamix/issues)


### Modify views/layouts/main.gsp  (Pre 2.4 grails resources based applications)

your layouts main.gsp: (add jquery-ui,jquery + loadbootstrap)

```gsp
<g:layoutHead/>
<g:javascript library="application"/>
<g:javascript library="jquery"/>
<g:javascript library="jquery-ui"/>	
<r:layoutResources />
<g:loadbootstrap/>
</head>
```

You will notice from a default installed application the extra jquery jquery-ui and <g:loadbootstrap/>

If your site is already bootstrapped then no need to load that up.


Please refer to [grails-modaldx-test](https://github.com/vahidhedayati/grails-modaldx-test) to see this being used and where all the below examples were taken from.


## Plugin decsription

[ModalDynamix](https://github.com/vahidhedayati/modaldynamix) is a Grails plugin which makes use of jquery, bootstrap and modalbox to load various types of forms  Self Posting,I Frame, Remote Forms and normal calls via ModalBox, upon trigger save or close depending on type of call, the underlying form is updated with new values without page refreshes.'
 
A common problem when it comes to forms within a website is having the ability to update preset values on the form without redirecting or opening up new tabs etc.
This plugin aims to help in the process of producing dynamic forms that sit on top of other forms that are then opened in a pop up modalbox and their 
actions update your underlying form without refreshing actual page.

For further information on this demo site visit: https://github.com/vahidhedayati/modaldynamix
