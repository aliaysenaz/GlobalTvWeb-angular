CREATE DATABASE if not exists `globaltv`
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_unicode_ci;

USE `globaltv`;
INSERT INTO `PLAYLIST`
(`id`, `name`, `url`, `type`, `enable`)
VALUES
(1, 'Torrent TV (super-pomoyka)', 'http://super-pomoyka.us.to/trash/ttv-list/ttv.m3u', 1, true),
(2,'Torrent TV (super-pomoyka)2', 'http://super-pomoyka.us.to/trash/ttv-list/ttv.all.player.m3u', 1, false),
(3, 'Torrent TV (allfon.tv)', 'http://allfon.tv/autogenplaylist/allfontv.m3u', 0, true),
(4, 'BestTV', 'http://pastebin.com/raw.php?i=p9f2GF2C', 0, true),
(5, 'BestTV SlyNet', 'http://iptv.slynet.tv/FreeSlyNet.m3u', 0, true),
(6, 'BestTV World', 'http://pastebin.com/raw.php?i=0v7dwrnb', 0, true),
(7, 'Adults SlyNet', 'http://slynet.do.am/AdultsSlyNet.m3u', 0, false),
(8, 'Webcam World', 'http://pastebin.com/raw.php?i=4zkncmD3', 0, false),
(9, 'Peers tv SlyNet', 'http://slynet.do.am/PeerstvSlyNet.m3u', 0, true),
(10, 'Kinodrom SlyNet', 'http://slynet.do.am/KinodromSlyNet.m3u', 0, true),
(11, 'TV.posle.info', 'http://tv.posle.info/smart_tv.m3u', 0, true),
(12, 'tv4p.ru Zabava TV', 'http://tv4p.ru/01z.m3u', 0, false),
(13, 'tv4p.ru Vintera TV', 'http://tv4p.ru/05v.m3u', 0, false),
(14, 'tv4p.ru Bonus TV', 'http://tv4p.ru/04b.m3u', 0, false),
(15, 'Denms.ru', 'http://iptv.denms.ru', 0, true),
(16, 'Moyo.tv', 'http://moa.ucoz.com/XML/moyo.m3u', 0, true),
(17, 'Lamp.ufa-it.ru', 'http://iptv.lamp.ufa-it.ru/generate_m3u', 0, true),
(18, 'Lanet', 'http://lanet.tv/playlist.m3u', 0, true),
(19, 'Rubin+', 'http://rubinplus.net/unicast.m3u', 0, true),
(20, 'Iptv-360', 'http://iptv-360.esy.es/public_http/pleulist/stream.m3u', 0, false),
(21, 'ListIPTV', 'http://listiptv.ru/iptv.m3u', 0, true),
(22, 'dostupnoe-iptv', 'http://iptv.rumedia.biz/dostupnoe-iptv.m3u', 0, false),
(23, 'edem.tv', 'https://edem.tv/playlists/uplist/c0501458db7536739c23049fda773bf6/edem_pl.m3u8', 0, true),
(24, 'RealWeb', 'http://iptv.usafreespace.com/webtv.m3u', 0, true),
(25, 'Максимум TV', 'http://tv.maximuma.net/iptv.m3u', 0, true),
(26, '545-TV(UA)', 'http://545-tv.com/listUA.php', 0, true),
(27, '545-TV(RU)', 'http://545-tv.com/listRU.php', 0, true),
(28, 'RuMedia (DOM)', 'http://iptv.rumedia.biz/iptv-playlist/potok_6/DOM.m3u', 0, true),
(29, 'RuMedia (Multi)', 'http://iptv.rumedia.biz/iptv-playlist/potok_6/iptv-multi.m3u', 0, true),
(30, 'SlimIptv', 'http://slimiptv.ru/iptv.m3u', 0, true),
(31, 'TV Israel', 'http://anarchitv.gq/TV/IPTV', 0, true),
(32, 'playlistX', 'https://dl.dropboxusercontent.com/u/47797448/playlist/all_vlc.m3u', 0, false),
(33, 'Films EX.UA', 'http://iptv-sima.ucoz.ru/film.m3u', 0, false),
(34, 'Armenia @ Ucoz', 'http://sascha.ucoz.net/plst/iptv/armenian_dejtakom_kampni-15.01.2016.m3u', 0, true),
(35, 'Kineskop.tv', 'http://kineskop.tv/pl/', 0, true),
(36, 'Ratus @ Ucoz', 'http://moa.ucoz.com/iptv_moa/ratus.m3u', 0, true);
