package com.flashdynamix.motion.layers {
		public function VectorLayer(items : Array = null) {
		public function get bitmapData() : BitmapData {
		public function add(item : IVector) : IVector {
		public function remove(effect : IVector) : Boolean {
		public function start() : void {
		public function stop() : void {
		public function clone() : VectorLayer {
		private function render(e : Event = null) : void {
		protected function addEvent(item : EventDispatcher, type : String, liststener : Function, priority : int = 0, useWeakReference : Boolean = true) : void {
		protected function removeEvent(item : EventDispatcher, type : String, listener : Function) : void {
		public function dispose() : void {