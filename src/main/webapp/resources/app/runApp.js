require.config({
    paths: {
        angular: 'resources/assets/bower_components/angular/angular.min',
        csrfInterceptor: 'resources/assets/bower_components/spring-security-csrf-token-interceptor/dist/spring-security-csrf-token-interceptor.min',
        ngRoute: 'resources/assets/bower_components/angular-route/angular-route.min',
        ngCookies: 'resources/assets/bower_components/angular-cookies/angular-cookies.min',
        mainModule: 'resources/app/mainModule'
    },
    shim: {

        angular: {
            exports: 'angular'
        },

        csrfInterceptor: {
            deps: ['angular']
        },

        ngRoute: {
            deps : [ 'angular' ],
            exports: 'ngRoute'
        },

        ngCookies: {
            deps : [ 'angular' ],
        },

        mainModule: {
            deps: ['angular', 'csrfInterceptor', 'ngRoute', 'ngCookies']
        }
    }
});

require(['mainModule'], function () {
    angular.bootstrap(document.getElementById('mainModule'), ['mainModule']);
});
