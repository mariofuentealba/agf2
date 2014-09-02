package VO
{
	import mx.collections.ArrayCollection;

	[Bindable] public class FormulaVO extends ObjectFiller
	{
		public var id_formula:String;
		public var formula:String;
		public var arrCampos:ArrayCollection = new ArrayCollection();
		public var _default:Boolean;
		public var arrEmpresas:ArrayCollection;
		public var CAMPO1:String;
		public var CAMPO2:String;
		public var CAMPO3:String;
		public var CAMPO4:String;
		public var CAMPO5:String;
		public var tipoc1:String;
		public var tipoc2:String;
		public var tipoc3:String;
		public var tipoc4:String;
		public var tipoc5:String;
		public var cod1:String;
		public var cod2:String;
		public var cod3:String;
		public var cod4:String;
		public var cod5:String;
		public var num_formula:String;
		
		
		public function FormulaVO()
		{
		}
	}
}