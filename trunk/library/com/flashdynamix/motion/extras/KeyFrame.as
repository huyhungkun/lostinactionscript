package com.flashdynamix.motion.extras {
	import flash.display.MovieClip;	

	 * @author FlashDynamix
	 * Allows for keyframe tweening of a MovieClip
	 */
	public class KeyFrame {
		
		public var item : MovieClip;

		 * @item the instance of MovieClip to tween it's keyframe
		 */
		public function KeyFrame(item : MovieClip) {
			this.item = item;
			current = item.currentFrame;
		}

			current = num;
			item.gotoAndStop(Math.round(num));
		}

			return current;
		}
	}
}