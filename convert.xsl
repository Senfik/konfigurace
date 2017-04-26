<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	<xsl:template match="/">
	{
		<xsl:for-each select="Option">
		"Option": {
			<xsl:for-each select="Gameplay">
			"Gameplay": { 				
				"Mouse_Trape-enabled": "<xsl:value-of select="Mouse_Trape/@enabled"/>",
				"chat-enabled": "<xsl:value-of select="chat/@enabled"/>",
				"server": <xsl:value-of select="server"/>,
				"speech-lang": "<xsl:value-of select="Language/@lang"/>",
				"Auto_Save-enabled": <xsl:value-of select="autosave/@enabled"/>
			}</xsl:for-each>,
			<xsl:for-each select="Interface">
			"Interface": {
				"Icons_Type": <xsl:value-of select="Icons_Type"/>,
				"Label_size": "<xsl:value-of select="Label_size"/>",
				"Display_Frontline": <xsl:value-of select="Display_Frontline"/>,
				"HUD_size": <xsl:value-of select="HUD_size"/>,
				"Display_Minimap-enabled": <xsl:value-of select="Display_Minimap/@enabled"/>,
				"Show_unit_name-enabled": <xsl:value-of select="Show_unit_name/@enabled"/>,
				"unit_scaling-scale": <xsl:value-of select="unit_scaling/@scale"/>
			}</xsl:for-each>,
      <xsl:for-each select="Controls">
			"Controls": {
				"input": "<xsl:value-of select="input"/>",
				"sensitivity": <xsl:value-of select="sensitivity"/>,
				"inverted_mouse": {
					"-horizontal": <xsl:value-of select="inverted_mouse/@horizontal"/>,
					"-vertical": <xsl:value-of select="inverted_mouse/@vertical"/>
        },
        "Camera": {  
          "Up": "<xsl:value-of select="Camera/Up"/>",
          "Left": "<xsl:value-of select="Camera/Left"/>",
          "Right": "<xsl:value-of select="Camera/Right"/>",
          "Down": "<xsl:value-of select="Camera/Down"/>"
         },
        "Flare": {
          "Attack": "<xsl:value-of select="Flare/Attack"/>",
          "Defend": "<xsl:value-of select="Flare/Defend"/>",
          "Help": "<xsl:value-of select="Flare/Help"/>",
          "Custom_message": "<xsl:value-of select="Flare/Custom_message"/>"
        },
        "Deployment_Menu": "<xsl:value-of select="Deployment_Menu"/>",
        "Unit_Information": "<xsl:value-of select="Unit_Information"/>",        
        "Action": {
          "Move_Fast": "<xsl:value-of select="Action/Move_Fast"/>",
          "Attack": "<xsl:value-of select="Action/Attack"/>",
          "Unload_At_Position": "<xsl:value-of select="Action/Unload_At_Position"/>",
          "Unload": "<xsl:value-of select="Action/Unload"/>",
          "Reverse": "<xsl:value-of select="Action/Reverse"/>",
          "Call_artillery": "<xsl:value-of select="Action/Call_artillery"/>",
          "Fall_back": "<xsl:value-of select="Action/Fall_back"/>"
        }
			}</xsl:for-each>,
      <xsl:for-each select="Audio">
			"Audio": {
				"volume": {
					"-enabled": <xsl:value-of select="volume/@enabled"/>,
					"Master_Volume": <xsl:value-of select="volume/Master_Volume"/>,
					"Music_Volume": <xsl:value-of select="volume/Music_Volume"/>,
					"Voice_Volume": <xsl:value-of select="volume/Voice_Volume"/>,
					"SFX_Volume": <xsl:value-of select="volume/SFX_Volume"/>,          
					"Ambiance_Volume": <xsl:value-of select="volume/Ambiance_Volume"/>
				},
        "speech-lang": "<xsl:value-of select="speech/@lang"/>",
        "subtitles": {
					"-lang": "<xsl:value-of select="subtitles/@lang"/>",
					"-enabled": <xsl:value-of select="subtitles/@enabled"/>
				},
				"voicechat": {
					"-enabled": <xsl:value-of select="voicechat/@enabled"/>,
					"volume": <xsl:value-of select="voicechat/volume"/>,
					"mode": "<xsl:value-of select="voicechat/mode"/>",
					"microphone_sensitivity": <xsl:value-of select="voicechat/microphone_sensitivity"/>
				}
			}</xsl:for-each>,
			<xsl:for-each select="Video">
			"Video": {
					"Resolution": "<xsl:value-of select="Resolution"/>",
					"Window_types": "<xsl:value-of select="Window_types"/>",
					"gamma-value": <xsl:value-of select="gamma/@value"/>,
					"brightness-value": <xsl:value-of select="brightness/@value"/>,
					"colorblind_mode-enabled": <xsl:value-of select="colorblind_mode/@enabled"/>,
					"vertical_sync-enabled": <xsl:value-of select="vertical_sync/@enabled"/>,
				  "Advance_Video": {
				    "Anti_Aliasing": "<xsl:value-of select="Advance_Video/Anti_Aliasing"/>",
				    "Render_reduction": "<xsl:value-of select="Advance_Video/Render_reduction"/>",
				    "Shader_Quality": "<xsl:value-of select="Advance_Video/Shader_Quality"/>",
				    "Texture_Quality": "<xsl:value-of select="Advance_Video/Texture_Quality"/>",
				    "Texture_Anisotropy": "<xsl:value-of select="Advance_Video/Texture_Anisotropy"/>",
				    "Shadow_texture_quality": "<xsl:value-of select="Advance_Video/Shadow_texture_quality"/>",
		    		"Shadow_anti_aliasing": "<xsl:value-of select="Advance_Video/Shadow_anti_aliasing"/>",
		    		"Model_Quality": "<xsl:value-of select="Advance_Video/Model_Quality"/>",
		    		"Ground_Quality": "<xsl:value-of select="Advance_Video/Ground_Quality"/>",
		    		"Terrain_resolution": "<xsl:value-of select="Advance_Video/Terrain_resolution"/>",
		    		"Water_Quality": "<xsl:value-of select="Advance_Video/Water_Quality"/>",
		    		"Imposter_texture_quality": "<xsl:value-of select="Advance_Video/Imposter_texture_quality"/>",
		    		"Dynamic_Light_Quality": "<xsl:value-of select="Advance_Video/Dynamic_Light_Quality"/>",
		    		"motion_blur-enabled": <xsl:value-of select="Advance_Video/@enabled"/>
          }
			}</xsl:for-each>
		}
		</xsl:for-each>
	}
	</xsl:template>
</xsl:stylesheet>