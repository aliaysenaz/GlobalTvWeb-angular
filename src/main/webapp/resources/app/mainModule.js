var mainModule = angular.module('mainModule', ['ngRoute', 'ngCookies']);

mainModule.config(['$routeProvider',
    function($routeProvider) {
        $routeProvider.
            when('/playlists', {
                templateUrl: 'resources/app/home.html',
                controller: 'PlaylistController'
            })
    }]);

define([
    'resources/app/PlaylistService',
    'resources/app/PlaylistController'
]);
