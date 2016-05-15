mainModule.controller('PlaylistController', ['$scope', 'PlaylistService', function ($scope, playlistService) {
    $scope.playlists = [];
    $scope.selectedPlaylist = 0;
    $scope.selectedChannel = 0;
    $scope.currentPlaylist = {};
    $scope.currentChannel = {};
    $scope.groupList = [];
    $scope.groupSize = 0;
    $scope.channelList = [];
    $scope.channelSize = 0;
    chList = [];

    $scope.reload = function () {
        location.reload();
    };

    $scope.showSelectedPlaylist = function () {
        playlistService.getSelectedPlaylist().then(function (data) {
            $scope.selectedPlaylist = data;
        });
    };

    $scope.showSelectedPlaylist();

    $scope.showAllPlaylists = function () {
        playlistService.getAllPlaylists().then(function (data) {
            $scope.playlists = data;
            $scope.currentPlaylist = $scope.playlists[$scope.selectedPlaylist];
        });
    };

    $scope.showAllPlaylists();

    $scope.getListAllChannelsById = function (playlistId) {
        playlistService.getListAllChannelsById(playlistId).then(function (data) {
            $scope.channelList = data.data;
            $scope.channelSize = $scope.channelList.length;
            if ($scope.channelList != null) {
                channelList = $scope.channelList;
            }
        });
    };

    $scope.getListChannelsByIdAndGroup = function (changeCat) {
        playlistService.getListChannelsByIdAndGroup(changeCat).then(function (data) {
            $scope.channelList = data.data;
            $scope.channelSize = $scope.channelList.length;
        });
    };

    $scope.getListGroupById = function (playlistId) {
        playlistService.getListGroupById(playlistId).then(function (data) {
            $scope.groupList = data.data;
            $scope.groupSize = $scope.groupList.length;
        });
    };

    $scope.downloadPlaylist = function (playlistId) {
        playlistService.downloadPlaylist(playlistId).then(function (data) {

        });
    };

    $scope.openPlaylist = function (playlistId) {
        console.log("Open Playlist :" + playlistId);
//            playlistService.openPlaylist(playlistId)
//                .then(function (response) {
//                    if (response.status == 200) {
        $scope.getListGroupById(playlistId);
        $scope.getListAllChannelsById(playlistId);
        $scope.currentChannel = $scope.channelList[$scope.selectedChannel];
//                    } else {

//                    }
//                });
    };

    $scope.openPlaylistByGroup = function (changeCat) {
        console.log("Open Playlist :" + changeCat);
        playlistService.getListChannelsByIdAndGroup(changeCat)
            .then(function (response) {
                if (response.status == 200) {
                    $scope.getListChannelsByIdAndGroup(changeCat);
                    $scope.currentChannel = $scope.channelList[$scope.selectedChannel];
                } else {

                }
            });
    };

    $scope.openChannel = function (channelId) {
        console.log("Open Channel :" + channelId);
        showPlayer($scope.currentChannel.url)
    };

    var controls = new TorrentStream.Controls(null, {
        style: "ts-white-screen"
    });

    function showPlayer(contentId) {
        controls.showPlayer(function () {
            try {
                var player = new TorrentStream.Player(this.getPluginContainer(), {
                    debug: true,
                    onLoad: function () {
                        this.registerEventHandler(controls);
                        controls.attachPlayer(this);
                        this.loadPlayer(contentId);
                    }
                });
            }
            catch (e) {
                controls.onSystemMessage(e);
            }
        });
    }

}]);