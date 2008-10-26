package {	import flash.display.DisplayObject;	import flash.display.Sprite;	import flash.events.Event;	import com.lia.utils.*;		/**	 * @author shanem	 */	public class ObjectPoolTest extends Sprite {		private var sop : SimpleObjectPool;		private var qop : QueuedObjectPool;		private var cop : CappedObjectPool;		private var sList : Array = [];		private var qList : Array = [];		private var cList : Array = [];		public function ObjectPoolTest() {			sop = new SimpleObjectPool(create, clean);			cop = new CappedObjectPool(create, clean, 500, 2500);			qop = new QueuedObjectPool(create, clean, 500, 2500, onQueue, onTimeout);						var item : DisplayObject;			var num : int = 5000;			for(var i : int = 0;i < num; i++) {				item = sop.checkOut();				sList.push(item);			}						for(i = 0;i < num; i++) {				item = cop.checkOut();				if(item != null) {					cList.push(item);				} else {					//trace("could not add at : " + i);				}			}									for(i = 0;i < num; i++) {				item = qop.checkOut();				if(item != null) {					qList.push(item);				}			}						this.addEventListener(Event.ENTER_FRAME, draw);		}		private function draw(e : Event) : void {			if(sList.length > 0) {				sop.checkIn(sList.pop());			}						if(qList.length > 0) {				qop.checkIn(qList.pop());			}		}		private function create() : DisplayObject {			return new Sprite();		}		private function clean(item : DisplayObject) : void {			//trace("clean : " + item);		}		private function onQueue(item : DisplayObject) : void {			trace("on queue : " + item);		}		private function onTimeout() : void {			trace("on timeout");		}	}}