mainModule.service('PlaylistService', ['$http', '$log', function ($http, $log) {
        return {
            getAllPlaylists: function () {
                return $http.get("/getAllPlaylists")
                    .then(function(response) {
                        return response.data;
                    });
            },

            getSelectedPlaylist: function () {
                return $http.get("/getSelectedPlaylist")
                    .then(function(response) {
                        return response.data;
                    });
            },

            getListGroupById: function (playlistId) {
                return $http.get('/getListGroupById/' + playlistId)
                    .success(function (data) {
                        return data;
                    })
                    .error(function (err) {
                        return err;
                    });
            },

            getListGroupSizeById: function (playlistId) {
                return $http.get('/getListGroupSizeById/' + playlistId)
                    .success(function (data) {
                        return data;
                    })
                    .error(function (err) {
                        return err;
                    });
            },

            getListAllChannelsById: function (playlistId) {
                return $http.get('/getListAllChannelsById/' + playlistId)
                    .success(function (data) {
                        return data;
                    })
                    .error(function (err) {
                        return err;
                    });
            },

            getListChannelsByIdAndGroup: function (changeCat) {
                return $http.get('/getListChannelsByIdAndGroup/' + changeCat)
                    .success(function (data) {
                        return data;
                    })
                    .error(function (err) {
                        return err;
                    });
            },

            getSelectedChannelById: function(channelId) {
                return $http.get('/getSelectedChannelById/' + channelId)
                    .success(function (data) {
                        return data;
                    })
                    .error(function (err) {
                        return err;
                    });
            },

            downloadPlaylist: function(playlistId) {
                return $http.get('/downloadPlaylist/' + playlistId)
                    .success(function (data) {
                        return data;
                    })
                    .error(function (err) {
                        return err;
                    });
            },

            openPlaylist: function(data) {
                return $http.put('/openPlaylist', data)
                    .success(function (responseData) {
                        $log.info('response'  + responseData);
                        return responseData;
                    })
                    .error(function (err) {
                        return err;
                    });

            }
        }
    }]);
