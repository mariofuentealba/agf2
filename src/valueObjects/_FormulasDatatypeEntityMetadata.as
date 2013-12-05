
/**
 * This is a generated class and is not intended for modification.  
 */
package valueObjects
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.styles.StyleValidator;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import mx.events.ValidationResultEvent;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _FormulasDatatypeEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("num_formula", "campo1n", "campo3n", "tipoc2", "id_indice_financiero", "tipoc1", "campo5n", "tipoc5", "tipoc4", "tipoc3", "id_formula", "campo2n", "campo4n", "campo3", "cod3", "campo2", "cod2", "campo5", "cod1", "campo4", "sel", "campo1", "cod5", "formula", "cod4");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("num_formula", "campo1n", "campo3n", "tipoc2", "id_indice_financiero", "tipoc1", "campo5n", "tipoc5", "tipoc4", "tipoc3", "id_formula", "campo2n", "campo4n", "campo3", "cod3", "campo2", "cod2", "campo5", "cod1", "campo4", "sel", "campo1", "cod5", "formula", "cod4");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("num_formula", "campo1n", "campo3n", "tipoc2", "id_indice_financiero", "tipoc1", "campo5n", "tipoc5", "tipoc4", "tipoc3", "id_formula", "campo2n", "campo4n", "campo3", "cod3", "campo2", "cod2", "campo5", "cod1", "campo4", "sel", "campo1", "cod5", "formula", "cod4");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("num_formula", "campo1n", "campo3n", "tipoc2", "id_indice_financiero", "tipoc1", "campo5n", "tipoc5", "tipoc4", "tipoc3", "id_formula", "campo2n", "campo4n", "campo3", "cod3", "campo2", "cod2", "campo5", "cod1", "campo4", "sel", "campo1", "cod5", "formula", "cod4");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("num_formula", "campo1n", "campo3n", "tipoc2", "id_indice_financiero", "tipoc1", "campo5n", "tipoc5", "tipoc4", "tipoc3", "id_formula", "campo2n", "campo4n", "campo3", "cod3", "campo2", "cod2", "campo5", "cod1", "campo4", "sel", "campo1", "cod5", "formula", "cod4");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "FormulasDatatype";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _num_formulaIsValid:Boolean;
    model_internal var _num_formulaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _num_formulaIsValidCacheInitialized:Boolean = false;
    model_internal var _num_formulaValidationFailureMessages:Array;
    
    model_internal var _campo1nIsValid:Boolean;
    model_internal var _campo1nValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _campo1nIsValidCacheInitialized:Boolean = false;
    model_internal var _campo1nValidationFailureMessages:Array;
    
    model_internal var _campo3nIsValid:Boolean;
    model_internal var _campo3nValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _campo3nIsValidCacheInitialized:Boolean = false;
    model_internal var _campo3nValidationFailureMessages:Array;
    
    model_internal var _tipoc2IsValid:Boolean;
    model_internal var _tipoc2Validator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _tipoc2IsValidCacheInitialized:Boolean = false;
    model_internal var _tipoc2ValidationFailureMessages:Array;
    
    model_internal var _id_indice_financieroIsValid:Boolean;
    model_internal var _id_indice_financieroValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _id_indice_financieroIsValidCacheInitialized:Boolean = false;
    model_internal var _id_indice_financieroValidationFailureMessages:Array;
    
    model_internal var _tipoc1IsValid:Boolean;
    model_internal var _tipoc1Validator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _tipoc1IsValidCacheInitialized:Boolean = false;
    model_internal var _tipoc1ValidationFailureMessages:Array;
    
    model_internal var _campo5nIsValid:Boolean;
    model_internal var _campo5nValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _campo5nIsValidCacheInitialized:Boolean = false;
    model_internal var _campo5nValidationFailureMessages:Array;
    
    model_internal var _tipoc5IsValid:Boolean;
    model_internal var _tipoc5Validator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _tipoc5IsValidCacheInitialized:Boolean = false;
    model_internal var _tipoc5ValidationFailureMessages:Array;
    
    model_internal var _tipoc4IsValid:Boolean;
    model_internal var _tipoc4Validator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _tipoc4IsValidCacheInitialized:Boolean = false;
    model_internal var _tipoc4ValidationFailureMessages:Array;
    
    model_internal var _tipoc3IsValid:Boolean;
    model_internal var _tipoc3Validator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _tipoc3IsValidCacheInitialized:Boolean = false;
    model_internal var _tipoc3ValidationFailureMessages:Array;
    
    model_internal var _id_formulaIsValid:Boolean;
    model_internal var _id_formulaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _id_formulaIsValidCacheInitialized:Boolean = false;
    model_internal var _id_formulaValidationFailureMessages:Array;
    
    model_internal var _campo2nIsValid:Boolean;
    model_internal var _campo2nValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _campo2nIsValidCacheInitialized:Boolean = false;
    model_internal var _campo2nValidationFailureMessages:Array;
    
    model_internal var _campo4nIsValid:Boolean;
    model_internal var _campo4nValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _campo4nIsValidCacheInitialized:Boolean = false;
    model_internal var _campo4nValidationFailureMessages:Array;
    
    model_internal var _campo3IsValid:Boolean;
    model_internal var _campo3Validator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _campo3IsValidCacheInitialized:Boolean = false;
    model_internal var _campo3ValidationFailureMessages:Array;
    
    model_internal var _cod3IsValid:Boolean;
    model_internal var _cod3Validator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _cod3IsValidCacheInitialized:Boolean = false;
    model_internal var _cod3ValidationFailureMessages:Array;
    
    model_internal var _campo2IsValid:Boolean;
    model_internal var _campo2Validator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _campo2IsValidCacheInitialized:Boolean = false;
    model_internal var _campo2ValidationFailureMessages:Array;
    
    model_internal var _cod2IsValid:Boolean;
    model_internal var _cod2Validator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _cod2IsValidCacheInitialized:Boolean = false;
    model_internal var _cod2ValidationFailureMessages:Array;
    
    model_internal var _campo5IsValid:Boolean;
    model_internal var _campo5Validator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _campo5IsValidCacheInitialized:Boolean = false;
    model_internal var _campo5ValidationFailureMessages:Array;
    
    model_internal var _cod1IsValid:Boolean;
    model_internal var _cod1Validator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _cod1IsValidCacheInitialized:Boolean = false;
    model_internal var _cod1ValidationFailureMessages:Array;
    
    model_internal var _campo4IsValid:Boolean;
    model_internal var _campo4Validator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _campo4IsValidCacheInitialized:Boolean = false;
    model_internal var _campo4ValidationFailureMessages:Array;
    
    model_internal var _selIsValid:Boolean;
    model_internal var _selValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _selIsValidCacheInitialized:Boolean = false;
    model_internal var _selValidationFailureMessages:Array;
    
    model_internal var _campo1IsValid:Boolean;
    model_internal var _campo1Validator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _campo1IsValidCacheInitialized:Boolean = false;
    model_internal var _campo1ValidationFailureMessages:Array;
    
    model_internal var _cod5IsValid:Boolean;
    model_internal var _cod5Validator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _cod5IsValidCacheInitialized:Boolean = false;
    model_internal var _cod5ValidationFailureMessages:Array;
    
    model_internal var _formulaIsValid:Boolean;
    model_internal var _formulaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _formulaIsValidCacheInitialized:Boolean = false;
    model_internal var _formulaValidationFailureMessages:Array;
    
    model_internal var _cod4IsValid:Boolean;
    model_internal var _cod4Validator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _cod4IsValidCacheInitialized:Boolean = false;
    model_internal var _cod4ValidationFailureMessages:Array;

    model_internal var _instance:_Super_FormulasDatatype;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _FormulasDatatypeEntityMetadata(value : _Super_FormulasDatatype)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["num_formula"] = new Array();
            model_internal::dependentsOnMap["campo1n"] = new Array();
            model_internal::dependentsOnMap["campo3n"] = new Array();
            model_internal::dependentsOnMap["tipoc2"] = new Array();
            model_internal::dependentsOnMap["id_indice_financiero"] = new Array();
            model_internal::dependentsOnMap["tipoc1"] = new Array();
            model_internal::dependentsOnMap["campo5n"] = new Array();
            model_internal::dependentsOnMap["tipoc5"] = new Array();
            model_internal::dependentsOnMap["tipoc4"] = new Array();
            model_internal::dependentsOnMap["tipoc3"] = new Array();
            model_internal::dependentsOnMap["id_formula"] = new Array();
            model_internal::dependentsOnMap["campo2n"] = new Array();
            model_internal::dependentsOnMap["campo4n"] = new Array();
            model_internal::dependentsOnMap["campo3"] = new Array();
            model_internal::dependentsOnMap["cod3"] = new Array();
            model_internal::dependentsOnMap["campo2"] = new Array();
            model_internal::dependentsOnMap["cod2"] = new Array();
            model_internal::dependentsOnMap["campo5"] = new Array();
            model_internal::dependentsOnMap["cod1"] = new Array();
            model_internal::dependentsOnMap["campo4"] = new Array();
            model_internal::dependentsOnMap["sel"] = new Array();
            model_internal::dependentsOnMap["campo1"] = new Array();
            model_internal::dependentsOnMap["cod5"] = new Array();
            model_internal::dependentsOnMap["formula"] = new Array();
            model_internal::dependentsOnMap["cod4"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["num_formula"] = "String";
        model_internal::propertyTypeMap["campo1n"] = "String";
        model_internal::propertyTypeMap["campo3n"] = "Object";
        model_internal::propertyTypeMap["tipoc2"] = "String";
        model_internal::propertyTypeMap["id_indice_financiero"] = "String";
        model_internal::propertyTypeMap["tipoc1"] = "String";
        model_internal::propertyTypeMap["campo5n"] = "Object";
        model_internal::propertyTypeMap["tipoc5"] = "String";
        model_internal::propertyTypeMap["tipoc4"] = "String";
        model_internal::propertyTypeMap["tipoc3"] = "String";
        model_internal::propertyTypeMap["id_formula"] = "String";
        model_internal::propertyTypeMap["campo2n"] = "String";
        model_internal::propertyTypeMap["campo4n"] = "Object";
        model_internal::propertyTypeMap["campo3"] = "String";
        model_internal::propertyTypeMap["cod3"] = "String";
        model_internal::propertyTypeMap["campo2"] = "String";
        model_internal::propertyTypeMap["cod2"] = "String";
        model_internal::propertyTypeMap["campo5"] = "String";
        model_internal::propertyTypeMap["cod1"] = "String";
        model_internal::propertyTypeMap["campo4"] = "String";
        model_internal::propertyTypeMap["sel"] = "String";
        model_internal::propertyTypeMap["campo1"] = "String";
        model_internal::propertyTypeMap["cod5"] = "String";
        model_internal::propertyTypeMap["formula"] = "String";
        model_internal::propertyTypeMap["cod4"] = "String";

        model_internal::_instance = value;
        model_internal::_num_formulaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNum_formula);
        model_internal::_num_formulaValidator.required = true;
        model_internal::_num_formulaValidator.requiredFieldError = "num_formula is required";
        //model_internal::_num_formulaValidator.source = model_internal::_instance;
        //model_internal::_num_formulaValidator.property = "num_formula";
        model_internal::_campo1nValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCampo1n);
        model_internal::_campo1nValidator.required = true;
        model_internal::_campo1nValidator.requiredFieldError = "campo1n is required";
        //model_internal::_campo1nValidator.source = model_internal::_instance;
        //model_internal::_campo1nValidator.property = "campo1n";
        model_internal::_campo3nValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCampo3n);
        model_internal::_campo3nValidator.required = true;
        model_internal::_campo3nValidator.requiredFieldError = "campo3n is required";
        //model_internal::_campo3nValidator.source = model_internal::_instance;
        //model_internal::_campo3nValidator.property = "campo3n";
        model_internal::_tipoc2Validator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTipoc2);
        model_internal::_tipoc2Validator.required = true;
        model_internal::_tipoc2Validator.requiredFieldError = "tipoc2 is required";
        //model_internal::_tipoc2Validator.source = model_internal::_instance;
        //model_internal::_tipoc2Validator.property = "tipoc2";
        model_internal::_id_indice_financieroValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForId_indice_financiero);
        model_internal::_id_indice_financieroValidator.required = true;
        model_internal::_id_indice_financieroValidator.requiredFieldError = "id_indice_financiero is required";
        //model_internal::_id_indice_financieroValidator.source = model_internal::_instance;
        //model_internal::_id_indice_financieroValidator.property = "id_indice_financiero";
        model_internal::_tipoc1Validator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTipoc1);
        model_internal::_tipoc1Validator.required = true;
        model_internal::_tipoc1Validator.requiredFieldError = "tipoc1 is required";
        //model_internal::_tipoc1Validator.source = model_internal::_instance;
        //model_internal::_tipoc1Validator.property = "tipoc1";
        model_internal::_campo5nValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCampo5n);
        model_internal::_campo5nValidator.required = true;
        model_internal::_campo5nValidator.requiredFieldError = "campo5n is required";
        //model_internal::_campo5nValidator.source = model_internal::_instance;
        //model_internal::_campo5nValidator.property = "campo5n";
        model_internal::_tipoc5Validator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTipoc5);
        model_internal::_tipoc5Validator.required = true;
        model_internal::_tipoc5Validator.requiredFieldError = "tipoc5 is required";
        //model_internal::_tipoc5Validator.source = model_internal::_instance;
        //model_internal::_tipoc5Validator.property = "tipoc5";
        model_internal::_tipoc4Validator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTipoc4);
        model_internal::_tipoc4Validator.required = true;
        model_internal::_tipoc4Validator.requiredFieldError = "tipoc4 is required";
        //model_internal::_tipoc4Validator.source = model_internal::_instance;
        //model_internal::_tipoc4Validator.property = "tipoc4";
        model_internal::_tipoc3Validator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTipoc3);
        model_internal::_tipoc3Validator.required = true;
        model_internal::_tipoc3Validator.requiredFieldError = "tipoc3 is required";
        //model_internal::_tipoc3Validator.source = model_internal::_instance;
        //model_internal::_tipoc3Validator.property = "tipoc3";
        model_internal::_id_formulaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForId_formula);
        model_internal::_id_formulaValidator.required = true;
        model_internal::_id_formulaValidator.requiredFieldError = "id_formula is required";
        //model_internal::_id_formulaValidator.source = model_internal::_instance;
        //model_internal::_id_formulaValidator.property = "id_formula";
        model_internal::_campo2nValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCampo2n);
        model_internal::_campo2nValidator.required = true;
        model_internal::_campo2nValidator.requiredFieldError = "campo2n is required";
        //model_internal::_campo2nValidator.source = model_internal::_instance;
        //model_internal::_campo2nValidator.property = "campo2n";
        model_internal::_campo4nValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCampo4n);
        model_internal::_campo4nValidator.required = true;
        model_internal::_campo4nValidator.requiredFieldError = "campo4n is required";
        //model_internal::_campo4nValidator.source = model_internal::_instance;
        //model_internal::_campo4nValidator.property = "campo4n";
        model_internal::_campo3Validator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCampo3);
        model_internal::_campo3Validator.required = true;
        model_internal::_campo3Validator.requiredFieldError = "campo3 is required";
        //model_internal::_campo3Validator.source = model_internal::_instance;
        //model_internal::_campo3Validator.property = "campo3";
        model_internal::_cod3Validator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCod3);
        model_internal::_cod3Validator.required = true;
        model_internal::_cod3Validator.requiredFieldError = "cod3 is required";
        //model_internal::_cod3Validator.source = model_internal::_instance;
        //model_internal::_cod3Validator.property = "cod3";
        model_internal::_campo2Validator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCampo2);
        model_internal::_campo2Validator.required = true;
        model_internal::_campo2Validator.requiredFieldError = "campo2 is required";
        //model_internal::_campo2Validator.source = model_internal::_instance;
        //model_internal::_campo2Validator.property = "campo2";
        model_internal::_cod2Validator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCod2);
        model_internal::_cod2Validator.required = true;
        model_internal::_cod2Validator.requiredFieldError = "cod2 is required";
        //model_internal::_cod2Validator.source = model_internal::_instance;
        //model_internal::_cod2Validator.property = "cod2";
        model_internal::_campo5Validator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCampo5);
        model_internal::_campo5Validator.required = true;
        model_internal::_campo5Validator.requiredFieldError = "campo5 is required";
        //model_internal::_campo5Validator.source = model_internal::_instance;
        //model_internal::_campo5Validator.property = "campo5";
        model_internal::_cod1Validator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCod1);
        model_internal::_cod1Validator.required = true;
        model_internal::_cod1Validator.requiredFieldError = "cod1 is required";
        //model_internal::_cod1Validator.source = model_internal::_instance;
        //model_internal::_cod1Validator.property = "cod1";
        model_internal::_campo4Validator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCampo4);
        model_internal::_campo4Validator.required = true;
        model_internal::_campo4Validator.requiredFieldError = "campo4 is required";
        //model_internal::_campo4Validator.source = model_internal::_instance;
        //model_internal::_campo4Validator.property = "campo4";
        model_internal::_selValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSel);
        model_internal::_selValidator.required = true;
        model_internal::_selValidator.requiredFieldError = "sel is required";
        //model_internal::_selValidator.source = model_internal::_instance;
        //model_internal::_selValidator.property = "sel";
        model_internal::_campo1Validator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCampo1);
        model_internal::_campo1Validator.required = true;
        model_internal::_campo1Validator.requiredFieldError = "campo1 is required";
        //model_internal::_campo1Validator.source = model_internal::_instance;
        //model_internal::_campo1Validator.property = "campo1";
        model_internal::_cod5Validator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCod5);
        model_internal::_cod5Validator.required = true;
        model_internal::_cod5Validator.requiredFieldError = "cod5 is required";
        //model_internal::_cod5Validator.source = model_internal::_instance;
        //model_internal::_cod5Validator.property = "cod5";
        model_internal::_formulaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFormula);
        model_internal::_formulaValidator.required = true;
        model_internal::_formulaValidator.requiredFieldError = "formula is required";
        //model_internal::_formulaValidator.source = model_internal::_instance;
        //model_internal::_formulaValidator.property = "formula";
        model_internal::_cod4Validator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCod4);
        model_internal::_cod4Validator.required = true;
        model_internal::_cod4Validator.requiredFieldError = "cod4 is required";
        //model_internal::_cod4Validator.source = model_internal::_instance;
        //model_internal::_cod4Validator.property = "cod4";
    }

    override public function getEntityName():String
    {
        return model_internal::entityName;
    }

    override public function getProperties():Array
    {
        return model_internal::allProperties;
    }

    override public function getAssociationProperties():Array
    {
        return model_internal::allAssociationProperties;
    }

    override public function getRequiredProperties():Array
    {
         return model_internal::allRequiredProperties;   
    }

    override public function getDataProperties():Array
    {
        return model_internal::dataProperties;
    }

    public function getSourceProperties():Array
    {
        return model_internal::sourceProperties;
    }

    public function getNonDerivedProperties():Array
    {
        return model_internal::nonDerivedProperties;
    }

    override public function getGuardedProperties():Array
    {
        return model_internal::guardedProperties;
    }

    override public function getUnguardedProperties():Array
    {
        return model_internal::allAlwaysAvailableProperties;
    }

    override public function getDependants(propertyName:String):Array
    {
       if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a data property of entity FormulasDatatype");
            
       return model_internal::dependentsOnMap[propertyName] as Array;  
    }

    override public function getDependedOnServices():Array
    {
        return model_internal::dependedOnServices;
    }

    override public function getCollectionProperties():Array
    {
        return model_internal::collectionProperties;
    }

    override public function getCollectionBase(propertyName:String):String
    {
        if (model_internal::collectionProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a collection property of entity FormulasDatatype");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of FormulasDatatype");

        return model_internal::propertyTypeMap[propertyName];
    }

    override public function getAvailableProperties():com.adobe.fiber.valueobjects.IPropertyIterator
    {
        return new com.adobe.fiber.valueobjects.AvailablePropertyIterator(this);
    }

    override public function getValue(propertyName:String):*
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity FormulasDatatype");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity FormulasDatatype");
        }

        model_internal::_instance[propertyName] = value;
    }

    override public function getMappedByProperty(associationProperty:String):String
    {
        switch(associationProperty)
        {
            default:
            {
                return null;
            }
        }
    }

    override public function getPropertyLength(propertyName:String):int
    {
        switch(propertyName)
        {
            default:
            {
                return 0;
            }
        }
    }

    override public function isAvailable(propertyName:String):Boolean
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity FormulasDatatype");
        }

        if (model_internal::allAlwaysAvailableProperties.indexOf(propertyName) != -1)
        {
            return true;
        }

        switch(propertyName)
        {
            default:
            {
                return true;
            }
        }
    }

    override public function getIdentityMap():Object
    {
        var returnMap:Object = new Object();

        return returnMap;
    }

    [Bindable(event="propertyChange")]
    override public function get invalidConstraints():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_invalidConstraints;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_invalidConstraints;        
        }
    }

    [Bindable(event="propertyChange")]
    override public function get validationFailureMessages():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
    }

    override public function getDependantInvalidConstraints(propertyName:String):Array
    {
        var dependants:Array = getDependants(propertyName);
        if (dependants.length == 0)
        {
            return emptyArray;
        }

        var currentlyInvalid:Array = invalidConstraints;
        if (currentlyInvalid.length == 0)
        {
            return emptyArray;
        }

        var filterFunc:Function = function(element:*, index:int, arr:Array):Boolean
        {
            return dependants.indexOf(element) > -1;
        }

        return currentlyInvalid.filter(filterFunc);
    }

    /**
     * isValid
     */
    [Bindable(event="propertyChange")] 
    public function get isValid() : Boolean
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_isValid;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_isValid;
        }
    }

    [Bindable(event="propertyChange")]
    public function get isNum_formulaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCampo1nAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCampo3nAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTipoc2Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isId_indice_financieroAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTipoc1Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCampo5nAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTipoc5Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTipoc4Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTipoc3Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isId_formulaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCampo2nAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCampo4nAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCampo3Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCod3Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCampo2Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCod2Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCampo5Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCod1Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCampo4Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSelAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCampo1Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCod5Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFormulaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCod4Available():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnNum_formula():void
    {
        if (model_internal::_num_formulaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNum_formula = null;
            model_internal::calculateNum_formulaIsValid();
        }
    }
    public function invalidateDependentOnCampo1n():void
    {
        if (model_internal::_campo1nIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCampo1n = null;
            model_internal::calculateCampo1nIsValid();
        }
    }
    public function invalidateDependentOnCampo3n():void
    {
        if (model_internal::_campo3nIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCampo3n = null;
            model_internal::calculateCampo3nIsValid();
        }
    }
    public function invalidateDependentOnTipoc2():void
    {
        if (model_internal::_tipoc2IsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTipoc2 = null;
            model_internal::calculateTipoc2IsValid();
        }
    }
    public function invalidateDependentOnId_indice_financiero():void
    {
        if (model_internal::_id_indice_financieroIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfId_indice_financiero = null;
            model_internal::calculateId_indice_financieroIsValid();
        }
    }
    public function invalidateDependentOnTipoc1():void
    {
        if (model_internal::_tipoc1IsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTipoc1 = null;
            model_internal::calculateTipoc1IsValid();
        }
    }
    public function invalidateDependentOnCampo5n():void
    {
        if (model_internal::_campo5nIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCampo5n = null;
            model_internal::calculateCampo5nIsValid();
        }
    }
    public function invalidateDependentOnTipoc5():void
    {
        if (model_internal::_tipoc5IsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTipoc5 = null;
            model_internal::calculateTipoc5IsValid();
        }
    }
    public function invalidateDependentOnTipoc4():void
    {
        if (model_internal::_tipoc4IsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTipoc4 = null;
            model_internal::calculateTipoc4IsValid();
        }
    }
    public function invalidateDependentOnTipoc3():void
    {
        if (model_internal::_tipoc3IsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTipoc3 = null;
            model_internal::calculateTipoc3IsValid();
        }
    }
    public function invalidateDependentOnId_formula():void
    {
        if (model_internal::_id_formulaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfId_formula = null;
            model_internal::calculateId_formulaIsValid();
        }
    }
    public function invalidateDependentOnCampo2n():void
    {
        if (model_internal::_campo2nIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCampo2n = null;
            model_internal::calculateCampo2nIsValid();
        }
    }
    public function invalidateDependentOnCampo4n():void
    {
        if (model_internal::_campo4nIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCampo4n = null;
            model_internal::calculateCampo4nIsValid();
        }
    }
    public function invalidateDependentOnCampo3():void
    {
        if (model_internal::_campo3IsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCampo3 = null;
            model_internal::calculateCampo3IsValid();
        }
    }
    public function invalidateDependentOnCod3():void
    {
        if (model_internal::_cod3IsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCod3 = null;
            model_internal::calculateCod3IsValid();
        }
    }
    public function invalidateDependentOnCampo2():void
    {
        if (model_internal::_campo2IsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCampo2 = null;
            model_internal::calculateCampo2IsValid();
        }
    }
    public function invalidateDependentOnCod2():void
    {
        if (model_internal::_cod2IsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCod2 = null;
            model_internal::calculateCod2IsValid();
        }
    }
    public function invalidateDependentOnCampo5():void
    {
        if (model_internal::_campo5IsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCampo5 = null;
            model_internal::calculateCampo5IsValid();
        }
    }
    public function invalidateDependentOnCod1():void
    {
        if (model_internal::_cod1IsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCod1 = null;
            model_internal::calculateCod1IsValid();
        }
    }
    public function invalidateDependentOnCampo4():void
    {
        if (model_internal::_campo4IsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCampo4 = null;
            model_internal::calculateCampo4IsValid();
        }
    }
    public function invalidateDependentOnSel():void
    {
        if (model_internal::_selIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSel = null;
            model_internal::calculateSelIsValid();
        }
    }
    public function invalidateDependentOnCampo1():void
    {
        if (model_internal::_campo1IsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCampo1 = null;
            model_internal::calculateCampo1IsValid();
        }
    }
    public function invalidateDependentOnCod5():void
    {
        if (model_internal::_cod5IsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCod5 = null;
            model_internal::calculateCod5IsValid();
        }
    }
    public function invalidateDependentOnFormula():void
    {
        if (model_internal::_formulaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFormula = null;
            model_internal::calculateFormulaIsValid();
        }
    }
    public function invalidateDependentOnCod4():void
    {
        if (model_internal::_cod4IsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCod4 = null;
            model_internal::calculateCod4IsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get num_formulaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get num_formulaValidator() : StyleValidator
    {
        return model_internal::_num_formulaValidator;
    }

    model_internal function set _num_formulaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_num_formulaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_num_formulaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "num_formulaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get num_formulaIsValid():Boolean
    {
        if (!model_internal::_num_formulaIsValidCacheInitialized)
        {
            model_internal::calculateNum_formulaIsValid();
        }

        return model_internal::_num_formulaIsValid;
    }

    model_internal function calculateNum_formulaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_num_formulaValidator.validate(model_internal::_instance.num_formula)
        model_internal::_num_formulaIsValid_der = (valRes.results == null);
        model_internal::_num_formulaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::num_formulaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::num_formulaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get num_formulaValidationFailureMessages():Array
    {
        if (model_internal::_num_formulaValidationFailureMessages == null)
            model_internal::calculateNum_formulaIsValid();

        return _num_formulaValidationFailureMessages;
    }

    model_internal function set num_formulaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_num_formulaValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_num_formulaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "num_formulaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get campo1nStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get campo1nValidator() : StyleValidator
    {
        return model_internal::_campo1nValidator;
    }

    model_internal function set _campo1nIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_campo1nIsValid;         
        if (oldValue !== value)
        {
            model_internal::_campo1nIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo1nIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get campo1nIsValid():Boolean
    {
        if (!model_internal::_campo1nIsValidCacheInitialized)
        {
            model_internal::calculateCampo1nIsValid();
        }

        return model_internal::_campo1nIsValid;
    }

    model_internal function calculateCampo1nIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_campo1nValidator.validate(model_internal::_instance.campo1n)
        model_internal::_campo1nIsValid_der = (valRes.results == null);
        model_internal::_campo1nIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::campo1nValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::campo1nValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get campo1nValidationFailureMessages():Array
    {
        if (model_internal::_campo1nValidationFailureMessages == null)
            model_internal::calculateCampo1nIsValid();

        return _campo1nValidationFailureMessages;
    }

    model_internal function set campo1nValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_campo1nValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_campo1nValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo1nValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get campo3nStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get campo3nValidator() : StyleValidator
    {
        return model_internal::_campo3nValidator;
    }

    model_internal function set _campo3nIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_campo3nIsValid;         
        if (oldValue !== value)
        {
            model_internal::_campo3nIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo3nIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get campo3nIsValid():Boolean
    {
        if (!model_internal::_campo3nIsValidCacheInitialized)
        {
            model_internal::calculateCampo3nIsValid();
        }

        return model_internal::_campo3nIsValid;
    }

    model_internal function calculateCampo3nIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_campo3nValidator.validate(model_internal::_instance.campo3n)
        model_internal::_campo3nIsValid_der = (valRes.results == null);
        model_internal::_campo3nIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::campo3nValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::campo3nValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get campo3nValidationFailureMessages():Array
    {
        if (model_internal::_campo3nValidationFailureMessages == null)
            model_internal::calculateCampo3nIsValid();

        return _campo3nValidationFailureMessages;
    }

    model_internal function set campo3nValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_campo3nValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_campo3nValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo3nValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get tipoc2Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get tipoc2Validator() : StyleValidator
    {
        return model_internal::_tipoc2Validator;
    }

    model_internal function set _tipoc2IsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_tipoc2IsValid;         
        if (oldValue !== value)
        {
            model_internal::_tipoc2IsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoc2IsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get tipoc2IsValid():Boolean
    {
        if (!model_internal::_tipoc2IsValidCacheInitialized)
        {
            model_internal::calculateTipoc2IsValid();
        }

        return model_internal::_tipoc2IsValid;
    }

    model_internal function calculateTipoc2IsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_tipoc2Validator.validate(model_internal::_instance.tipoc2)
        model_internal::_tipoc2IsValid_der = (valRes.results == null);
        model_internal::_tipoc2IsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::tipoc2ValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::tipoc2ValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get tipoc2ValidationFailureMessages():Array
    {
        if (model_internal::_tipoc2ValidationFailureMessages == null)
            model_internal::calculateTipoc2IsValid();

        return _tipoc2ValidationFailureMessages;
    }

    model_internal function set tipoc2ValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_tipoc2ValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_tipoc2ValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoc2ValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get id_indice_financieroStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get id_indice_financieroValidator() : StyleValidator
    {
        return model_internal::_id_indice_financieroValidator;
    }

    model_internal function set _id_indice_financieroIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_id_indice_financieroIsValid;         
        if (oldValue !== value)
        {
            model_internal::_id_indice_financieroIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id_indice_financieroIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get id_indice_financieroIsValid():Boolean
    {
        if (!model_internal::_id_indice_financieroIsValidCacheInitialized)
        {
            model_internal::calculateId_indice_financieroIsValid();
        }

        return model_internal::_id_indice_financieroIsValid;
    }

    model_internal function calculateId_indice_financieroIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_id_indice_financieroValidator.validate(model_internal::_instance.id_indice_financiero)
        model_internal::_id_indice_financieroIsValid_der = (valRes.results == null);
        model_internal::_id_indice_financieroIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::id_indice_financieroValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::id_indice_financieroValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get id_indice_financieroValidationFailureMessages():Array
    {
        if (model_internal::_id_indice_financieroValidationFailureMessages == null)
            model_internal::calculateId_indice_financieroIsValid();

        return _id_indice_financieroValidationFailureMessages;
    }

    model_internal function set id_indice_financieroValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_id_indice_financieroValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_id_indice_financieroValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id_indice_financieroValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get tipoc1Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get tipoc1Validator() : StyleValidator
    {
        return model_internal::_tipoc1Validator;
    }

    model_internal function set _tipoc1IsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_tipoc1IsValid;         
        if (oldValue !== value)
        {
            model_internal::_tipoc1IsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoc1IsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get tipoc1IsValid():Boolean
    {
        if (!model_internal::_tipoc1IsValidCacheInitialized)
        {
            model_internal::calculateTipoc1IsValid();
        }

        return model_internal::_tipoc1IsValid;
    }

    model_internal function calculateTipoc1IsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_tipoc1Validator.validate(model_internal::_instance.tipoc1)
        model_internal::_tipoc1IsValid_der = (valRes.results == null);
        model_internal::_tipoc1IsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::tipoc1ValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::tipoc1ValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get tipoc1ValidationFailureMessages():Array
    {
        if (model_internal::_tipoc1ValidationFailureMessages == null)
            model_internal::calculateTipoc1IsValid();

        return _tipoc1ValidationFailureMessages;
    }

    model_internal function set tipoc1ValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_tipoc1ValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_tipoc1ValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoc1ValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get campo5nStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get campo5nValidator() : StyleValidator
    {
        return model_internal::_campo5nValidator;
    }

    model_internal function set _campo5nIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_campo5nIsValid;         
        if (oldValue !== value)
        {
            model_internal::_campo5nIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo5nIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get campo5nIsValid():Boolean
    {
        if (!model_internal::_campo5nIsValidCacheInitialized)
        {
            model_internal::calculateCampo5nIsValid();
        }

        return model_internal::_campo5nIsValid;
    }

    model_internal function calculateCampo5nIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_campo5nValidator.validate(model_internal::_instance.campo5n)
        model_internal::_campo5nIsValid_der = (valRes.results == null);
        model_internal::_campo5nIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::campo5nValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::campo5nValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get campo5nValidationFailureMessages():Array
    {
        if (model_internal::_campo5nValidationFailureMessages == null)
            model_internal::calculateCampo5nIsValid();

        return _campo5nValidationFailureMessages;
    }

    model_internal function set campo5nValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_campo5nValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_campo5nValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo5nValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get tipoc5Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get tipoc5Validator() : StyleValidator
    {
        return model_internal::_tipoc5Validator;
    }

    model_internal function set _tipoc5IsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_tipoc5IsValid;         
        if (oldValue !== value)
        {
            model_internal::_tipoc5IsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoc5IsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get tipoc5IsValid():Boolean
    {
        if (!model_internal::_tipoc5IsValidCacheInitialized)
        {
            model_internal::calculateTipoc5IsValid();
        }

        return model_internal::_tipoc5IsValid;
    }

    model_internal function calculateTipoc5IsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_tipoc5Validator.validate(model_internal::_instance.tipoc5)
        model_internal::_tipoc5IsValid_der = (valRes.results == null);
        model_internal::_tipoc5IsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::tipoc5ValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::tipoc5ValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get tipoc5ValidationFailureMessages():Array
    {
        if (model_internal::_tipoc5ValidationFailureMessages == null)
            model_internal::calculateTipoc5IsValid();

        return _tipoc5ValidationFailureMessages;
    }

    model_internal function set tipoc5ValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_tipoc5ValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_tipoc5ValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoc5ValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get tipoc4Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get tipoc4Validator() : StyleValidator
    {
        return model_internal::_tipoc4Validator;
    }

    model_internal function set _tipoc4IsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_tipoc4IsValid;         
        if (oldValue !== value)
        {
            model_internal::_tipoc4IsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoc4IsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get tipoc4IsValid():Boolean
    {
        if (!model_internal::_tipoc4IsValidCacheInitialized)
        {
            model_internal::calculateTipoc4IsValid();
        }

        return model_internal::_tipoc4IsValid;
    }

    model_internal function calculateTipoc4IsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_tipoc4Validator.validate(model_internal::_instance.tipoc4)
        model_internal::_tipoc4IsValid_der = (valRes.results == null);
        model_internal::_tipoc4IsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::tipoc4ValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::tipoc4ValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get tipoc4ValidationFailureMessages():Array
    {
        if (model_internal::_tipoc4ValidationFailureMessages == null)
            model_internal::calculateTipoc4IsValid();

        return _tipoc4ValidationFailureMessages;
    }

    model_internal function set tipoc4ValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_tipoc4ValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_tipoc4ValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoc4ValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get tipoc3Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get tipoc3Validator() : StyleValidator
    {
        return model_internal::_tipoc3Validator;
    }

    model_internal function set _tipoc3IsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_tipoc3IsValid;         
        if (oldValue !== value)
        {
            model_internal::_tipoc3IsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoc3IsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get tipoc3IsValid():Boolean
    {
        if (!model_internal::_tipoc3IsValidCacheInitialized)
        {
            model_internal::calculateTipoc3IsValid();
        }

        return model_internal::_tipoc3IsValid;
    }

    model_internal function calculateTipoc3IsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_tipoc3Validator.validate(model_internal::_instance.tipoc3)
        model_internal::_tipoc3IsValid_der = (valRes.results == null);
        model_internal::_tipoc3IsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::tipoc3ValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::tipoc3ValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get tipoc3ValidationFailureMessages():Array
    {
        if (model_internal::_tipoc3ValidationFailureMessages == null)
            model_internal::calculateTipoc3IsValid();

        return _tipoc3ValidationFailureMessages;
    }

    model_internal function set tipoc3ValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_tipoc3ValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_tipoc3ValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoc3ValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get id_formulaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get id_formulaValidator() : StyleValidator
    {
        return model_internal::_id_formulaValidator;
    }

    model_internal function set _id_formulaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_id_formulaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_id_formulaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id_formulaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get id_formulaIsValid():Boolean
    {
        if (!model_internal::_id_formulaIsValidCacheInitialized)
        {
            model_internal::calculateId_formulaIsValid();
        }

        return model_internal::_id_formulaIsValid;
    }

    model_internal function calculateId_formulaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_id_formulaValidator.validate(model_internal::_instance.id_formula)
        model_internal::_id_formulaIsValid_der = (valRes.results == null);
        model_internal::_id_formulaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::id_formulaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::id_formulaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get id_formulaValidationFailureMessages():Array
    {
        if (model_internal::_id_formulaValidationFailureMessages == null)
            model_internal::calculateId_formulaIsValid();

        return _id_formulaValidationFailureMessages;
    }

    model_internal function set id_formulaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_id_formulaValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_id_formulaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id_formulaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get campo2nStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get campo2nValidator() : StyleValidator
    {
        return model_internal::_campo2nValidator;
    }

    model_internal function set _campo2nIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_campo2nIsValid;         
        if (oldValue !== value)
        {
            model_internal::_campo2nIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo2nIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get campo2nIsValid():Boolean
    {
        if (!model_internal::_campo2nIsValidCacheInitialized)
        {
            model_internal::calculateCampo2nIsValid();
        }

        return model_internal::_campo2nIsValid;
    }

    model_internal function calculateCampo2nIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_campo2nValidator.validate(model_internal::_instance.campo2n)
        model_internal::_campo2nIsValid_der = (valRes.results == null);
        model_internal::_campo2nIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::campo2nValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::campo2nValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get campo2nValidationFailureMessages():Array
    {
        if (model_internal::_campo2nValidationFailureMessages == null)
            model_internal::calculateCampo2nIsValid();

        return _campo2nValidationFailureMessages;
    }

    model_internal function set campo2nValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_campo2nValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_campo2nValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo2nValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get campo4nStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get campo4nValidator() : StyleValidator
    {
        return model_internal::_campo4nValidator;
    }

    model_internal function set _campo4nIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_campo4nIsValid;         
        if (oldValue !== value)
        {
            model_internal::_campo4nIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo4nIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get campo4nIsValid():Boolean
    {
        if (!model_internal::_campo4nIsValidCacheInitialized)
        {
            model_internal::calculateCampo4nIsValid();
        }

        return model_internal::_campo4nIsValid;
    }

    model_internal function calculateCampo4nIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_campo4nValidator.validate(model_internal::_instance.campo4n)
        model_internal::_campo4nIsValid_der = (valRes.results == null);
        model_internal::_campo4nIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::campo4nValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::campo4nValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get campo4nValidationFailureMessages():Array
    {
        if (model_internal::_campo4nValidationFailureMessages == null)
            model_internal::calculateCampo4nIsValid();

        return _campo4nValidationFailureMessages;
    }

    model_internal function set campo4nValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_campo4nValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_campo4nValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo4nValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get campo3Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get campo3Validator() : StyleValidator
    {
        return model_internal::_campo3Validator;
    }

    model_internal function set _campo3IsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_campo3IsValid;         
        if (oldValue !== value)
        {
            model_internal::_campo3IsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo3IsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get campo3IsValid():Boolean
    {
        if (!model_internal::_campo3IsValidCacheInitialized)
        {
            model_internal::calculateCampo3IsValid();
        }

        return model_internal::_campo3IsValid;
    }

    model_internal function calculateCampo3IsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_campo3Validator.validate(model_internal::_instance.campo3)
        model_internal::_campo3IsValid_der = (valRes.results == null);
        model_internal::_campo3IsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::campo3ValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::campo3ValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get campo3ValidationFailureMessages():Array
    {
        if (model_internal::_campo3ValidationFailureMessages == null)
            model_internal::calculateCampo3IsValid();

        return _campo3ValidationFailureMessages;
    }

    model_internal function set campo3ValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_campo3ValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_campo3ValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo3ValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get cod3Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get cod3Validator() : StyleValidator
    {
        return model_internal::_cod3Validator;
    }

    model_internal function set _cod3IsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_cod3IsValid;         
        if (oldValue !== value)
        {
            model_internal::_cod3IsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cod3IsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get cod3IsValid():Boolean
    {
        if (!model_internal::_cod3IsValidCacheInitialized)
        {
            model_internal::calculateCod3IsValid();
        }

        return model_internal::_cod3IsValid;
    }

    model_internal function calculateCod3IsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_cod3Validator.validate(model_internal::_instance.cod3)
        model_internal::_cod3IsValid_der = (valRes.results == null);
        model_internal::_cod3IsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::cod3ValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::cod3ValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get cod3ValidationFailureMessages():Array
    {
        if (model_internal::_cod3ValidationFailureMessages == null)
            model_internal::calculateCod3IsValid();

        return _cod3ValidationFailureMessages;
    }

    model_internal function set cod3ValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_cod3ValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_cod3ValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cod3ValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get campo2Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get campo2Validator() : StyleValidator
    {
        return model_internal::_campo2Validator;
    }

    model_internal function set _campo2IsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_campo2IsValid;         
        if (oldValue !== value)
        {
            model_internal::_campo2IsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo2IsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get campo2IsValid():Boolean
    {
        if (!model_internal::_campo2IsValidCacheInitialized)
        {
            model_internal::calculateCampo2IsValid();
        }

        return model_internal::_campo2IsValid;
    }

    model_internal function calculateCampo2IsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_campo2Validator.validate(model_internal::_instance.campo2)
        model_internal::_campo2IsValid_der = (valRes.results == null);
        model_internal::_campo2IsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::campo2ValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::campo2ValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get campo2ValidationFailureMessages():Array
    {
        if (model_internal::_campo2ValidationFailureMessages == null)
            model_internal::calculateCampo2IsValid();

        return _campo2ValidationFailureMessages;
    }

    model_internal function set campo2ValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_campo2ValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_campo2ValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo2ValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get cod2Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get cod2Validator() : StyleValidator
    {
        return model_internal::_cod2Validator;
    }

    model_internal function set _cod2IsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_cod2IsValid;         
        if (oldValue !== value)
        {
            model_internal::_cod2IsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cod2IsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get cod2IsValid():Boolean
    {
        if (!model_internal::_cod2IsValidCacheInitialized)
        {
            model_internal::calculateCod2IsValid();
        }

        return model_internal::_cod2IsValid;
    }

    model_internal function calculateCod2IsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_cod2Validator.validate(model_internal::_instance.cod2)
        model_internal::_cod2IsValid_der = (valRes.results == null);
        model_internal::_cod2IsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::cod2ValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::cod2ValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get cod2ValidationFailureMessages():Array
    {
        if (model_internal::_cod2ValidationFailureMessages == null)
            model_internal::calculateCod2IsValid();

        return _cod2ValidationFailureMessages;
    }

    model_internal function set cod2ValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_cod2ValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_cod2ValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cod2ValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get campo5Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get campo5Validator() : StyleValidator
    {
        return model_internal::_campo5Validator;
    }

    model_internal function set _campo5IsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_campo5IsValid;         
        if (oldValue !== value)
        {
            model_internal::_campo5IsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo5IsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get campo5IsValid():Boolean
    {
        if (!model_internal::_campo5IsValidCacheInitialized)
        {
            model_internal::calculateCampo5IsValid();
        }

        return model_internal::_campo5IsValid;
    }

    model_internal function calculateCampo5IsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_campo5Validator.validate(model_internal::_instance.campo5)
        model_internal::_campo5IsValid_der = (valRes.results == null);
        model_internal::_campo5IsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::campo5ValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::campo5ValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get campo5ValidationFailureMessages():Array
    {
        if (model_internal::_campo5ValidationFailureMessages == null)
            model_internal::calculateCampo5IsValid();

        return _campo5ValidationFailureMessages;
    }

    model_internal function set campo5ValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_campo5ValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_campo5ValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo5ValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get cod1Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get cod1Validator() : StyleValidator
    {
        return model_internal::_cod1Validator;
    }

    model_internal function set _cod1IsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_cod1IsValid;         
        if (oldValue !== value)
        {
            model_internal::_cod1IsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cod1IsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get cod1IsValid():Boolean
    {
        if (!model_internal::_cod1IsValidCacheInitialized)
        {
            model_internal::calculateCod1IsValid();
        }

        return model_internal::_cod1IsValid;
    }

    model_internal function calculateCod1IsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_cod1Validator.validate(model_internal::_instance.cod1)
        model_internal::_cod1IsValid_der = (valRes.results == null);
        model_internal::_cod1IsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::cod1ValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::cod1ValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get cod1ValidationFailureMessages():Array
    {
        if (model_internal::_cod1ValidationFailureMessages == null)
            model_internal::calculateCod1IsValid();

        return _cod1ValidationFailureMessages;
    }

    model_internal function set cod1ValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_cod1ValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_cod1ValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cod1ValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get campo4Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get campo4Validator() : StyleValidator
    {
        return model_internal::_campo4Validator;
    }

    model_internal function set _campo4IsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_campo4IsValid;         
        if (oldValue !== value)
        {
            model_internal::_campo4IsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo4IsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get campo4IsValid():Boolean
    {
        if (!model_internal::_campo4IsValidCacheInitialized)
        {
            model_internal::calculateCampo4IsValid();
        }

        return model_internal::_campo4IsValid;
    }

    model_internal function calculateCampo4IsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_campo4Validator.validate(model_internal::_instance.campo4)
        model_internal::_campo4IsValid_der = (valRes.results == null);
        model_internal::_campo4IsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::campo4ValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::campo4ValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get campo4ValidationFailureMessages():Array
    {
        if (model_internal::_campo4ValidationFailureMessages == null)
            model_internal::calculateCampo4IsValid();

        return _campo4ValidationFailureMessages;
    }

    model_internal function set campo4ValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_campo4ValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_campo4ValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo4ValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get selStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get selValidator() : StyleValidator
    {
        return model_internal::_selValidator;
    }

    model_internal function set _selIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_selIsValid;         
        if (oldValue !== value)
        {
            model_internal::_selIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "selIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get selIsValid():Boolean
    {
        if (!model_internal::_selIsValidCacheInitialized)
        {
            model_internal::calculateSelIsValid();
        }

        return model_internal::_selIsValid;
    }

    model_internal function calculateSelIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_selValidator.validate(model_internal::_instance.sel)
        model_internal::_selIsValid_der = (valRes.results == null);
        model_internal::_selIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::selValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::selValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get selValidationFailureMessages():Array
    {
        if (model_internal::_selValidationFailureMessages == null)
            model_internal::calculateSelIsValid();

        return _selValidationFailureMessages;
    }

    model_internal function set selValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_selValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_selValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "selValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get campo1Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get campo1Validator() : StyleValidator
    {
        return model_internal::_campo1Validator;
    }

    model_internal function set _campo1IsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_campo1IsValid;         
        if (oldValue !== value)
        {
            model_internal::_campo1IsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo1IsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get campo1IsValid():Boolean
    {
        if (!model_internal::_campo1IsValidCacheInitialized)
        {
            model_internal::calculateCampo1IsValid();
        }

        return model_internal::_campo1IsValid;
    }

    model_internal function calculateCampo1IsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_campo1Validator.validate(model_internal::_instance.campo1)
        model_internal::_campo1IsValid_der = (valRes.results == null);
        model_internal::_campo1IsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::campo1ValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::campo1ValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get campo1ValidationFailureMessages():Array
    {
        if (model_internal::_campo1ValidationFailureMessages == null)
            model_internal::calculateCampo1IsValid();

        return _campo1ValidationFailureMessages;
    }

    model_internal function set campo1ValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_campo1ValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_campo1ValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo1ValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get cod5Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get cod5Validator() : StyleValidator
    {
        return model_internal::_cod5Validator;
    }

    model_internal function set _cod5IsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_cod5IsValid;         
        if (oldValue !== value)
        {
            model_internal::_cod5IsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cod5IsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get cod5IsValid():Boolean
    {
        if (!model_internal::_cod5IsValidCacheInitialized)
        {
            model_internal::calculateCod5IsValid();
        }

        return model_internal::_cod5IsValid;
    }

    model_internal function calculateCod5IsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_cod5Validator.validate(model_internal::_instance.cod5)
        model_internal::_cod5IsValid_der = (valRes.results == null);
        model_internal::_cod5IsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::cod5ValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::cod5ValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get cod5ValidationFailureMessages():Array
    {
        if (model_internal::_cod5ValidationFailureMessages == null)
            model_internal::calculateCod5IsValid();

        return _cod5ValidationFailureMessages;
    }

    model_internal function set cod5ValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_cod5ValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_cod5ValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cod5ValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get formulaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get formulaValidator() : StyleValidator
    {
        return model_internal::_formulaValidator;
    }

    model_internal function set _formulaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_formulaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_formulaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "formulaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get formulaIsValid():Boolean
    {
        if (!model_internal::_formulaIsValidCacheInitialized)
        {
            model_internal::calculateFormulaIsValid();
        }

        return model_internal::_formulaIsValid;
    }

    model_internal function calculateFormulaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_formulaValidator.validate(model_internal::_instance.formula)
        model_internal::_formulaIsValid_der = (valRes.results == null);
        model_internal::_formulaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::formulaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::formulaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get formulaValidationFailureMessages():Array
    {
        if (model_internal::_formulaValidationFailureMessages == null)
            model_internal::calculateFormulaIsValid();

        return _formulaValidationFailureMessages;
    }

    model_internal function set formulaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_formulaValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_formulaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "formulaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get cod4Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get cod4Validator() : StyleValidator
    {
        return model_internal::_cod4Validator;
    }

    model_internal function set _cod4IsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_cod4IsValid;         
        if (oldValue !== value)
        {
            model_internal::_cod4IsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cod4IsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get cod4IsValid():Boolean
    {
        if (!model_internal::_cod4IsValidCacheInitialized)
        {
            model_internal::calculateCod4IsValid();
        }

        return model_internal::_cod4IsValid;
    }

    model_internal function calculateCod4IsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_cod4Validator.validate(model_internal::_instance.cod4)
        model_internal::_cod4IsValid_der = (valRes.results == null);
        model_internal::_cod4IsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::cod4ValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::cod4ValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get cod4ValidationFailureMessages():Array
    {
        if (model_internal::_cod4ValidationFailureMessages == null)
            model_internal::calculateCod4IsValid();

        return _cod4ValidationFailureMessages;
    }

    model_internal function set cod4ValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_cod4ValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_cod4ValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cod4ValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }


     /**
     * 
     * @inheritDoc 
     */ 
     override public function getStyle(propertyName:String):com.adobe.fiber.styles.IStyle
     {
         switch(propertyName)
         {
            default:
            {
                return null;
            }
         }
     }
     
     /**
     * 
     * @inheritDoc 
     *  
     */  
     override public function getPropertyValidationFailureMessages(propertyName:String):Array
     {
         switch(propertyName)
         {
            case("num_formula"):
            {
                return num_formulaValidationFailureMessages;
            }
            case("campo1n"):
            {
                return campo1nValidationFailureMessages;
            }
            case("campo3n"):
            {
                return campo3nValidationFailureMessages;
            }
            case("tipoc2"):
            {
                return tipoc2ValidationFailureMessages;
            }
            case("id_indice_financiero"):
            {
                return id_indice_financieroValidationFailureMessages;
            }
            case("tipoc1"):
            {
                return tipoc1ValidationFailureMessages;
            }
            case("campo5n"):
            {
                return campo5nValidationFailureMessages;
            }
            case("tipoc5"):
            {
                return tipoc5ValidationFailureMessages;
            }
            case("tipoc4"):
            {
                return tipoc4ValidationFailureMessages;
            }
            case("tipoc3"):
            {
                return tipoc3ValidationFailureMessages;
            }
            case("id_formula"):
            {
                return id_formulaValidationFailureMessages;
            }
            case("campo2n"):
            {
                return campo2nValidationFailureMessages;
            }
            case("campo4n"):
            {
                return campo4nValidationFailureMessages;
            }
            case("campo3"):
            {
                return campo3ValidationFailureMessages;
            }
            case("cod3"):
            {
                return cod3ValidationFailureMessages;
            }
            case("campo2"):
            {
                return campo2ValidationFailureMessages;
            }
            case("cod2"):
            {
                return cod2ValidationFailureMessages;
            }
            case("campo5"):
            {
                return campo5ValidationFailureMessages;
            }
            case("cod1"):
            {
                return cod1ValidationFailureMessages;
            }
            case("campo4"):
            {
                return campo4ValidationFailureMessages;
            }
            case("sel"):
            {
                return selValidationFailureMessages;
            }
            case("campo1"):
            {
                return campo1ValidationFailureMessages;
            }
            case("cod5"):
            {
                return cod5ValidationFailureMessages;
            }
            case("formula"):
            {
                return formulaValidationFailureMessages;
            }
            case("cod4"):
            {
                return cod4ValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
