package com.flashdynamix.motion.extras {
		private static const ID : Array = [1,0,0,0,0,
		private static const LUMA_R : Number = 0.212671;
		public var current : Array;
		private var _position : Number = 0;
		public function ColorMatrix(item : DisplayObject) {
		
		public function set position(num : Number) : void {
		public function get position() : Number {
		public function colorize(color : uint, amount : Number = 1) : void { 
		public function threshold(amount : Number) : void {
		public function hue(degree : Number) : void {
		public function brightness(offset : Number) : void {
		public function saturation(offset : Number) : void {
		public function contrast(offset : Number) : void {
		private function apply(mtx : Array) : void {