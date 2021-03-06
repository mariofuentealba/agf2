
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
internal class _IndicesFinancierosDatatypeEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("id_formula", "NOMBRE", "rangos_desc", "rango_superior", "DESCRIPCION", "formula_desc", "decimales", "campo3", "campo2", "ID_GRUPO_INDICE_FINANCIERO", "rango_inferior", "campo1", "ID_INDICE_FINANCIERO", "formula");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("id_formula", "NOMBRE", "rangos_desc", "rango_superior", "DESCRIPCION", "formula_desc", "decimales", "campo3", "campo2", "ID_GRUPO_INDICE_FINANCIERO", "rango_inferior", "campo1", "ID_INDICE_FINANCIERO", "formula");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("id_formula", "NOMBRE", "rangos_desc", "rango_superior", "DESCRIPCION", "formula_desc", "decimales", "campo3", "campo2", "ID_GRUPO_INDICE_FINANCIERO", "rango_inferior", "campo1", "ID_INDICE_FINANCIERO", "formula");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("id_formula", "NOMBRE", "rangos_desc", "rango_superior", "DESCRIPCION", "formula_desc", "decimales", "campo3", "campo2", "ID_GRUPO_INDICE_FINANCIERO", "rango_inferior", "campo1", "ID_INDICE_FINANCIERO", "formula");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("id_formula", "NOMBRE", "rangos_desc", "rango_superior", "DESCRIPCION", "formula_desc", "decimales", "campo3", "campo2", "ID_GRUPO_INDICE_FINANCIERO", "rango_inferior", "campo1", "ID_INDICE_FINANCIERO", "formula");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "IndicesFinancierosDatatype";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _id_formulaIsValid:Boolean;
    model_internal var _id_formulaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _id_formulaIsValidCacheInitialized:Boolean = false;
    model_internal var _id_formulaValidationFailureMessages:Array;
    
    model_internal var _NOMBREIsValid:Boolean;
    model_internal var _NOMBREValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _NOMBREIsValidCacheInitialized:Boolean = false;
    model_internal var _NOMBREValidationFailureMessages:Array;
    
    model_internal var _rangos_descIsValid:Boolean;
    model_internal var _rangos_descValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _rangos_descIsValidCacheInitialized:Boolean = false;
    model_internal var _rangos_descValidationFailureMessages:Array;
    
    model_internal var _rango_superiorIsValid:Boolean;
    model_internal var _rango_superiorValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _rango_superiorIsValidCacheInitialized:Boolean = false;
    model_internal var _rango_superiorValidationFailureMessages:Array;
    
    model_internal var _DESCRIPCIONIsValid:Boolean;
    model_internal var _DESCRIPCIONValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _DESCRIPCIONIsValidCacheInitialized:Boolean = false;
    model_internal var _DESCRIPCIONValidationFailureMessages:Array;
    
    model_internal var _formula_descIsValid:Boolean;
    model_internal var _formula_descValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _formula_descIsValidCacheInitialized:Boolean = false;
    model_internal var _formula_descValidationFailureMessages:Array;
    
    model_internal var _decimalesIsValid:Boolean;
    model_internal var _decimalesValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _decimalesIsValidCacheInitialized:Boolean = false;
    model_internal var _decimalesValidationFailureMessages:Array;
    
    model_internal var _campo3IsValid:Boolean;
    model_internal var _campo3Validator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _campo3IsValidCacheInitialized:Boolean = false;
    model_internal var _campo3ValidationFailureMessages:Array;
    
    model_internal var _campo2IsValid:Boolean;
    model_internal var _campo2Validator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _campo2IsValidCacheInitialized:Boolean = false;
    model_internal var _campo2ValidationFailureMessages:Array;
    
    model_internal var _ID_GRUPO_INDICE_FINANCIEROIsValid:Boolean;
    model_internal var _ID_GRUPO_INDICE_FINANCIEROValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _ID_GRUPO_INDICE_FINANCIEROIsValidCacheInitialized:Boolean = false;
    model_internal var _ID_GRUPO_INDICE_FINANCIEROValidationFailureMessages:Array;
    
    model_internal var _rango_inferiorIsValid:Boolean;
    model_internal var _rango_inferiorValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _rango_inferiorIsValidCacheInitialized:Boolean = false;
    model_internal var _rango_inferiorValidationFailureMessages:Array;
    
    model_internal var _campo1IsValid:Boolean;
    model_internal var _campo1Validator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _campo1IsValidCacheInitialized:Boolean = false;
    model_internal var _campo1ValidationFailureMessages:Array;
    
    model_internal var _formulaIsValid:Boolean;
    model_internal var _formulaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _formulaIsValidCacheInitialized:Boolean = false;
    model_internal var _formulaValidationFailureMessages:Array;

    model_internal var _instance:_Super_IndicesFinancierosDatatype;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _IndicesFinancierosDatatypeEntityMetadata(value : _Super_IndicesFinancierosDatatype)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["id_formula"] = new Array();
            model_internal::dependentsOnMap["NOMBRE"] = new Array();
            model_internal::dependentsOnMap["rangos_desc"] = new Array();
            model_internal::dependentsOnMap["rango_superior"] = new Array();
            model_internal::dependentsOnMap["DESCRIPCION"] = new Array();
            model_internal::dependentsOnMap["formula_desc"] = new Array();
            model_internal::dependentsOnMap["decimales"] = new Array();
            model_internal::dependentsOnMap["campo3"] = new Array();
            model_internal::dependentsOnMap["campo2"] = new Array();
            model_internal::dependentsOnMap["ID_GRUPO_INDICE_FINANCIERO"] = new Array();
            model_internal::dependentsOnMap["rango_inferior"] = new Array();
            model_internal::dependentsOnMap["campo1"] = new Array();
            model_internal::dependentsOnMap["ID_INDICE_FINANCIERO"] = new Array();
            model_internal::dependentsOnMap["formula"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["id_formula"] = "String";
        model_internal::propertyTypeMap["NOMBRE"] = "String";
        model_internal::propertyTypeMap["rangos_desc"] = "String";
        model_internal::propertyTypeMap["rango_superior"] = "String";
        model_internal::propertyTypeMap["DESCRIPCION"] = "String";
        model_internal::propertyTypeMap["formula_desc"] = "String";
        model_internal::propertyTypeMap["decimales"] = "String";
        model_internal::propertyTypeMap["campo3"] = "String";
        model_internal::propertyTypeMap["campo2"] = "String";
        model_internal::propertyTypeMap["ID_GRUPO_INDICE_FINANCIERO"] = "String";
        model_internal::propertyTypeMap["rango_inferior"] = "String";
        model_internal::propertyTypeMap["campo1"] = "String";
        model_internal::propertyTypeMap["ID_INDICE_FINANCIERO"] = "String";
        model_internal::propertyTypeMap["formula"] = "String";

        model_internal::_instance = value;
        model_internal::_id_formulaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForId_formula);
        model_internal::_id_formulaValidator.required = true;
        model_internal::_id_formulaValidator.requiredFieldError = "id_formula is required";
        //model_internal::_id_formulaValidator.source = model_internal::_instance;
        //model_internal::_id_formulaValidator.property = "id_formula";
        model_internal::_NOMBREValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNOMBRE);
        model_internal::_NOMBREValidator.required = true;
        model_internal::_NOMBREValidator.requiredFieldError = "NOMBRE is required";
        //model_internal::_NOMBREValidator.source = model_internal::_instance;
        //model_internal::_NOMBREValidator.property = "NOMBRE";
        model_internal::_rangos_descValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRangos_desc);
        model_internal::_rangos_descValidator.required = true;
        model_internal::_rangos_descValidator.requiredFieldError = "rangos_desc is required";
        //model_internal::_rangos_descValidator.source = model_internal::_instance;
        //model_internal::_rangos_descValidator.property = "rangos_desc";
        model_internal::_rango_superiorValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRango_superior);
        model_internal::_rango_superiorValidator.required = true;
        model_internal::_rango_superiorValidator.requiredFieldError = "rango_superior is required";
        //model_internal::_rango_superiorValidator.source = model_internal::_instance;
        //model_internal::_rango_superiorValidator.property = "rango_superior";
        model_internal::_DESCRIPCIONValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDESCRIPCION);
        model_internal::_DESCRIPCIONValidator.required = true;
        model_internal::_DESCRIPCIONValidator.requiredFieldError = "DESCRIPCION is required";
        //model_internal::_DESCRIPCIONValidator.source = model_internal::_instance;
        //model_internal::_DESCRIPCIONValidator.property = "DESCRIPCION";
        model_internal::_formula_descValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFormula_desc);
        model_internal::_formula_descValidator.required = true;
        model_internal::_formula_descValidator.requiredFieldError = "formula_desc is required";
        //model_internal::_formula_descValidator.source = model_internal::_instance;
        //model_internal::_formula_descValidator.property = "formula_desc";
        model_internal::_decimalesValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDecimales);
        model_internal::_decimalesValidator.required = true;
        model_internal::_decimalesValidator.requiredFieldError = "decimales is required";
        //model_internal::_decimalesValidator.source = model_internal::_instance;
        //model_internal::_decimalesValidator.property = "decimales";
        model_internal::_campo3Validator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCampo3);
        model_internal::_campo3Validator.required = true;
        model_internal::_campo3Validator.requiredFieldError = "campo3 is required";
        //model_internal::_campo3Validator.source = model_internal::_instance;
        //model_internal::_campo3Validator.property = "campo3";
        model_internal::_campo2Validator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCampo2);
        model_internal::_campo2Validator.required = true;
        model_internal::_campo2Validator.requiredFieldError = "campo2 is required";
        //model_internal::_campo2Validator.source = model_internal::_instance;
        //model_internal::_campo2Validator.property = "campo2";
        model_internal::_ID_GRUPO_INDICE_FINANCIEROValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForID_GRUPO_INDICE_FINANCIERO);
        model_internal::_ID_GRUPO_INDICE_FINANCIEROValidator.required = true;
        model_internal::_ID_GRUPO_INDICE_FINANCIEROValidator.requiredFieldError = "ID_GRUPO_INDICE_FINANCIERO is required";
        //model_internal::_ID_GRUPO_INDICE_FINANCIEROValidator.source = model_internal::_instance;
        //model_internal::_ID_GRUPO_INDICE_FINANCIEROValidator.property = "ID_GRUPO_INDICE_FINANCIERO";
        model_internal::_rango_inferiorValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRango_inferior);
        model_internal::_rango_inferiorValidator.required = true;
        model_internal::_rango_inferiorValidator.requiredFieldError = "rango_inferior is required";
        //model_internal::_rango_inferiorValidator.source = model_internal::_instance;
        //model_internal::_rango_inferiorValidator.property = "rango_inferior";
        model_internal::_campo1Validator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCampo1);
        model_internal::_campo1Validator.required = true;
        model_internal::_campo1Validator.requiredFieldError = "campo1 is required";
        //model_internal::_campo1Validator.source = model_internal::_instance;
        //model_internal::_campo1Validator.property = "campo1";
        model_internal::_formulaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFormula);
        model_internal::_formulaValidator.required = true;
        model_internal::_formulaValidator.requiredFieldError = "formula is required";
        //model_internal::_formulaValidator.source = model_internal::_instance;
        //model_internal::_formulaValidator.property = "formula";
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
            throw new Error(propertyName + " is not a data property of entity IndicesFinancierosDatatype");
            
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
            throw new Error(propertyName + " is not a collection property of entity IndicesFinancierosDatatype");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of IndicesFinancierosDatatype");

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
            throw new Error(propertyName + " does not exist for entity IndicesFinancierosDatatype");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity IndicesFinancierosDatatype");
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
            throw new Error(propertyName + " does not exist for entity IndicesFinancierosDatatype");
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
        returnMap["ID_INDICE_FINANCIERO"] = model_internal::_instance.ID_INDICE_FINANCIERO;

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
    public function get isId_formulaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNOMBREAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRangos_descAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRango_superiorAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDESCRIPCIONAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFormula_descAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDecimalesAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCampo3Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCampo2Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isID_GRUPO_INDICE_FINANCIEROAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRango_inferiorAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCampo1Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isID_INDICE_FINANCIEROAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFormulaAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnId_formula():void
    {
        if (model_internal::_id_formulaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfId_formula = null;
            model_internal::calculateId_formulaIsValid();
        }
    }
    public function invalidateDependentOnNOMBRE():void
    {
        if (model_internal::_NOMBREIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNOMBRE = null;
            model_internal::calculateNOMBREIsValid();
        }
    }
    public function invalidateDependentOnRangos_desc():void
    {
        if (model_internal::_rangos_descIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRangos_desc = null;
            model_internal::calculateRangos_descIsValid();
        }
    }
    public function invalidateDependentOnRango_superior():void
    {
        if (model_internal::_rango_superiorIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRango_superior = null;
            model_internal::calculateRango_superiorIsValid();
        }
    }
    public function invalidateDependentOnDESCRIPCION():void
    {
        if (model_internal::_DESCRIPCIONIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDESCRIPCION = null;
            model_internal::calculateDESCRIPCIONIsValid();
        }
    }
    public function invalidateDependentOnFormula_desc():void
    {
        if (model_internal::_formula_descIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFormula_desc = null;
            model_internal::calculateFormula_descIsValid();
        }
    }
    public function invalidateDependentOnDecimales():void
    {
        if (model_internal::_decimalesIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDecimales = null;
            model_internal::calculateDecimalesIsValid();
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
    public function invalidateDependentOnCampo2():void
    {
        if (model_internal::_campo2IsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCampo2 = null;
            model_internal::calculateCampo2IsValid();
        }
    }
    public function invalidateDependentOnID_GRUPO_INDICE_FINANCIERO():void
    {
        if (model_internal::_ID_GRUPO_INDICE_FINANCIEROIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfID_GRUPO_INDICE_FINANCIERO = null;
            model_internal::calculateID_GRUPO_INDICE_FINANCIEROIsValid();
        }
    }
    public function invalidateDependentOnRango_inferior():void
    {
        if (model_internal::_rango_inferiorIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRango_inferior = null;
            model_internal::calculateRango_inferiorIsValid();
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
    public function invalidateDependentOnFormula():void
    {
        if (model_internal::_formulaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFormula = null;
            model_internal::calculateFormulaIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
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
    public function get NOMBREStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get NOMBREValidator() : StyleValidator
    {
        return model_internal::_NOMBREValidator;
    }

    model_internal function set _NOMBREIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_NOMBREIsValid;         
        if (oldValue !== value)
        {
            model_internal::_NOMBREIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "NOMBREIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get NOMBREIsValid():Boolean
    {
        if (!model_internal::_NOMBREIsValidCacheInitialized)
        {
            model_internal::calculateNOMBREIsValid();
        }

        return model_internal::_NOMBREIsValid;
    }

    model_internal function calculateNOMBREIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_NOMBREValidator.validate(model_internal::_instance.NOMBRE)
        model_internal::_NOMBREIsValid_der = (valRes.results == null);
        model_internal::_NOMBREIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::NOMBREValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::NOMBREValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get NOMBREValidationFailureMessages():Array
    {
        if (model_internal::_NOMBREValidationFailureMessages == null)
            model_internal::calculateNOMBREIsValid();

        return _NOMBREValidationFailureMessages;
    }

    model_internal function set NOMBREValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_NOMBREValidationFailureMessages;

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
            model_internal::_NOMBREValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "NOMBREValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get rangos_descStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get rangos_descValidator() : StyleValidator
    {
        return model_internal::_rangos_descValidator;
    }

    model_internal function set _rangos_descIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_rangos_descIsValid;         
        if (oldValue !== value)
        {
            model_internal::_rangos_descIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rangos_descIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get rangos_descIsValid():Boolean
    {
        if (!model_internal::_rangos_descIsValidCacheInitialized)
        {
            model_internal::calculateRangos_descIsValid();
        }

        return model_internal::_rangos_descIsValid;
    }

    model_internal function calculateRangos_descIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_rangos_descValidator.validate(model_internal::_instance.rangos_desc)
        model_internal::_rangos_descIsValid_der = (valRes.results == null);
        model_internal::_rangos_descIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::rangos_descValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::rangos_descValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get rangos_descValidationFailureMessages():Array
    {
        if (model_internal::_rangos_descValidationFailureMessages == null)
            model_internal::calculateRangos_descIsValid();

        return _rangos_descValidationFailureMessages;
    }

    model_internal function set rangos_descValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_rangos_descValidationFailureMessages;

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
            model_internal::_rangos_descValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rangos_descValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get rango_superiorStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get rango_superiorValidator() : StyleValidator
    {
        return model_internal::_rango_superiorValidator;
    }

    model_internal function set _rango_superiorIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_rango_superiorIsValid;         
        if (oldValue !== value)
        {
            model_internal::_rango_superiorIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rango_superiorIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get rango_superiorIsValid():Boolean
    {
        if (!model_internal::_rango_superiorIsValidCacheInitialized)
        {
            model_internal::calculateRango_superiorIsValid();
        }

        return model_internal::_rango_superiorIsValid;
    }

    model_internal function calculateRango_superiorIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_rango_superiorValidator.validate(model_internal::_instance.rango_superior)
        model_internal::_rango_superiorIsValid_der = (valRes.results == null);
        model_internal::_rango_superiorIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::rango_superiorValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::rango_superiorValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get rango_superiorValidationFailureMessages():Array
    {
        if (model_internal::_rango_superiorValidationFailureMessages == null)
            model_internal::calculateRango_superiorIsValid();

        return _rango_superiorValidationFailureMessages;
    }

    model_internal function set rango_superiorValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_rango_superiorValidationFailureMessages;

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
            model_internal::_rango_superiorValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rango_superiorValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get DESCRIPCIONStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get DESCRIPCIONValidator() : StyleValidator
    {
        return model_internal::_DESCRIPCIONValidator;
    }

    model_internal function set _DESCRIPCIONIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_DESCRIPCIONIsValid;         
        if (oldValue !== value)
        {
            model_internal::_DESCRIPCIONIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "DESCRIPCIONIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get DESCRIPCIONIsValid():Boolean
    {
        if (!model_internal::_DESCRIPCIONIsValidCacheInitialized)
        {
            model_internal::calculateDESCRIPCIONIsValid();
        }

        return model_internal::_DESCRIPCIONIsValid;
    }

    model_internal function calculateDESCRIPCIONIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_DESCRIPCIONValidator.validate(model_internal::_instance.DESCRIPCION)
        model_internal::_DESCRIPCIONIsValid_der = (valRes.results == null);
        model_internal::_DESCRIPCIONIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::DESCRIPCIONValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::DESCRIPCIONValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get DESCRIPCIONValidationFailureMessages():Array
    {
        if (model_internal::_DESCRIPCIONValidationFailureMessages == null)
            model_internal::calculateDESCRIPCIONIsValid();

        return _DESCRIPCIONValidationFailureMessages;
    }

    model_internal function set DESCRIPCIONValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_DESCRIPCIONValidationFailureMessages;

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
            model_internal::_DESCRIPCIONValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "DESCRIPCIONValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get formula_descStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get formula_descValidator() : StyleValidator
    {
        return model_internal::_formula_descValidator;
    }

    model_internal function set _formula_descIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_formula_descIsValid;         
        if (oldValue !== value)
        {
            model_internal::_formula_descIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "formula_descIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get formula_descIsValid():Boolean
    {
        if (!model_internal::_formula_descIsValidCacheInitialized)
        {
            model_internal::calculateFormula_descIsValid();
        }

        return model_internal::_formula_descIsValid;
    }

    model_internal function calculateFormula_descIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_formula_descValidator.validate(model_internal::_instance.formula_desc)
        model_internal::_formula_descIsValid_der = (valRes.results == null);
        model_internal::_formula_descIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::formula_descValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::formula_descValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get formula_descValidationFailureMessages():Array
    {
        if (model_internal::_formula_descValidationFailureMessages == null)
            model_internal::calculateFormula_descIsValid();

        return _formula_descValidationFailureMessages;
    }

    model_internal function set formula_descValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_formula_descValidationFailureMessages;

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
            model_internal::_formula_descValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "formula_descValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get decimalesStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get decimalesValidator() : StyleValidator
    {
        return model_internal::_decimalesValidator;
    }

    model_internal function set _decimalesIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_decimalesIsValid;         
        if (oldValue !== value)
        {
            model_internal::_decimalesIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "decimalesIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get decimalesIsValid():Boolean
    {
        if (!model_internal::_decimalesIsValidCacheInitialized)
        {
            model_internal::calculateDecimalesIsValid();
        }

        return model_internal::_decimalesIsValid;
    }

    model_internal function calculateDecimalesIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_decimalesValidator.validate(model_internal::_instance.decimales)
        model_internal::_decimalesIsValid_der = (valRes.results == null);
        model_internal::_decimalesIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::decimalesValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::decimalesValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get decimalesValidationFailureMessages():Array
    {
        if (model_internal::_decimalesValidationFailureMessages == null)
            model_internal::calculateDecimalesIsValid();

        return _decimalesValidationFailureMessages;
    }

    model_internal function set decimalesValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_decimalesValidationFailureMessages;

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
            model_internal::_decimalesValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "decimalesValidationFailureMessages", oldValue, value));
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
    public function get ID_GRUPO_INDICE_FINANCIEROStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get ID_GRUPO_INDICE_FINANCIEROValidator() : StyleValidator
    {
        return model_internal::_ID_GRUPO_INDICE_FINANCIEROValidator;
    }

    model_internal function set _ID_GRUPO_INDICE_FINANCIEROIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_ID_GRUPO_INDICE_FINANCIEROIsValid;         
        if (oldValue !== value)
        {
            model_internal::_ID_GRUPO_INDICE_FINANCIEROIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ID_GRUPO_INDICE_FINANCIEROIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get ID_GRUPO_INDICE_FINANCIEROIsValid():Boolean
    {
        if (!model_internal::_ID_GRUPO_INDICE_FINANCIEROIsValidCacheInitialized)
        {
            model_internal::calculateID_GRUPO_INDICE_FINANCIEROIsValid();
        }

        return model_internal::_ID_GRUPO_INDICE_FINANCIEROIsValid;
    }

    model_internal function calculateID_GRUPO_INDICE_FINANCIEROIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_ID_GRUPO_INDICE_FINANCIEROValidator.validate(model_internal::_instance.ID_GRUPO_INDICE_FINANCIERO)
        model_internal::_ID_GRUPO_INDICE_FINANCIEROIsValid_der = (valRes.results == null);
        model_internal::_ID_GRUPO_INDICE_FINANCIEROIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::ID_GRUPO_INDICE_FINANCIEROValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::ID_GRUPO_INDICE_FINANCIEROValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get ID_GRUPO_INDICE_FINANCIEROValidationFailureMessages():Array
    {
        if (model_internal::_ID_GRUPO_INDICE_FINANCIEROValidationFailureMessages == null)
            model_internal::calculateID_GRUPO_INDICE_FINANCIEROIsValid();

        return _ID_GRUPO_INDICE_FINANCIEROValidationFailureMessages;
    }

    model_internal function set ID_GRUPO_INDICE_FINANCIEROValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_ID_GRUPO_INDICE_FINANCIEROValidationFailureMessages;

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
            model_internal::_ID_GRUPO_INDICE_FINANCIEROValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ID_GRUPO_INDICE_FINANCIEROValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get rango_inferiorStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get rango_inferiorValidator() : StyleValidator
    {
        return model_internal::_rango_inferiorValidator;
    }

    model_internal function set _rango_inferiorIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_rango_inferiorIsValid;         
        if (oldValue !== value)
        {
            model_internal::_rango_inferiorIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rango_inferiorIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get rango_inferiorIsValid():Boolean
    {
        if (!model_internal::_rango_inferiorIsValidCacheInitialized)
        {
            model_internal::calculateRango_inferiorIsValid();
        }

        return model_internal::_rango_inferiorIsValid;
    }

    model_internal function calculateRango_inferiorIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_rango_inferiorValidator.validate(model_internal::_instance.rango_inferior)
        model_internal::_rango_inferiorIsValid_der = (valRes.results == null);
        model_internal::_rango_inferiorIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::rango_inferiorValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::rango_inferiorValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get rango_inferiorValidationFailureMessages():Array
    {
        if (model_internal::_rango_inferiorValidationFailureMessages == null)
            model_internal::calculateRango_inferiorIsValid();

        return _rango_inferiorValidationFailureMessages;
    }

    model_internal function set rango_inferiorValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_rango_inferiorValidationFailureMessages;

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
            model_internal::_rango_inferiorValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rango_inferiorValidationFailureMessages", oldValue, value));
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
    public function get ID_INDICE_FINANCIEROStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
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
            case("id_formula"):
            {
                return id_formulaValidationFailureMessages;
            }
            case("NOMBRE"):
            {
                return NOMBREValidationFailureMessages;
            }
            case("rangos_desc"):
            {
                return rangos_descValidationFailureMessages;
            }
            case("rango_superior"):
            {
                return rango_superiorValidationFailureMessages;
            }
            case("DESCRIPCION"):
            {
                return DESCRIPCIONValidationFailureMessages;
            }
            case("formula_desc"):
            {
                return formula_descValidationFailureMessages;
            }
            case("decimales"):
            {
                return decimalesValidationFailureMessages;
            }
            case("campo3"):
            {
                return campo3ValidationFailureMessages;
            }
            case("campo2"):
            {
                return campo2ValidationFailureMessages;
            }
            case("ID_GRUPO_INDICE_FINANCIERO"):
            {
                return ID_GRUPO_INDICE_FINANCIEROValidationFailureMessages;
            }
            case("rango_inferior"):
            {
                return rango_inferiorValidationFailureMessages;
            }
            case("campo1"):
            {
                return campo1ValidationFailureMessages;
            }
            case("formula"):
            {
                return formulaValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
