/**
 *        __       __               __ 
 *   ____/ /_ ____/ /______ _ ___  / /_
 *  / __  / / ___/ __/ ___/ / __ `/ __/
 * / /_/ / (__  ) / / /  / / /_/ / / 
 * \__,_/_/____/_/ /_/  /_/\__, /_/ 
 *                           / / 
 *                           \/ 
 * http://distriqt.com
 *
 * @author 		"Michael Archbold (ma&#64;distriqt.com)"
 * @created		08/01/2016
 * @copyright	http://distriqt.com/copyright/license.txt
 */
package com.distriqt.test.tenjinsdk
{
	import com.distriqt.extension.tenjinsdk.TenjinSDK;
	
	import flash.display.Bitmap;
	import flash.filesystem.File;
	import flash.geom.Rectangle;
	import flash.net.URLRequest;
	import flash.net.navigateToURL;
	import flash.utils.setTimeout;
	
	import starling.core.Starling;
	
	import starling.display.Image;
	import starling.display.Sprite;
	
	
	/**
	 */
	public class TenjinSDKTests extends Sprite
	{
		public static const TAG:String = "";
		
		private var _l:ILogger;
		
		
		private function log( log:String ):void
		{
			_l.log( TAG, log );
		}
		
		
		////////////////////////////////////////////////////////
		//	FUNCTIONALITY
		//
		
		public function TenjinSDKTests( logger:ILogger )
		{
			_l = logger;
			try
			{
				log( "TenjinSDK Supported: " + TenjinSDK.isSupported );
				if (TenjinSDK.isSupported)
				{
					log( "TenjinSDK Version:   " + TenjinSDK.service.version );
				}
			}
			catch (e:Error)
			{
				trace( e );
			}
		}
		
		
		////////////////////////////////////////////////////////
		//  
		//
		

		public function init():void
		{
			log( "init()" );
			TenjinSDK.instance.init( Config.TENJINSDK_KEY );
		}
		
		
		public function connect():void
		{
			log( "connect()" );
			TenjinSDK.instance.connect();
		}
		
		
		public function optIn():void
		{
			log( "optIn()" );
			TenjinSDK.instance.optIn();
		}
		
		
		public function optOut():void
		{
			log( "optOut()" );
			TenjinSDK.instance.optOut();
		}
		
		
		public function sendEvent():void
		{
			log( "sendEvent()" );
			TenjinSDK.instance.sendEventWithName( "test_event" );
		}
		
		
		public function sendEventWithValue():void
		{
			log( "sendEventWithValue()" );
			TenjinSDK.instance.sendEventWithNameAndValue( "test_event_value", 12 );
		}
		
		
		public function transaction():void
		{
			log( "transaction()" );
			TenjinSDK.instance.transaction(
					"com.distriqt.test.pack1",
					"AUD",
					0.99,
					1
			);
		}
		
		
	}
	
}
