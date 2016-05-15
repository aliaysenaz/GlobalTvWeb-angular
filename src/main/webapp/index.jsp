<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org"
      id="mainModule">
<head>
    <title>Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://static.torrentstream.org/jsapi/js/lib/ts/core.js"></script>
    <script type="text/javascript" src="http://static.torrentstream.org/jsapi/js/lib/jquery/jquery-1.7.min.js"></script>
    <script type="text/javascript" src="http://static.torrentstream.org/jsapi/js/lib/jquery/jquery.mousewheel.js"></script>
    <script type="text/javascript" src="http://static.torrentstream.org/jsapi/js/lib/jquery/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="http://static.torrentstream.org/jsapi/js/lib/jquery/jquery-ui-1.8.9.custom.min.js"></script>
    <script type="text/javascript" src="http://static.torrentstream.org/jsapi/js/lib/jquery/jquery.jscrollpane.js"></script>
    <script type="text/javascript" src="http://static.torrentstream.org/jsapi/js/lib/jquery/jquery.scrollText.js"></script>
    <script type="text/javascript" src="http://static.torrentstream.org/jsapi/js/lib/cufon/cufon.js"></script>
    <script type="text/javascript" src="http://static.torrentstream.org/jsapi/js/lib/cufon/a_LCDNova_400.font.js"></script>
    <script type="text/javascript" src="http://static.torrentstream.org/jsapi/js/lib/ts/player.js"></script>
    <script type="text/javascript" src="http://static.torrentstream.org/jsapi/js/lib/ts/controls.js"></script>

    <link type="text/css" rel="stylesheet" href="http://static.torrentstream.org/jsapi/css/ts-buttons.css" />
    <link type="text/css" rel="stylesheet" href="http://static.torrentstream.org/jsapi/css/ts-controls-white.css" />
    <style>
        .grpbtn {
            width: 200px
        }
    </style>
</head>
<body>

<div class="row" ng-controller="PlaylistController" ng-model="playlist">
    <div class="col-sm-3" align="center" style="border-style: groove; padding:20px; width:300px">
        <h1>Playlist1</h1>
        <table border="1">
            <select name="plstnum" id="provList"
                    ng-options="option.name for option in playlists track by option.id"
                    ng-model="currentPlaylist"></select>
            <br><br>
            <label for="provName" id="provName" name="provName">{{currentPlaylist.updateDate | date:'medium'}}</label>
            <br><br>
            <button type="button" class="btn btn-warning" value="download"
                    ng-click="downloadPlaylist(currentPlaylist.id)">Update
            </button>
            <br><br>
            <button type="button" class="btn btn-success" value="open" ng-click="openPlaylist(currentPlaylist.id)">
                Open
            </button>
        </table>
    </div>
    <div class="col-sm-3" ng-model="catlist"
         ng-show="{{(groupSize<2)}}">
        <div class="col-sm-3" align="center" style="border-style: groove; padding:20px; width:300px">
            <h1>select Group</h1>

            <table border="1">
                <a type="button" class="btn btn-primary btn-md grpbtn">All</a>
                <br>
                <div class="btn-group btn-md grpbtn" ng-repeat="x in groupList">
                    <a type="button" class="btn btn-primary btn-md grpbtn" ng-click="openPlaylistByGroup(x)">{{ x }}</a>
                </div>
            </table>

        </div>
    </div>
    <div class="col-sm-3"
         ng-show="{{ !(channelSize > 0) }}">
        <div class="col-sm-3" align="center" style="border-style: groove; padding:20px; width:400px">
            <h1>select Channel</h1>
            <p>{{ channelSize }} pcs</p>
            <table border="1">
                <select name="chname" id="chList"
                        ng-options="option.name for option in channelList track by option.id"
                        ng-model="currentChannel">
                </select>
                <br><br>
                <button type="button" class="btn btn-success" value="open" ng-click="openChannel(currentChannel.id)">
                    Open
                </button>
            </table>
        </div>
    </div>

</div>

</body>
<script src="resources/assets/bower_components/requirejs/require.js"></script>
<script src="resources/app/runApp.js"></script>
</html>
