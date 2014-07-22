package VO
{
	import mx.collections.ArrayCollection;

	[Bindable] public class FormulaVO extends ObjectFiller
	{
		public var formula:String;
		public var arrCampos:ArrayCollection;
		public var _default:Boolean;
		public var arrEmpresas:ArrayCollection;
		public function FormulaVO()
		{
		}
	}
}