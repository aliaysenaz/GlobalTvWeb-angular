package atua.anddev.globaltv.controller;

import atua.anddev.globaltv.entity.Channel;
import atua.anddev.globaltv.entity.Playlist;
import atua.anddev.globaltv.service.ChannelService;
import atua.anddev.globaltv.service.PlaylistService;
import atua.anddev.globaltv.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import java.util.Date;
import java.util.List;

@EnableWebMvc
@RestController
public class HomeController {

    public ModelAndView home() {
        return new ModelAndView("home");
    }
}
