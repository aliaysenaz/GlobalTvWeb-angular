package atua.anddev.globaltv.controller;

import atua.anddev.globaltv.entity.Channel;
import atua.anddev.globaltv.entity.Playlist;
import atua.anddev.globaltv.service.ChannelService;
import atua.anddev.globaltv.service.PlaylistService;
import atua.anddev.globaltv.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import java.util.Date;
import java.util.List;

@EnableWebMvc
@RestController
public class PlaylistController {

    @Autowired
    UserService userService;

    @Autowired
    PlaylistService playlistService;

    @Autowired
    ChannelService channelService;

    int selectedPlst = 1;
    int selectedChn = 1;
    int grpSize = 0;
    int chSize = 0;
    String chUrl = "";
    String playlistName;
    List<Channel> listGroup = null;
    List<Channel> listChannel = null;
    String updateDate;

/*    @RequestMapping(value = "/")
    public ModelAndView home() {
        ModelAndView modelAndView = new ModelAndView("home");

        return modelAndView;
    }

    @RequestMapping(value = "/view_player1")
    public ModelAndView viewPlayerAce() {
        ModelAndView modelAndView = new ModelAndView("player_ace");
        modelAndView.addObject("chUrl", chUrl);
        return modelAndView;
    }

    @RequestMapping(value = "/view_player2")
    public ModelAndView viewPlayerVlc() {
        ModelAndView modelAndView = new ModelAndView("player_vlc");
        modelAndView.addObject("chUrl", chUrl);
        return modelAndView;
    }*/

    @RequestMapping(value = "/getAllPlaylists")
    public List<Playlist> listPlaylists() {
        return playlistService.getAllPlaylists();
    }

    @RequestMapping(value = "/getPlaylistById/{playlistId}")
    public Playlist getPlaylistById(@PathVariable int playlistId) {
        return playlistService.getPlaylistById(playlistId);
    }

    @RequestMapping(value = "/getSelectedPlaylist")
    public int getSelectedPlaylist() {
        return selectedPlst - 1;
    }

    @RequestMapping(value = "/getListAllChannelsById/{playlistId}")
    public List<Channel> getListAllChannelsById(@PathVariable int playlistId) {
        playlistName = playlistService.getPlaylistNameById(playlistId);
        return channelService.getAllChannelsByPlaylist(playlistName);
    }

    @RequestMapping(value = "/getSelectedChannelById/{channelId}")
    public Channel getSelectedChannelById(@PathVariable int channelId) {
        return channelService.getAllChannelsByPlaylist(playlistName).get(channelId);
    }

    @RequestMapping(value = "/getListChannelsByIdAndGroup/{changeCat}")
    public List<Channel> getListChannelByIdAndGroup(@PathVariable String changeCat) {
        if (changeCat.equals("All")) {
            listChannel = channelService.getAllChannelsByPlaylist(playlistName);
        } else {
            listChannel = channelService.getChannelsByGroup(playlistName, changeCat);
        }
        return listChannel;
    }

    @RequestMapping(value = "/getListGroupById/{playlistId}")
    public List<Channel> getListGroupById(@PathVariable int playlistId) {
        playlistName = playlistService.getPlaylistNameById(playlistId);
        return channelService.getGroupList(playlistName);
    }

    @RequestMapping(value = "/getListGroupSizeById/{playlistId}")
    public Integer getListGroupSizeById(@PathVariable int playlistId) {
        playlistName = playlistService.getPlaylistNameById(playlistId);
        return channelService.getGroupList(playlistName).size();
    }

    @RequestMapping(value = "/downloadPlaylist/{playlistId}")
    public void downloadPlaylist(@PathVariable int playlistId) {
        System.out.println("download " + playlistId);
        playlistService.downloadPlaylist(playlistId);
    }

    @RequestMapping(value = "/openPlaylist", method = RequestMethod.PUT)
    public void openPlaylist(@RequestBody int playlistId) {
        System.out.println("open " + playlistId);
        selectedPlst = playlistId;
    }

}