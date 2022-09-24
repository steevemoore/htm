
-- Abstract: widget.newProgressView() unit test
-- Code is MIT licensed; see https://www.coronalabs.com/links/code/license
---------------------------------------------------------------------------------------

local widget = require( "widget" )
local composer = require( "composer" )
local scene = composer.newScene()

 
--Forward reference for test function timer
local testTimer = nil
local Total = 0.0
local percent
local value1
local byte 
local mydownload


local function switchtoscene() composer.gotoScene( "Verify_device_ID" ) end

--























function scene:create( event )
	local sceneGroup = self.view
	
		 -------------le fond d'ecran----
local anleekran = display.newImageRect( sceneGroup, "anleekran.png", 3800, 2560 )
anleekran.x = display.contentCenterX
anleekran.y = display.contentCenterY
--anleekran.alpha=0.7



local function unzip()

composer.gotoScen("classe1a")
end


















----------- bar de defilement de la progression ---------------------

	-- Create a new progress view object
	local newProgressView = widget.newProgressView
		{
		left = 0,
		top = 20,
		width = 1350,
       isAnimated = true,
	}
                     
	newProgressView.x = display.contentWidth * 0.5 
	newProgressView.y = display.contentCenterY
	

	sceneGroup:insert( newProgressView )

	local currentProgress = 0.0



--------------===========================================-----------------------------------------------	
 notice = display.newText( sceneGroup, "Téléchargement des fichiers nécéssaire au démarrage", display.contentCenterX, 223, native.systemFont, 60  )
 notice:setFillColor( 0, 0, 0 )                 

--------------===========================================-----------------------------------------------	
 mypatience = display.newText( sceneGroup, "Patientez un instant S.V.P !", display.contentCenterX, 473, native.systemFont, 60  )
 mypatience:setFillColor( 0, 0, 0 )                 

	----------------------------------------------------------------------------------------	
 mydownload = display.newText( sceneGroup, "  ", display.contentCenterX, 983, native.systemFont, 60  )
 mydownload:setFillColor( 0, 0, 0 )                 

	----------------------------------------------------------------------------------------	
 mypercent = display.newText( sceneGroup, " ", 2150, display.contentCenterY, native.systemFont, 60  )
 mypercent:setFillColor( 0, 0, 0 )                 


--------------================================================


 
------------------==========************=====================

  

local function networkListener( event )
    if ( event.isError ) then
        --mydownload.text = event.response
        mydownload.text = "Erreur de réseau " .. event.status
        mypatience.text = " "
        notice.text = ""
    elseif ( event.phase == "began" ) then
           if ( event.bytesEstimated <= 0 ) then
      --   mydownload.text = "Download starting, size unknown" 
           mydownload.text = "Démarrage du Téléchargement, taille du fichier inconnu" 
           else
       --  mydownload.text = "Download starting, estimated size: " .. event.bytesEstimated 
           mydownload.text = "Taille du fichier: " .. event.bytesEstimated  .. "  byte (s)"
           end
    elseif ( event.phase == "progress" ) then
           if ( event.bytesEstimated <= 0 ) then
           mydownload.text =  "Download progress: " .. event.bytesTransferred 
           mydownload.text =  "Téléchargement en cours: " .. event.bytesTransferred 
           else
       ---    mydownload.text =  "Download progress: " .. event.bytesTransferred .. " of estimated: " .. event.bytesEstimated 
         mydownload.text = event.bytesTransferred .. " byte(s) téléchargé (s) dans : " .. event.bytesEstimated .."byte(s)"

              Total= event.bytesEstimated   
              value1 = event.bytesTransferred 
              percent = value1*100/Total           
              mypercent.text = ( string.format("%.2f", percent ).." %" )
	         testTimer = timer.performWithDelay( 100, function( event )

if ( percent > 1) then currentProgress = 0.01 end
if ( percent > 2) then currentProgress = 0.02 end
if ( percent > 3) then currentProgress = 0.03 end
if ( percent > 4) then currentProgress = 0.04 end
if ( percent > 5) then currentProgress = 0.05 end
if ( percent > 6) then currentProgress = 0.06 end
if ( percent > 7) then currentProgress = 0.07 end
if ( percent > 8) then currentProgress = 0.08 end
if ( percent > 9) then currentProgress = 0.09 end
if ( percent > 10) then currentProgress = 0.1 end
if ( percent > 11) then currentProgress = 0.11 end
if ( percent > 12) then currentProgress = 0.12 end
if ( percent > 13) then currentProgress = 0.13 end
if ( percent > 14) then currentProgress = 0.14 end
if ( percent > 15) then currentProgress = 0.15 end
if ( percent > 16) then currentProgress = 0.16 end
if ( percent > 17) then currentProgress = 0.17 end
if ( percent > 18) then currentProgress = 0.18 end
if ( percent > 19) then currentProgress = 0.19 end
if ( percent > 20) then currentProgress = 0.2 end
if ( percent > 21) then currentProgress = 0.21 end
if ( percent > 22) then currentProgress = 0.22 end
if ( percent > 23) then currentProgress = 0.23 end
if ( percent > 24) then currentProgress = 0.24 end
if ( percent > 25) then currentProgress = 0.25 end
if ( percent > 26) then currentProgress = 0.26 end
if ( percent > 27) then currentProgress = 0.27 end
if ( percent > 28) then currentProgress = 0.28 end
if ( percent > 29) then currentProgress = 0.29 end
if ( percent > 30) then currentProgress = 0.3 end
if ( percent > 31) then currentProgress = 0.31 end
if ( percent > 32) then currentProgress = 0.32 end
if ( percent > 33) then currentProgress = 0.33 end
if ( percent > 34) then currentProgress = 0.34 end
if ( percent > 35) then currentProgress = 0.35 end
if ( percent > 36) then currentProgress = 0.36 end
if ( percent > 37) then currentProgress = 0.37 end
if ( percent > 38) then currentProgress = 0.38 end
if ( percent > 39) then currentProgress = 0.39 end
if ( percent > 40) then currentProgress = 0.4 end
if ( percent > 41) then currentProgress = 0.41 end
if ( percent > 42) then currentProgress = 0.42 end
if ( percent > 43) then currentProgress = 0.43 end
if ( percent > 44) then currentProgress = 0.44 end
if ( percent > 45) then currentProgress = 0.45 end
if ( percent > 46) then currentProgress = 0.46 end
if ( percent > 47) then currentProgress = 0.47 end
if ( percent > 48) then currentProgress = 0.48 end
if ( percent > 49) then currentProgress = 0.49 end
if ( percent > 50) then currentProgress = 0.5 end

if ( percent > 51) then currentProgress = 0.51 end
if ( percent > 52) then currentProgress = 0.52 end
if ( percent > 53) then currentProgress = 0.53 end
if ( percent > 54) then currentProgress = 0.54 end
if ( percent > 55) then currentProgress = 0.55 end
if ( percent > 56) then currentProgress = 0.56 end
if ( percent > 57) then currentProgress = 0.57 end
if ( percent > 58) then currentProgress = 0.58 end
if ( percent > 59) then currentProgress = 0.59 end
if ( percent > 60) then currentProgress = 0.6 end
if ( percent > 61) then currentProgress = 0.61 end
if ( percent > 62) then currentProgress = 0.62 end
if ( percent > 63) then currentProgress = 0.63 end
if ( percent > 64) then currentProgress = 0.64 end
if ( percent > 65) then currentProgress = 0.65 end
if ( percent > 66) then currentProgress = 0.66 end
if ( percent > 67) then currentProgress = 0.67 end
if ( percent > 68) then currentProgress = 0.68 end
if ( percent > 69) then currentProgress = 0.69 end
if ( percent > 70) then currentProgress = 0.7 end
if ( percent > 71) then currentProgress = 0.71 end
if ( percent > 72) then currentProgress = 0.72 end
if ( percent > 73) then currentProgress = 0.73 end
if ( percent > 74) then currentProgress = 0.74 end
if ( percent > 75) then currentProgress = 0.75 end
if ( percent > 76) then currentProgress = 0.76 end
if ( percent > 77) then currentProgress = 0.77 end
if ( percent > 78) then currentProgress = 0.78 end
if ( percent > 79) then currentProgress = 0.79 end
if ( percent > 80) then currentProgress = 0.8 end
if ( percent > 81) then currentProgress = 0.81 end
if ( percent > 82) then currentProgress = 0.82 end
if ( percent > 83) then currentProgress = 0.83 end
if ( percent > 84) then currentProgress = 0.84 end
if ( percent > 85) then currentProgress = 0.85 end
if ( percent > 86) then currentProgress = 0.86 end
if ( percent > 87) then currentProgress = 0.87 end
if ( percent > 88) then currentProgress = 0.88 end
if ( percent > 89) then currentProgress = 0.89 end
if ( percent > 90) then currentProgress = 0.9 end
if ( percent > 91) then currentProgress = 0.91 end
if ( percent > 92) then currentProgress = 0.92 end
if ( percent > 93) then currentProgress = 0.93 end
if ( percent > 94) then currentProgress = 0.94 end
if ( percent > 95) then currentProgress = 0.95 end
if ( percent > 96) then currentProgress = 0.96 end
if ( percent > 97) then currentProgress = 0.97 end
if ( percent > 98) then currentProgress = 0.98 end
if ( percent > 99) then currentProgress = 0.99 end
if ( percent == 100) then currentProgress = 1  end
		newProgressView:setProgress( currentProgress) 
	end, 0 )




        end
     elseif ( event.phase == "ended" ) then 
     	byte = event.bytesTransferred
      
 --mydownload.text = "Téléchargement terminé, total bytes transférés: " .. event.bytesTransferred 
        mypatience.text = " " 
       notice.text = " "
    if(event.bytesTransferred < event.bytesEstimated ) then mydownload.text = "Téléchargement terminé sans succès " .. event.bytesTransferred .. " bytes copié(s) "  end
    if( event.bytesTransferred == event.bytesEstimated)then 
  --mydownload.text = "Téléchargement terminé  " .. event.bytesTransferred .. " byte(s) copié(s) "  end
   


  if ( byte<1000 ) then mydownload.text = "Téléchargement terminé  " .. byte .. " byte(s) copié(s) "       
testTimer = timer.performWithDelay( 5000, function()    mydownload.text = " S.V.P ! Patientez pendant la décompression des fichiers "    unzip()  	 end, 1) 

elseif ( byte>1000 ) then mydownload.text = "Téléchargement terminé  ".. ( string.format("%.2f", byte/1024 ).." kb  copié(s)" )  
testTimer = timer.performWithDelay( 5000, function() 	mydownload.text = " S.V.P ! Patientez pendant la décompression des fichiers"    unzip()  	 end, 1) 
 

elseif ( byte>1000000 ) then mydownload.text = "Téléchargement terminé  ".. ( string.format("%.2f", byte/1000000 ).." Mb  copié(s)" )
testTimer = timer.performWithDelay( 5000, function()    mydownload.text = " S.V.P ! Patientez pendant la décompression des fichiers "	unzip()  	 end, 1) 

elseif ( byte>1000000000 ) then mydownload.text = "Téléchargement terminé  ".. ( string.format("%.2f", byte/1000000000 ).." Gb  copié(s)" )  
testTimer = timer.performWithDelay( 200, function() mydownload.text = " S.V.P ! Patientez pendant la décompression des fichiers "  	unzip()  	 end, 1) 
 




  end
  end
 


end
end
 local params = {}
-- Tell network.request() that we want the "began" and "progress" events:
params.progress = "download"
-- Tell network.request() that we want the output to go to a file:


params.response = { filename = "ecolage.zip", baseDirectory = system.TemporaryDirectory }
--network.request( "https://rr2---sn-o5ujvh-252l.googlevideo.com/videoplayback?expire=1661560642&ei=4hIJY9rVIZCi0_wP2teV6AE&ip=190.115.178.118&id=o-AJWF74K7IJmve_p4je1EoCP0grBa5YzAZfTb7_scWYIg&itag=137&aitags=133%2C134%2C135%2C136%2C137%2C160%2C242%2C243%2C244%2C247%2C248%2C278&source=youtube&requiressl=yes&mh=wB&mm=31%2C29&mn=sn-o5ujvh-252l%2Csn-hp57ynlr&ms=au%2Crdu&mv=m&mvi=2&pcm2cms=yes&pl=26&initcwndbps=63750&spc=lT-KhiNsKzCBn7RqP4gU3vpjxTkwqNd20XPWPqBQ4rAI&vprv=1&mime=video%2Fmp4&ns=KZhcpqSbClNhozYMpdwhtB0H&gir=yes&clen=33698126&dur=689.240&lmt=1656973061495836&mt=1661538559&fvip=1&keepalive=yes&fexp=24001373%2C24007246&c=WEB&rbqsm=fr&txp=5319224&n=PKXi9uI4Y8_muMbqVQ0eg&sparams=expire%2Cei%2Cip%2Cid%2Caitags%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIgCZjQ-mqhryZiPUFICo7c8ElbcXMh-WPpMovv-KP_XLICIQDxJlcw-qE78iQplrY1t4a2IJYvjn0CUeMIpetHHagT3w%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAP0nPPUAT9lxxHfo_J1NvykpPb3fwYlNn-DJs2eQO7zLAiBW_q3347AYlCTzKiLFKVgnUJkiw6PD5RZh2JGBbqJgxg%3D%3D", "GET", networkListener,  params )
network.request( "https://github.com/steevemoore/elctora/raw/main/ecolage.zip", "GET", networkListener,  params )












end


function scene:hide( event )
	if ( "did" == event.phase ) then
		--Cancel test timer if active
		if testTimer ~= nil then
			timer.cancel( testTimer )
			testTimer = nil
		end
	
		composer.removeHidden( false )

	end
end

scene:addEventListener( "create", scene )
scene:addEventListener( "hide", scene )

return scene
