configFile = gg.getFile():gsub('%.lua$', '_favorites.cfg')

current_id = ""
current_index = 0

function floating_button()
    gg.setVisible(false)
    while true do
        if gg.isVisible() then
            break
        end
		
        gg.sleep(300)
    end

	try_unlock_weapon_by_id(current_id)
end

function load_favorites()
	data = loadfile(configFile) 
	
	if data ~= nil then 
		favorites = data()
	else
		favorites = {false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false}
	end
end

function save_favorites()
	gg.saveVariable(favorites, configFile)
end

function unlock_weapon_by_id(id)
	gg.clearResults()
	gg.setRanges(gg.REGION_ANONYMOUS)
	gg.searchNumber(id, gg.TYPE_DWORD)

	count = gg.getResultsCount()
	indexes = {3, 4, 4, 4, 5, 6, 7, 8, 9}
	
	if count > 5 and count < 15 then
		gg.getResults(100)
		gg.getResults(gg.getResultsCount() - indexes[gg.getResultsCount() - 5])
		gg.editAll('1', gg.TYPE_DWORD)
		gg.clearResults()
	end
end

function try_unlock_weapon_by_id(id)
	if id ~= current_id then
		gg.setRanges(gg.REGION_ANONYMOUS)
		gg.clearResults()
		gg.searchNumber(id, gg.TYPE_DWORD)
		count = gg.getResultCount()
		results = gg.getResults(count)
		current_id = id
		current_index = 0
	end
	
	choice = gg.choice({"try", "finish"})
	
	if choice == nil then
		try_unlock_weapon_by_id(id)
	end
	
	if choice == 1 then
		current_index = current_index + 1
		if current_index > count then current_index = 1 end
		
		for i = 1, count, 1 do
			if i == current_index then
				results[i].value = id
			else
				results[i].value = 1
			end
		end
		
		gg.setValues(results)
		floating_button()
	elseif choice == 2 then
		for i = 1, count, 1 do
			results[i].value = id
		end
		
		gg.setValues(results)
		current_id = ""
		clan_weapons_menu()
	end
end

function choose_weapons_menu(ids, names, all, back)
	title = all and "Uncheck the weapons you don't want to unlock" or "Choose weapons"

	values = {}
	if all then
		for i = 1, #names, 1 do
			values[#values + 1] = true 
		end
	end

	choices = gg.multiChoice(names, values, title .. " (" .. #ids .. " Weapons)")
	
	if choices == nil then
		_G[back]()
	else
		for i = 1, #ids, 1 do
			if choices[i] then
				unlock_weapon_by_id(ids[i])
			end
		end
	end
end

function clan_weapons_menu()
	--gallery numbers: 240, 242, 255, 241, 238, 239, 663, 664, 665, 666, 667, 668, 682, 683, 684, 685, 686, 687, 1057, 1058, 1059, 1060, 1061, 1062
	clan_weps_ids = {"893029663", "1022557565", "1332757687", "371505332", "150121465", "2014352 882", "1050623880", "1839516694", "1718475051", "1497857667", "429167017", "1337213795", "1526449622", "1945738349", "507783760", "1880417961", "1345616674", "1973235416", "498933114", "1010284142", "742787636", "851586844", "976372763", "84097771"}
	clan_weps_names = {"Excalibur", "Reaper", "Power Fists", "Poseidon Trident", "Third Eye", "Eraser", "Lancelot", "Galahad", "Percival & Lamorak", "Mordred", "Morgana", "Bedivere", "Golden Bros", "Gangsta Shield", "Double Cashback", "Luxury Beats", "Sniper Dude", "Gem Power", "Rune Buster", "Ice Wyvern Horns", "Runic Sentinel", "Crystal Touch", "Crystal Bow", "Enchanted Crystal of Ancients"}
	
	choice = gg.choice(clan_weps_names, nil, "Choose a clan weapon")
	
	if choice == nil then
		main()
	else
		try_unlock_weapon_by_id(clan_weps_ids[choice])
	end
end

function favorite_weapons_menu()
	menu = gg.choice({" ➡️ Select Favorites", " ➡️ Unlock Favorite Weapons", " ➡️ Unlock All Favorite Weapons"}, nil, 'Favorite Weapons')
	
	if menu == nil then
		main()
	elseif menu == 1 then
		choices = gg.multiChoice(all_names, favorites, "Select your favorite weapons")
		
		if choices == nil then
			favorite_weapons_menu()
		else
			favorites = choices
		end
		
		save_favorites()
		favorite_weapons_menu()
	elseif menu == 2 or menu == 3 then
		ids = {}
		names = {}
	
		for i = 1, #all_ids, 1 do
			if favorites[i] then
				ids[#ids + 1] = all_ids[i]
				names[#names + 1] = all_names[i]
			end
		end
		
		choose_weapons_menu(ids, names, menu == 3, "favorite_weapons_menu")
	end
end

function search_weapons(ids, names, back)
	prompt = gg.prompt({"Enter the name of the weapon you want"}, nil, {"text"})

	if prompt == nil then
		_G[back]()
	else
		index = {}
		results = {}
		for i = 1, #names, 1 do
			if string.match(names[i]:lower(), prompt[1]:lower()) then
				index[#index + 1] = i
				results[#results + 1] = names[i]
			end
		end
		
		if #results == 0 then
			gg.alert("sorry, no weapons were found.")
			_G[back]()
		else
			weapon = gg.choice(results, nil, "Found: " .. #results .. " Weapon" .. (#results == 1 and "" or "s"))
			choice = gg.choice({" ➡️ Unlock", favorites[index[weapon]] and " ➡️ Remove from Favorites" or " ➡️ Add to Favorites", " ➡️ Copy ID"})
			
			if weapon ~= nil and choice ~= nil then
				if choice == 1 then
					unlock_weapon_by_id(ids[index[weapon]])
				elseif choice == 2 then
					favorites[index[weapon]] = not favorites[index[weapon]]
					save_favorites()
					gg.toast("✅ " .. (favorites[index[weapon]] and "Added to Favorites" or "Removed from Favorites"))
				elseif choice == 3 then
					gg.copyText(ids[index[weapon]])
					gg.toast("📄 ID Copied")
				end
			end
			
			_G[back]()
		end
	end
end

function main()
	all_ids = {"734659954","1682463899","1209796885","1837355830","1598375416","200814284","1983513973","849666567","106905623","1977605880","1674821442","1595463359","634759090","1950421782","1522670775","1287532241","1554426087","654518131","1655435048","1820067967","439935119","1365133281","2130582939","1939602034","884246995","1458381470","1772088784","227913265","1106345528","61244938","528904357","1882108484","2089077445","2040655799","1683532821","764083007","804739016","650436556","564622675","556133772","1085911051","54741770","54741769","291922434","226549854","1629371734","724991367","1838579076","611537995","2114834972","1950421781","2107939869","1685838860","1730922770","192853699","1429434683","704891303","374491756","1481826121","223889505","1716921203","729111596","125463954","547631144","1271903947","1617085484","1901727715","942760287","737355884","990703178","1402982761","376999555","321886352","58515399","1394990690","1769056776","1069871657","119448270","1927022825","1978675982","817624698","971883897","719399757","472852738","1325239718","1124023131","68832960","1561694862","1937664191","1719052557","1872460146","2081310042","1825337655","1684193435","473392514","1197003216","1344025625","1540150607","1188457118","1106795835","2016348959","1546678539","828812647","1087332390","1416378535","1513342399","1655060256","1727039501","850220603","655866854","451738154","41115617","1964117948","29459173","1962519210","1651362895","1783793676","868503779","466705066","1733874210","809008095","1849793737","77089832","1122116926","1905784464","1107890230","1816233236","1391153840","1095634626","113332983","15233699","647277830","1706510688","1456230955","25864854","2015839596","2116432073","488568844","1772450561","1248175944","471080910","1600707147","2051334990","102010226","2013066445","1404419636","1747957594","21638171","2032407540","84907129","676495049","1647273766","960280143","1453971113","654589861","689032414","2130060966","1040877358","2099686233","1363209448","1395516779","958600885","1350610897","1484872473","42798563","1518581425","1658878302","1776086294","2118467187","264489712","855850785","563547707","2081052713","1421619724","1371796097","1013072275","1567492705","1751486255","1043255647","789658983","1874185457","1489152342","1167029186","1590607959","878817487","1005092095","410114139","587726852","1920507363","353204501","1384690802","1507592096","1506660624","1870018003","1405957088","1014954371","1198111645","809347229","1019391990","128859145","1318097758","1329849926","1504130469","1455524742","1336255949","1371223402","1135484933","1181222766","1864721021","368760808","647239499","97114154","795753071","1429954965","70930368","2045231249","1800008951","410610785","863392747","1797345602","1419393306","2132707214","595884483","565845318","176308765","873685979","2063570118","2122697827","7757938","135943802","1363249675","1657734870","1335353522","892820309","826783148","951101391","1945915426","743341779","1102765058","1248246573","1959988946","1863825957","1171036533","1266613592","897355222","502193192","1709938850","209084956","1411145968","2140910574","326222069","541561063","460465183","2040283972","12135407","1450740466","9877704","79025229","1364248464","184978574","1896631276","412928869","1314394804","1864200475","729206483","347810221","2035792426","1912233109","1605913147","1639266271","1384373144","1076528353","1392202847","1874590435","199100595","1195715480","898278519","557291766","822804123","2097999502","1282278113","1670383977","564969152","617554410","1430202317","1948515413","852138513","869256697","1625648411","1943131553","74204451","1418657825","1958980774","2060462991","878725858","921240249","133779209","1872597034","1958755441","1738228234","1848878114","1722544446","167949038","1983176375","473680224","1960042632","214675227","178668396","1288694409","2115991872","976731461","1242808896","1855728403","1463618411","451126064","1171063542","454266095","2138750298","1895982133","1366091427","1911133265","1279077780","498887558","1585835254","1759583020","179250437","990739517","1371269589","482026758","1016985459","1452842297","1985164423","1159014012","1257240225","1737528700","309158381","262029414","1660865762","1081432919","1823383590","1607162392","210302673","1090082601","853503992","738521152","371986811","842494181","805550922","1898890602","1659578818","866242993","252218986","654845472","857527756","1706922947","1303878156","1218687644","1961402513","1941486921","90884672","843254154","562947852","667359767","181225391","116391216","1833819566","1591543843","1630787311","1104483054","1180736458","278021637","1099592644","1135397716","1426518674","177168788","2143129586","1008099557","1266909283","1048439216","944448309","502310037","17001046","1651403205","1827208520","1387584670","1046127801","2039748929","1053190134","1091501147","1275464847","309452774","1286798203","1521637410","1317570215","117169819","596737191","215680426","1933682250","1969846342","541003112","1465721754","1596402314","1566985940","2112912322","843867148","1267683939","1274841834","188685439","337116050","587118258","213348089","1046992296","1586196613","2046665099","1987510018","536954512","492019975","1200099065","1619531718","764344057","1908844430","1173079674","915801275","1508204331","1528363128","1580297219","777336987","916962599","911373450","2021606821","1928759918","1546469397","1552054791","832145690","1614911683","1756258147","1974823506","2144337432","1645207516","1256461366","1938908991","123232201","1049442168","15530744","510607579","9817830","944918770","2112617871","1020224239","553561803","206227950","711241763","770114717","889495138","1895099977","465216636","987673187","552484848","398811077","2126395579","1607990068","1808038733","1951822227","455018109","618677551","592560526","1527678039","1582476073","1326044590","1413574182","1393297203","716020953","1992917663","1431223264","59115786","914666066","27591365","2134879584","1314965731","1375275163","1776753008","1882136267","1988422935","1271974349","961779029","2019188935","1382473","1379987906","1060440780","1330069359","813507040","1082939392","1829984330","299404831","1347359359","187504014","1877982485","2084908420","1238175353","1728977592","32620151","222743652","1264043633","1290107056","855410581","1730436718","776842865","126371469","1043050490","736766551","612943114","1241194611","1057197516","634875607","1052899648","2102857692","502245084","348020917","1192683734","755096241","1356400620","840598846","2095730722","1789899202","1327246294","1979690239","1899405890","1455998967","741748000","34556346","925961603","377434248","84574881","927835659","1711766905","1556772545","1841372367","1640838584","1564652861","472637007","1359633871","235048958","1564817388","161002262","531168891","495223921","1661556820","1660770758","1871332235","150566386","260428781","733473876","1073833534","391682745","1760768990","160787252","1649242517","385055364","953310900","1386088620","281118135","770037859","1672693161","997435471","1859519421","781330870","1070522540","359436545","12654812","1229573684","1485663477","1685309455","441984440","1258525371","71406234","2144547","744831271","2022039075","1168882653","138400878","1861734427","1337136250","2020729062","174622497","613953109","1987523983","797582963","1525495147","1799735903","83533923","1301548174","341072236","1302636582","1698527272","945778742","1672072388","361662458","1212844000","1619983336","693501208","20849778","360457261","533151448","373399032","1600207422","1139330623","1785815018","353875038","142660144","843273993","525577882","1828558225","174739482","580502718","641 293 355","244395418","532478468","326144058","1493547085","631059274","2144754745","1521154832","330369027","833866447","361942176","1694391511","1791325086","12026492","1808001487","237965769","148308519","1180924159","1548200762","977602439","1436342154","111556064","1200164112","1345479952","162025112","1650323092","566453769","1426186750","2094586064","1160200985","1861568290","1756261779","765762320","1094021890","1267762384","1834527503","1582570772","1466491609","1122129815","2032561829","1160191517","1007452085","1844632159","305 427 282","381676005","1296855893","1797693350","1929917771","1233990748","1283189570","567998426","1700147128","80152300","849572103","1320784480","1064416293","228886952","1162738674","129493033","1175658001","1146851576","1244647403","1714256498","365859340","643647699","1131706052","1445473579","1690327516","1457381746","77906630","2073573915","632864467","373014978","1190763471","1280141770","1624960945","45049847","136214962","2016600161","1061614437","364418818","732798751","147776484","1905642407","1448711459","1232982751","791269051","1277104364","1965913964","880236287","850633462","1376339540","474848773","418478793","1899979731","291075282","405384158","1798307844","2138974223","1215923123","1466216308","549003567","419463271","946123693","584460721","1270555067","598448124","1958162166","1735206060","2018713198","1078001003","192768265","5531274","87113165","1256693687","399932562","784980529","192019697","1833999082","825454492","1667082967","1206847580","27371566","16867664","1280880096","85607916","1203775435","67251563","178112823","1967707459","1017646527","2141940570","1594909746","338403789","347404901","1343611220","1899251928","945301359","869129695","225694780","2050803115","685348835","769064936","2083193943","41135549","1169284415","1326608792","1938266442","1504585261","419095249","887335593","2066275265","2077560162","1 938 262 789","1201094566","1206744445","178119549","1811439036","1226462890","1083919030","1721774935","356340244","408908554","471393840","1727484562","434199056","1612303531","1097806850","681601264","1034304171","1138746203","223648111","731041781","321550882","422122696","376149613","1731121108","598277010","2136161958","828147793","1884075282","2026176168","635528739","909324455","203536178","1396174686","1747993946","1523478334","489989899","236446668","1417065539","1775278995","932249107","286566896","1227613380","31431556","30607044","575476779","270670082","854789953","250064900","591059772","906524767","1343755856","571744669","2019396363","1711365592","546597520","1324526763","1664852412","2049860071","1305602412","78523691","1648950633","713024579","213052875","1896556212","1172479598","1503524410","1275447765","1709205037","1249394630","839648793","1826124797","1282220302","1699529325","318674700","1770258054","1014841617","2031678368","631299932","1625149654","1 566 846 984","1 742 127 845","1708510998","1131520224","577102974","29204108","578956887","544547285","781803821","1810641408","1989769732","844350298","1463544293","1165825924","2123554898","1674620181","700087275","811119823","805071078","716331765","470530026","1712357346","1890803592","1130509566","1896935093","1468547132","491524056","296772685","118718489","1337830922","1346640545","1185575729","2059652530","1482403805","1671760128","1471663537","25336295","1661181449","1492845957","138565963","1431549381","902132807","286608289","2065691940","877056784","818284366","315691453","1257159725","2115518545","1906873549","495407929","180735068","1503393330","1177529341","557330785","1731678912","1877972903","561816047","438788276","1198897750","1552711825","837715681","87288348","910237886","2009213779","1331441564","1628825734","478708353","1163065246","1042008444","341060722","1309401412","2144657003","1078819380","907844317","445906780","1849091780","1120295942","910736709","737253316","617899874","2070592994","1801828058","1687773979","25619411","341635391","1608559084","1651304239","1898257649","2047361011","190642895","113550630","1986788520","2067100580","1415676419","906135656","1039819282","1304942523","2054361061","1564303663","2067784116","1170933031","307472056","623622656","921919177","1608794896","2072299425","1955787330","665856323","779574417","715361297","104297356","1413235781","450215902","139759676","1613947306","406715892","393104511","471271187","1003592950","669881174","1474047739","1711632889","70564515","1338649193","1448242363","1795468838","1758233708","920088216","295713833","1008337021","1959349629","1565806212","1096706871","435752577","1051785486"}
	all_names = {"Miner Weapon","Desert Eagle","Mega Destroyer","Swat Rifle","Fast Death","Pig Hammer","Hitman Pistol","Knight Sword","Warrior Axe","Hunger Bow","Chainsaw","Crossbow","Evil Pig Hammer","Wizard Wand","Happy Tree Slayer","Guerrilla Rifle","Brutal Headhunter","Apocalypse","Prototype","High Voltage","Grenade Launcher","Firestorm","Armageddon","Anti-gravity Blaster","Marksman","Katana","Big Buddy","Old Comrade","Eindringling","Brave Patriot","State Defender","Bass Cannon","Sparkly Blaster","Cherry Bomb","AK-48","Freeze Ray Rifle","Steam Power","Flower Power","Steam Revolver","Scythe","Plasma Rifle","Plasma Pistol","Hot Plasma Pistol","Razor Thrower","Flaming Volcano","Plasma Releaser","Automatic Peacemaker","Elephant Hunter","Dark Force Saber","Fire Demon","Dark Mage Wand","Dragon Breath","Magic Bow","Missile Thrower","Firestarter","Crystal Laser Cannon","Hellraiser","Pumpkin Thrower","Dual Machine Guns","Laser Minigun","Predator","Dual Revolvers","Snowball Gun","Avalanche","Heavy Shotgun","Solar Ray Rifle","Water Pistol","Solar Power Cannon","Water Rifle","Dater Hater","Last Kiss","Carrot Sword","Easter Bazooka","Exterminator","Assault Machine Gun","Impulse Sniper Rifle","Stinger","Secret Forces Rifle","Sunrise","Bastion","Dual Hawks","Storm Hammer","_0xbadc0de#","Electro Blast Rifle","Photon Shotgun","Mines Launcher","Dark Matter Generator","Hydra","Tactical Bow","Future Rifle","Rapid Fire Rifle","Dual Uzi","Laser Disc Thrower","Tesla Cannon","Photon Pistol","Fire Orb","Pet Dragon","Alligator","Hippo","Alien Cannon","Alien Blaster","Bouquet","Mr. Deejay","Just A Hand","Cupid's Bow","Social Uzi","Alien Rifle","Vacuumizer","Fireworks Launcher","Shotgun Pistol","Ranger Rifle","Pitbull","Tiger","Balloon Cannon","Mech Heavy Rifle","Shuriken Thrower","Snowball","Mystical Ore Emitter","Laser Crossbow","Nutcracker","Space Rifle","Icicle Minigun","Portable Death Moon","Candy Baton","Hockey Stick","Space Blaster","Golden Friend","Ka-Boom!","Dual Shotguns","Anti-Hero Rifle","Harpoon Gun","Red Twins","Poison Hunter","Nuclear Revolver","Nail Minigun","Dual Machete","Infiltrator","Gas Launcher","Laser Bouncer","Fireball Spell","Frost Beam Spell","Thunder Spell","Turbo Pistols","Laser Bow","Loud Piggy","Trapper","Chainsaw Sword","Dead Star","Toy Bomber","Zombie Head","Mr. Squido","Rocket Crossbow","Spark Shark","Power Claw","Zombie Slayer","Acid Cannon","Frank Sheepone","Ghost Lantern","Semi Auto Sniper Rifle","Electromagnetic Cannon","Barrier Rifle","Demoman","Charge Rifle","Minigun Pistol","Bad Doctor","Dual Laser Blasters","Toxic Bane","Charge Cannon","Heavy Shocker","Ruler Sword","Pencil Thrower","Napalm Cannon","Sword of Shadows","Dracula","X-Mas Destroyer","Santa Sword","Snow Storm","Heavy Gifter","Bell Revolver","Elf's Revenge","Photon Sniper Rifle","Sub-zero","Mercenary","Laser Spear","Nunchucks","Double Dragon","Love Spell","Casanova","Romeo & Juliet","Grenadier","Impulse Minigun","Electric Arc","Railgun","Rocket Jumper","Assault Shotgun","Plasma Spreader","Meat Grinder","Big Fatality Gun","Blade of Justice","Minigun Shotgun","Tactical Tomahawk","Masterpiece Musket","Executioner","Serious Argument","Piranha","One Shot","Impulse Rifle","Combat Yo-Yo","Orbital Pistol","Law Enforcer","Fidget Thrower","Celebrational Bazooka","Thunderer","Bomber Slinger","Future Sniper Rifle","B.E.A.S.T.","Invader","Core Sword","Hedgehog","Void Ray Rifle","Black Mamba","Chip Sword","Vampire Hunter","Mountain Wolf","Hurricane","Dino Slayer","Soulstone","Electrosphere","Prototype S","Frozen Dragon","Special Agent","Undertaker","Astral Bow","Zeus Chain-Sword","Music Lover","Veteran","Mini Alien Spaceship","Flag Keeper","Leader's Sword","Christmas Ultimatum","Laser Assistant","Dual Cryo Pistols","Automatic Decorator","Elder Force Saber","Champion Mercenary","Champion Peacemaker","Adamant Laser Cannon","Adamant Revolver","Adamant Spear","Champion Electric Arc","Adamant Sniper Rifle","Anti-Champion Rifle","Champion Solar Cannon","Adamant Bomber","Sharp Snowflake","Little Cthulhu","Curse Spell","Airblade Spell","Poison Spell","Earth Spike Spell","Shadow Spell","Dragon King","Angry Pumpkin","Steampunk Fists","Electro-Blast Pistol","Wyvern","Hero","Sly Avenger","Reflector","Sakura","Deadly Beat","Killer Whale","Renegade","Demon Sword","Emperor's Servants","Storm Trooper Exoskeleton","Sniper Exoskeleton","Demolition Exoskeleton","Hitman Exoskeleton","Berserk Exoskeleton","Engineer Exoskeleton","Death Claws","Eva","Space Disinfector","Mega Gun","Laser Revolver","Sword & Shield","Last Samurai","Manga Gun","Anime Scythe","Nitrogen Sprayer","Future Police Rifle","Stakegun","Monster Blaster","Plasma Cutter","Good Doctor","Devastator","Supercharged Rifle","Archangel","Manticore","Soul Thief","Multitaskers","Good & Evil","Last Hope","Jet Tenderizer","Energy Drill","Spender","Pizza Heater","Acid Pistol","Rhino","Antique Pistol","Lava Thrower","Inventor's Rifle","Vandals","Revolver Sniper Rifle","Captain","Void Energy Pistol","Destruction System","Circus Cannon","Military Grenade Launcher","Cyborg Hands","Ritual Blade","Tactical Rifle","Sparkling Eel","Alien Sniper Rifle","Neutralizer","Bone Sniper Rifle","Prehistoric Shotgun","Shaman's Bow","Poison Darts","Primal Beast","Eye of Ra","Gum Rifle","Bone Crusher","Soda Launcher","Rocket Launcher","Royal Fighter","Royal Revolver","Royal Sniper Rifle","Royal Ashbringer","Penilizer","Football Cannon","Fan’s Revolver","Cursed Pirate","Viking","Gladiator","Heart of Volcano","Blighter","Neon Fighter","Warmaster","Combat Slinger","Paintball Rifle","Laser Rings","Particle Accelerator","Ritual Revolvers","Spell of Bats","Deadman's Rifle","Witchunter","Industrial Nailer","Trick and Treat","Ghost Launcher","Poisonous Vine","Johnny P.","Witch Broom","Cyber Slicer","Ricochet Rifle","Cyber Revolver","Neon Lightning","Quadruple Death","Rocket Hands","Cyber Laser","Skull Crossbow","Sniper Cyber Module","Cop's Club","Ultimatum","Lamp Revolver","Laser Carbine","Mercenary Flamethrower","Hand Gatling","Steam Gun","Gold Fever","Bow of Spirits","Corn Launcher","Thanksgiving Pie","Triple Musket","Explosive Rifle","Eckodile Rifle","Like Launcher","Snap Attacker","Liquid Fire","Electric Vortex","Cursed Staff","Blinder","Peppermint Guardians","Freon","Cooler","Frosty Railgun","Winter Staff","Splinter","Total Annihilator","Torpedo Launcher","Sawed-Off Shotguns","Gauss Cannon","Ultra Beam","Sock Bomber","Energy Assault Rifle","Plasma Minigun","Frost Shot","Gauntlet of Power","Space Devastator","Snow Blaster","Alien Bouncer","Alien Shuriken Thrower","Spruce Pistol","Christmas Spirit","Ice Lightning","Ice Generator","Ice Cream Pistol","Whip with Cake","Festive Guitar","Evil Snowman","Gingerbread Homezooka","Portable Gift Factory","Saturn","Venus & Mercury","Asteroid","Comet","Meteor Shower","Necklace of the Ice King","Ice Paws","Frozen Lich Bow","Gift Stitcher","Ice King's Fury","Gifted Revolvers","Yetti Spirit","Oh Deer","New Year Defender","Candy Axe","Cold Silence","Proton Freezer","Cryolator","Cyber Machine Gun","Cyber Pistol","Shock (Weapon)","Cyber Rifle","Cyber Rocket Launcher","Mini Acid Spray","Propitiator","Pixel-Cola Refresher","Overseer","Instigator","Storm","Semi-Auto Shotgun","Stinger 3000","Airstrike Laptop","Deadly Digital System","Night Hunter","Spec Ops Pistol","Tactical Knife","Hand Minigun","Heavy Sniper Rifle","Armadillo","Police Zapper","Temple Guardian","Healing Carp","Moon Halberd","Flaming Skull","Forest Sniper Bow","Agent Valentine","Lovebirds","Serenade","Heartbreakers","Succubus","Ten O'Clock Postman","Harpy","Runic Hammer","Mithril Rifle","Arahna Bite","Medusa","Big B's Oven","Cookie Minigun","Mr. Mixer","Enchanted Blades","Alchemist Staff","System Admin","Flash Drive","Disconnector","Network Streamer","Antivirus","BIG DATA","Cyclops Sling","Rainbow Dispenser","Rainbow Destroyer","Mister L.","Adamant Claws","Hypersound Uzi","Double Gum","Black Hole","Protector of Peace","Portalius Wrath","Chipping Whip","Portalium Rifle","Nuclear Rifle","Deadly Umbrella","Big BANG! Revolver","Acid Shotgun","Bat'o'Hawk","Combat Gauntlet","Spider Sense","Werewolf","Sharp Flame","Charged Injector","Garbage Rifle","Firefighter","Huge Boy","Fatal Melter","Dual Anger","Brutal Thinner","Liquidator Z1","Eliminator Z2","Pursuer Z3","Pixelgun","Block Rifle","Block Shotgun","Block Flamethrower","Plastic Rifle","Plastic Bazooka","Plastic Carabin","Cloud Launcher","Pulling Sucker Gun","Witch Doctor","Portal Cannon","Healing Staff","Laser Ray Rifle","Clockwork Cannon","Transformed Blaster","Transformed Machine Gun","Witch's Sheep Cauldron","Combat Darts","Throwing Spears","Aloha! Boom Boom!","Professional Bow","Artefact","Ouroboros","Sharp-eyed Courier","Emitter of Uncertainty","Scouter's Rifle","Knife and Compass","Mega-Horn","Raccoon With a Pipe","Werewolf Paws","Ice Cream Thrower","Orange Killer","Soda + Pop","Pyro 1116","Sparkling Hydra","Tiny Resizer","Pawn's Gun","Knight's Axe","Battle Rook","Inevitability","Checkmate","Proud Eagle","Sly Wolf","Brave Lion","Offensive Catapult","Battle Horn","Amazon's Sharp Ring","Exquisite Bagpipes","Pew Pew Rifle","Pixel Stream Sword","Tube Backpack","Supershot Rifle","Hyper Mega Cannon","Digital Sunrise","Laser Cycler","Wave Pulser","Arcade Rifle","Arcade Flamethrower","Fatality Hook","Fireball Gauntlet","Anubis","Duck Hunter","Disc Battle Station","Holy Shotgun","Aspen Spear","Dual Hunter Crossbows","Plague Purifier","Oppressor of Lives","Sword of Silence","Hot Greetings","Cooking Totem","Spiritual Rifle","Storm of All Seas","Hard Corn","Neutron Pulsator","Cracker Gun","Royal Marriage Officiant","Snow Queen Wand","Heroic Epee","Ice Club","Last Squeak","Fierce Pack","Mouse Scepter","Ice Chaser","Sneaky Pistol","Coal Frightener","Spirit Staff","Offensive Fireworks","Sharp Fans","River Dragon","Explosive Lemonade","Fire Spirit","Thunder Storm","Water Blades","Deadly Stings","Dragon Bite","Ancient Scroll","Potato Implant","AI Pistol","Super Drill","Meteorite Destroyer","Gravitator","Zap Blaster","Pew Blaster","Boom Blaster","Psionic Sporethrower","Poisonous Grasshopper","Shrimposaur","Desert Fighter","Egg Colorant","Hocus Pocus","Bunny Smasher","A-Killer","Carrot Crossbow","Watchy-Snipy","Spinny-Shooty","Pully-Blasty","Chickaboom!","Battle Grainthrowers","Last Cry","Iron Sword","Dragon Energy Emitter","Fist of Fate","Demon Catcher","Aboard Puncher","Deadly Tail","Sword Soul Card","Lance Soul Card","Bow Soul Card","Vertical Grip Device","Siege Mode Gauntlet","One-Punch Gauntlet","Treasurer","Shell Bubbler","Tide Bracers","Call of Sirens","Deep Ambusher","Cthulhu Legacy","Mooring Anchor","Heavy Drill Rifle","Rivet Gun","Submarine Drone Station","Echo Scanner","Underwater Carbine","Project 'Dolphin'","Project 'Rapid Flock'","Project 'Marlin'","Advanced Scout Rifle (Mythical version)","Harsh Punisher (Mythical version)","Manual Inferno (Mythical version)","Offensive Rocket System (Mythical version)","Headhunter Pistols (Mythical version)","Thunderbolt","Spear of War","Aphrodite Crossbow","Winged Revolver","Ferocious Poleaxe","Cerberus","Conductor of Souls","Triple Bite","Wrath of Fire","Earth Tremor","Primal Cold","Boar's Roar","Gorgon Head","Invincible Lion","Advanced Scout Rifle (Legendary version)","Harsh Punisher (Legendary version)","Manual Inferno (Legendary version)","Offensive Rocket System (Legendary version)","Headhunter Pistols (Legendary version)","Debugger","Like Booster","Ban Hammer","VR Blasters","Killer Chord","Invigorating Awaker","Total Planner","Money Rain","Render Station","Gun Force PGX","Digital Drawing Pad","Cheater Hunter","Super Fixer","Bug Cleaner","G00dC0de","Ambush Crocorifle","Bubble Slasher","Disguised Rifle","Enchanting Altar","Spirit Mask","Magical Boomerang","Foam Sword","Sand Tower Pistol","Waterman's Rifle","High Pressure Rifle","Sharkado","Shower Sprinkler","Star Shard","Solar Flare","Magnetic Storm","Ectoplasmic Grenade Launcher","Reversed Pistol","Activity Neutralizer","Goo Substance Rifle","Goo Substance Pistol","Goo Substance Scythe","PGA-06 TV","PGA-04 Doll","PGA-02 Gates","PGA-01 Living Rifle","PGA-05 Slender Touch","PGA-03 Screaming Saw","Atomic Splitter","Dimerian Divider","Restructurer","Anomaly Concentrator","BLOQ Plasma Module","Plasma Beast","Drone Combat Station","Maximum Cruelty","Represser","Fear and Despair","Rude Bully","Laser Ninja","Rebel","Mobile Outpost","Outlaw Catcher","Fair Sheriff","Minigun Cyber Module","MED Surgery Module","Supply Airdrop","Battle Falcon","Super-Mega-Expedition-Tool","Pneumatic Needle Rifle","Summon Dagger","Frozen Heart","Eye of the Storm","Frosty Fangs","Combat Candy","HO-HO! Rocket","Explosive Caramel","Candy Revolver","Elven Killer Rifle","Assassin's Daggers","Farewell Volley","Mystic Potion","Siege Crossbow","Storm Poleaxes","Prophet Staff","Thor Hammer","Geri & Freki","Sleipnir","Huginn","Deceitful Cheater","Cunning Flame","Harbinger of Ragnarok","Sun Eater","Call of Valhalla","Winged Bow","War Horse","Glitched Machine Gun","Perfect Rocket Launcher","NOOB Rifle","Evil Rubik's Cube","Super Pixel Gun","Final Verdict","Piercer","Borders Eraser","Demonic Crusher","Dual Beam","Ronin","Brutal Rainbow","Tomianom","Time Scythe","Cyber Cat Lantern","Laser Cat Rifle","Bomber Cat","Evidence Hunter","Patrol Officer 747","Redneck's Bazooka","Mayor's Trophy Revolver","Pixel Cola Cans","Large-Caliber Machine Gun","Tactical Pistol","Mammoth","Debts Collector","Godfathers Assistant","Black Label","Plan B","Traitor","Incinerator","Saboteur","Rock Smelter","Tunnel Riveter","Complete Grinder","Drilling Railgun","Plasmatic Digger","Portal Rifle","Extracting Ray Pistol","Terramorphing Stone","Aerosaur Rifle","Bone'o'Saur Sword","Heavy Spik'o'Saur","Ritual Rifle","Tooth of Fate","Staff of Crystals Will","Sparkling Horn","Adventure Swords","Flat Rifle","Secret Burger Factory","Charles","Ink Spreader","Eraser Crossbow","Pencil Spear","Bro Steamer","Sad Magnet","Anvil Pistol","Masterly Trumpet","Blot Axe","Blot Shotgun","Blot Cannon","Combat Overlords","Sentence","Project Red Button","Lives Harvester","Jet Dragon","Thermal Ultra Scythe","Super Simple-Dimple","Chromakey VFX Camera","Dance Rifle","Rifle.me Online","Virtual Concert","Sharp Chaser","Zap Katana","Cyber Lantern","BRO Rifle","Ninja Swordpad","Hype Yo-Yo","Streaming Beast","Dislike","Likes Absorber","Bad Comment","Mysterious Obelisk","Ritual Embalmer","Sacred Cat Will","Sentinel","Howl of the Mummy","Punishing Light","Piercing Gaze of RA","Eternal Sun's Wrath","Fair Judge","Black Obelisk","Plaguebringer","Scarab Shrine","Disturbed Sarcophagus","Royal Cobra Spirit","Pharaon III Breath","Ultrasonic Rifle","Electronics Burner","Hounds RX03","System 'Scorpion'","'Rumble'","Huge Wrench","Experimental Rifle","Jet Spear","Tactical Scorcher","Siege Minigun","Thermal Mecha Knife","Disruptive Howitzer","Anti-Aircraft Module","Engineering Saw Thrower","Corpuscular Revolver","Uranium Grenade Launcher","Golden Eagles","Wayfarer","Fate","Holographic Cards","Mutation Cannon","Hungry Flower","C4 Basket","Head of Statue","Tank Turret","Space Parasite Dreadnought","Space Parasite Fighter","Alien Parasite Mothership","Bad Clown","Disturbing Balloons","Clown Chainsaw","Irradiated SMG","Mutant Fish","Spiky Limbs","Deadly Flower","Automatic Injector","Antidote Missile Launcher","Purifying Shotgun","Mutant Slayer","Mutagen Neutralizer","Full Moon Rifle","Fireflies Blessing","Branch of Wisdom","Eternal Light","Mirrorer","Otherworldly Wanderer","Dark Deer Bow","Reflected Santa Sword","Combat Fireplace","Combat Candy Machine","Gift Stealer","Tricky Gingerbread","End of Fairytale","Fairy's Poleaxe","Butterfly Eater","Handy Darts","Spirits Whisper","Makeshift Piercer","Battle Kusarigama","Temple Claws","Deadly Swirl","Storm Bringer","Clouds Disperser","Field Plasma Station","Still Working Windmill","Thunder Formula","Bubble G.U.M 01","TNT Thrower","AK 5.56","Fake Pistol","Swords of Intelligence","Controlled Drone System","Deadly Beamer","Elves Energy Crystal","Tricky Electrizer","Plague Spreader","Ancestors Curse","Moon Hunter Bow","Heavy Elf Crossbow","Lightbringer","Ice Giant Rifle","Moonblades","Eco-rifle","Solar Lens","Blacklight Pistol","Supernova Generator","Event Horizon","Unfriendly Bat","Tamagochi Revolver","Mad Colorer","Nachos Shotgun","Shockorizer","Crescent Power","ODM Special Gear","Deadly Eye Vengeance","Doubled Quirk","Grenade Quirk","Guardian Spirit","Ghost Epee","The Sorting Pistol","Raven Staff","Corrupted Speelbook","Additional Biting Limb"}
		
	menu = gg.choice({" ⭐ Favorite Weapons", " ➡️ Clan Weapons", " ➡️ Choose Weapons", " ➡️ All Weapons", " 🔎 Search Weapons"}, nil, "Made with ❤️ by kyh#8317\n \nVisite my Github:\n[ github.com/Noisier/Kyh-Workspace ]")

	if menu == 1 then
		favorite_weapons_menu()
	elseif menu == 2 then
		clan_weapons_menu()
	elseif menu == 3 or menu == 4 then
		choose_weapons_menu(all_ids, all_names, menu == 4, "main")
	elseif menu == 5 then
		search_weapons(all_ids, all_names, "main")
	end
end

load_favorites()
main()
