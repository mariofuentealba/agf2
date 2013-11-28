
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
internal class _EmpresaDatatypeEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("ID_SUBGRUPO", "RSO", "color", "TIPO_IFRS", "TIPO_BALANCE", "RUT", "NOMBRE_BOLSA", "NOMBRE_FANTASIA", "ID_EMPRESA");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("ID_SUBGRUPO", "RSO", "color", "TIPO_IFRS", "TIPO_BALANCE", "RUT", "NOMBRE_BOLSA", "NOMBRE_FANTASIA", "ID_EMPRESA");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("ID_SUBGRUPO", "RSO", "color", "TIPO_IFRS", "TIPO_BALANCE", "RUT", "NOMBRE_BOLSA", "NOMBRE_FANTASIA", "ID_EMPRESA");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("ID_SUBGRUPO", "RSO", "color", "TIPO_IFRS", "TIPO_BALANCE", "RUT", "NOMBRE_BOLSA", "NOMBRE_FANTASIA", "ID_EMPRESA");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("ID_SUBGRUPO", "RSO", "color", "TIPO_IFRS", "TIPO_BALANCE", "RUT", "NOMBRE_BOLSA", "NOMBRE_FANTASIA", "ID_EMPRESA");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "EmpresaDatatype";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _RSOIsValid:Boolean;
    model_internal var _RSOValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _RSOIsValidCacheInitialized:Boolean = false;
    model_internal var _RSOValidationFailureMessages:Array;
    
    model_internal var _colorIsValid:Boolean;
    model_internal var _colorValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _colorIsValidCacheInitialized:Boolean = false;
    model_internal var _colorValidationFailureMessages:Array;
    
    model_internal var _TIPO_IFRSIsValid:Boolean;
    model_internal var _TIPO_IFRSValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _TIPO_IFRSIsValidCacheInitialized:Boolean = false;
    model_internal var _TIPO_IFRSValidationFailureMessages:Array;
    
    model_internal var _TIPO_BALANCEIsValid:Boolean;
    model_internal var _TIPO_BALANCEValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _TIPO_BALANCEIsValidCacheInitialized:Boolean = false;
    model_internal var _TIPO_BALANCEValidationFailureMessages:Array;
    
    model_internal var _RUTIsValid:Boolean;
    model_internal var _RUTValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _RUTIsValidCacheInitialized:Boolean = false;
    model_internal var _RUTValidationFailureMessages:Array;
    
    model_internal var _NOMBRE_BOLSAIsValid:Boolean;
    model_internal var _NOMBRE_BOLSAValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _NOMBRE_BOLSAIsValidCacheInitialized:Boolean = false;
    model_internal var _NOMBRE_BOLSAValidationFailureMessages:Array;
    
    model_internal var _NOMBRE_FANTASIAIsValid:Boolean;
    model_internal var _NOMBRE_FANTASIAValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _NOMBRE_FANTASIAIsValidCacheInitialized:Boolean = false;
    model_internal var _NOMBRE_FANTASIAValidationFailureMessages:Array;

    model_internal var _instance:_Super_EmpresaDatatype;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _EmpresaDatatypeEntityMetadata(value : _Super_EmpresaDatatype)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["ID_SUBGRUPO"] = new Array();
            model_internal::dependentsOnMap["RSO"] = new Array();
            model_internal::dependentsOnMap["color"] = new Array();
            model_internal::dependentsOnMap["TIPO_IFRS"] = new Array();
            model_internal::dependentsOnMap["TIPO_BALANCE"] = new Array();
            model_internal::dependentsOnMap["RUT"] = new Array();
            model_internal::dependentsOnMap["NOMBRE_BOLSA"] = new Array();
            model_internal::dependentsOnMap["NOMBRE_FANTASIA"] = new Array();
            model_internal::dependentsOnMap["ID_EMPRESA"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["ID_SUBGRUPO"] = "String";
        model_internal::propertyTypeMap["RSO"] = "String";
        model_internal::propertyTypeMap["color"] = "String";
        model_internal::propertyTypeMap["TIPO_IFRS"] = "String";
        model_internal::propertyTypeMap["TIPO_BALANCE"] = "String";
        model_internal::propertyTypeMap["RUT"] = "String";
        model_internal::propertyTypeMap["NOMBRE_BOLSA"] = "String";
        model_internal::propertyTypeMap["NOMBRE_FANTASIA"] = "String";
        model_internal::propertyTypeMap["ID_EMPRESA"] = "String";

        model_internal::_instance = value;
        model_internal::_RSOValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRSO);
        model_internal::_RSOValidator.required = true;
        model_internal::_RSOValidator.requiredFieldError = "RSO is required";
        //model_internal::_RSOValidator.source = model_internal::_instance;
        //model_internal::_RSOValidator.property = "RSO";
        model_internal::_colorValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForColor);
        model_internal::_colorValidator.required = true;
        model_internal::_colorValidator.requiredFieldError = "color is required";
        //model_internal::_colorValidator.source = model_internal::_instance;
        //model_internal::_colorValidator.property = "color";
        model_internal::_TIPO_IFRSValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTIPO_IFRS);
        model_internal::_TIPO_IFRSValidator.required = true;
        model_internal::_TIPO_IFRSValidator.requiredFieldError = "TIPO_IFRS is required";
        //model_internal::_TIPO_IFRSValidator.source = model_internal::_instance;
        //model_internal::_TIPO_IFRSValidator.property = "TIPO_IFRS";
        model_internal::_TIPO_BALANCEValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTIPO_BALANCE);
        model_internal::_TIPO_BALANCEValidator.required = true;
        model_internal::_TIPO_BALANCEValidator.requiredFieldError = "TIPO_BALANCE is required";
        //model_internal::_TIPO_BALANCEValidator.source = model_internal::_instance;
        //model_internal::_TIPO_BALANCEValidator.property = "TIPO_BALANCE";
        model_internal::_RUTValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRUT);
        model_internal::_RUTValidator.required = true;
        model_internal::_RUTValidator.requiredFieldError = "RUT is required";
        //model_internal::_RUTValidator.source = model_internal::_instance;
        //model_internal::_RUTValidator.property = "RUT";
        model_internal::_NOMBRE_BOLSAValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNOMBRE_BOLSA);
        model_internal::_NOMBRE_BOLSAValidator.required = true;
        model_internal::_NOMBRE_BOLSAValidator.requiredFieldError = "NOMBRE_BOLSA is required";
        //model_internal::_NOMBRE_BOLSAValidator.source = model_internal::_instance;
        //model_internal::_NOMBRE_BOLSAValidator.property = "NOMBRE_BOLSA";
        model_internal::_NOMBRE_FANTASIAValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNOMBRE_FANTASIA);
        model_internal::_NOMBRE_FANTASIAValidator.required = true;
        model_internal::_NOMBRE_FANTASIAValidator.requiredFieldError = "NOMBRE_FANTASIA is required";
        //model_internal::_NOMBRE_FANTASIAValidator.source = model_internal::_instance;
        //model_internal::_NOMBRE_FANTASIAValidator.property = "NOMBRE_FANTASIA";
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
            throw new Error(propertyName + " is not a data property of entity EmpresaDatatype");
            
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
            throw new Error(propertyName + " is not a collection property of entity EmpresaDatatype");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of EmpresaDatatype");

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
            throw new Error(propertyName + " does not exist for entity EmpresaDatatype");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity EmpresaDatatype");
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
            throw new Error(propertyName + " does not exist for entity EmpresaDatatype");
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
        returnMap["ID_SUBGRUPO"] = model_internal::_instance.ID_SUBGRUPO;
        returnMap["ID_EMPRESA"] = model_internal::_instance.ID_EMPRESA;

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
    public function get isID_SUBGRUPOAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRSOAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isColorAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTIPO_IFRSAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTIPO_BALANCEAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRUTAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNOMBRE_BOLSAAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNOMBRE_FANTASIAAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isID_EMPRESAAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnRSO():void
    {
        if (model_internal::_RSOIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRSO = null;
            model_internal::calculateRSOIsValid();
        }
    }
    public function invalidateDependentOnColor():void
    {
        if (model_internal::_colorIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfColor = null;
            model_internal::calculateColorIsValid();
        }
    }
    public function invalidateDependentOnTIPO_IFRS():void
    {
        if (model_internal::_TIPO_IFRSIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTIPO_IFRS = null;
            model_internal::calculateTIPO_IFRSIsValid();
        }
    }
    public function invalidateDependentOnTIPO_BALANCE():void
    {
        if (model_internal::_TIPO_BALANCEIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTIPO_BALANCE = null;
            model_internal::calculateTIPO_BALANCEIsValid();
        }
    }
    public function invalidateDependentOnRUT():void
    {
        if (model_internal::_RUTIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRUT = null;
            model_internal::calculateRUTIsValid();
        }
    }
    public function invalidateDependentOnNOMBRE_BOLSA():void
    {
        if (model_internal::_NOMBRE_BOLSAIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNOMBRE_BOLSA = null;
            model_internal::calculateNOMBRE_BOLSAIsValid();
        }
    }
    public function invalidateDependentOnNOMBRE_FANTASIA():void
    {
        if (model_internal::_NOMBRE_FANTASIAIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNOMBRE_FANTASIA = null;
            model_internal::calculateNOMBRE_FANTASIAIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get ID_SUBGRUPOStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get RSOStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get RSOValidator() : StyleValidator
    {
        return model_internal::_RSOValidator;
    }

    model_internal function set _RSOIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_RSOIsValid;         
        if (oldValue !== value)
        {
            model_internal::_RSOIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "RSOIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get RSOIsValid():Boolean
    {
        if (!model_internal::_RSOIsValidCacheInitialized)
        {
            model_internal::calculateRSOIsValid();
        }

        return model_internal::_RSOIsValid;
    }

    model_internal function calculateRSOIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_RSOValidator.validate(model_internal::_instance.RSO)
        model_internal::_RSOIsValid_der = (valRes.results == null);
        model_internal::_RSOIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::RSOValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::RSOValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get RSOValidationFailureMessages():Array
    {
        if (model_internal::_RSOValidationFailureMessages == null)
            model_internal::calculateRSOIsValid();

        return _RSOValidationFailureMessages;
    }

    model_internal function set RSOValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_RSOValidationFailureMessages;

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
            model_internal::_RSOValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "RSOValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get colorStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get colorValidator() : StyleValidator
    {
        return model_internal::_colorValidator;
    }

    model_internal function set _colorIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_colorIsValid;         
        if (oldValue !== value)
        {
            model_internal::_colorIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "colorIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get colorIsValid():Boolean
    {
        if (!model_internal::_colorIsValidCacheInitialized)
        {
            model_internal::calculateColorIsValid();
        }

        return model_internal::_colorIsValid;
    }

    model_internal function calculateColorIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_colorValidator.validate(model_internal::_instance.color)
        model_internal::_colorIsValid_der = (valRes.results == null);
        model_internal::_colorIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::colorValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::colorValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get colorValidationFailureMessages():Array
    {
        if (model_internal::_colorValidationFailureMessages == null)
            model_internal::calculateColorIsValid();

        return _colorValidationFailureMessages;
    }

    model_internal function set colorValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_colorValidationFailureMessages;

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
            model_internal::_colorValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "colorValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get TIPO_IFRSStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get TIPO_IFRSValidator() : StyleValidator
    {
        return model_internal::_TIPO_IFRSValidator;
    }

    model_internal function set _TIPO_IFRSIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_TIPO_IFRSIsValid;         
        if (oldValue !== value)
        {
            model_internal::_TIPO_IFRSIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TIPO_IFRSIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get TIPO_IFRSIsValid():Boolean
    {
        if (!model_internal::_TIPO_IFRSIsValidCacheInitialized)
        {
            model_internal::calculateTIPO_IFRSIsValid();
        }

        return model_internal::_TIPO_IFRSIsValid;
    }

    model_internal function calculateTIPO_IFRSIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_TIPO_IFRSValidator.validate(model_internal::_instance.TIPO_IFRS)
        model_internal::_TIPO_IFRSIsValid_der = (valRes.results == null);
        model_internal::_TIPO_IFRSIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::TIPO_IFRSValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::TIPO_IFRSValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get TIPO_IFRSValidationFailureMessages():Array
    {
        if (model_internal::_TIPO_IFRSValidationFailureMessages == null)
            model_internal::calculateTIPO_IFRSIsValid();

        return _TIPO_IFRSValidationFailureMessages;
    }

    model_internal function set TIPO_IFRSValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_TIPO_IFRSValidationFailureMessages;

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
            model_internal::_TIPO_IFRSValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TIPO_IFRSValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get TIPO_BALANCEStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get TIPO_BALANCEValidator() : StyleValidator
    {
        return model_internal::_TIPO_BALANCEValidator;
    }

    model_internal function set _TIPO_BALANCEIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_TIPO_BALANCEIsValid;         
        if (oldValue !== value)
        {
            model_internal::_TIPO_BALANCEIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TIPO_BALANCEIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get TIPO_BALANCEIsValid():Boolean
    {
        if (!model_internal::_TIPO_BALANCEIsValidCacheInitialized)
        {
            model_internal::calculateTIPO_BALANCEIsValid();
        }

        return model_internal::_TIPO_BALANCEIsValid;
    }

    model_internal function calculateTIPO_BALANCEIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_TIPO_BALANCEValidator.validate(model_internal::_instance.TIPO_BALANCE)
        model_internal::_TIPO_BALANCEIsValid_der = (valRes.results == null);
        model_internal::_TIPO_BALANCEIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::TIPO_BALANCEValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::TIPO_BALANCEValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get TIPO_BALANCEValidationFailureMessages():Array
    {
        if (model_internal::_TIPO_BALANCEValidationFailureMessages == null)
            model_internal::calculateTIPO_BALANCEIsValid();

        return _TIPO_BALANCEValidationFailureMessages;
    }

    model_internal function set TIPO_BALANCEValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_TIPO_BALANCEValidationFailureMessages;

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
            model_internal::_TIPO_BALANCEValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TIPO_BALANCEValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get RUTStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get RUTValidator() : StyleValidator
    {
        return model_internal::_RUTValidator;
    }

    model_internal function set _RUTIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_RUTIsValid;         
        if (oldValue !== value)
        {
            model_internal::_RUTIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "RUTIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get RUTIsValid():Boolean
    {
        if (!model_internal::_RUTIsValidCacheInitialized)
        {
            model_internal::calculateRUTIsValid();
        }

        return model_internal::_RUTIsValid;
    }

    model_internal function calculateRUTIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_RUTValidator.validate(model_internal::_instance.RUT)
        model_internal::_RUTIsValid_der = (valRes.results == null);
        model_internal::_RUTIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::RUTValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::RUTValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get RUTValidationFailureMessages():Array
    {
        if (model_internal::_RUTValidationFailureMessages == null)
            model_internal::calculateRUTIsValid();

        return _RUTValidationFailureMessages;
    }

    model_internal function set RUTValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_RUTValidationFailureMessages;

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
            model_internal::_RUTValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "RUTValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get NOMBRE_BOLSAStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get NOMBRE_BOLSAValidator() : StyleValidator
    {
        return model_internal::_NOMBRE_BOLSAValidator;
    }

    model_internal function set _NOMBRE_BOLSAIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_NOMBRE_BOLSAIsValid;         
        if (oldValue !== value)
        {
            model_internal::_NOMBRE_BOLSAIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "NOMBRE_BOLSAIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get NOMBRE_BOLSAIsValid():Boolean
    {
        if (!model_internal::_NOMBRE_BOLSAIsValidCacheInitialized)
        {
            model_internal::calculateNOMBRE_BOLSAIsValid();
        }

        return model_internal::_NOMBRE_BOLSAIsValid;
    }

    model_internal function calculateNOMBRE_BOLSAIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_NOMBRE_BOLSAValidator.validate(model_internal::_instance.NOMBRE_BOLSA)
        model_internal::_NOMBRE_BOLSAIsValid_der = (valRes.results == null);
        model_internal::_NOMBRE_BOLSAIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::NOMBRE_BOLSAValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::NOMBRE_BOLSAValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get NOMBRE_BOLSAValidationFailureMessages():Array
    {
        if (model_internal::_NOMBRE_BOLSAValidationFailureMessages == null)
            model_internal::calculateNOMBRE_BOLSAIsValid();

        return _NOMBRE_BOLSAValidationFailureMessages;
    }

    model_internal function set NOMBRE_BOLSAValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_NOMBRE_BOLSAValidationFailureMessages;

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
            model_internal::_NOMBRE_BOLSAValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "NOMBRE_BOLSAValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get NOMBRE_FANTASIAStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get NOMBRE_FANTASIAValidator() : StyleValidator
    {
        return model_internal::_NOMBRE_FANTASIAValidator;
    }

    model_internal function set _NOMBRE_FANTASIAIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_NOMBRE_FANTASIAIsValid;         
        if (oldValue !== value)
        {
            model_internal::_NOMBRE_FANTASIAIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "NOMBRE_FANTASIAIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get NOMBRE_FANTASIAIsValid():Boolean
    {
        if (!model_internal::_NOMBRE_FANTASIAIsValidCacheInitialized)
        {
            model_internal::calculateNOMBRE_FANTASIAIsValid();
        }

        return model_internal::_NOMBRE_FANTASIAIsValid;
    }

    model_internal function calculateNOMBRE_FANTASIAIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_NOMBRE_FANTASIAValidator.validate(model_internal::_instance.NOMBRE_FANTASIA)
        model_internal::_NOMBRE_FANTASIAIsValid_der = (valRes.results == null);
        model_internal::_NOMBRE_FANTASIAIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::NOMBRE_FANTASIAValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::NOMBRE_FANTASIAValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get NOMBRE_FANTASIAValidationFailureMessages():Array
    {
        if (model_internal::_NOMBRE_FANTASIAValidationFailureMessages == null)
            model_internal::calculateNOMBRE_FANTASIAIsValid();

        return _NOMBRE_FANTASIAValidationFailureMessages;
    }

    model_internal function set NOMBRE_FANTASIAValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_NOMBRE_FANTASIAValidationFailureMessages;

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
            model_internal::_NOMBRE_FANTASIAValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "NOMBRE_FANTASIAValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get ID_EMPRESAStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
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
            case("RSO"):
            {
                return RSOValidationFailureMessages;
            }
            case("color"):
            {
                return colorValidationFailureMessages;
            }
            case("TIPO_IFRS"):
            {
                return TIPO_IFRSValidationFailureMessages;
            }
            case("TIPO_BALANCE"):
            {
                return TIPO_BALANCEValidationFailureMessages;
            }
            case("RUT"):
            {
                return RUTValidationFailureMessages;
            }
            case("NOMBRE_BOLSA"):
            {
                return NOMBRE_BOLSAValidationFailureMessages;
            }
            case("NOMBRE_FANTASIA"):
            {
                return NOMBRE_FANTASIAValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
