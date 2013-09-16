
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
internal class _PeriodoDatatypeEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("RSO", "oa", "id_periodo");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("RSO", "oa", "id_periodo");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("RSO", "oa", "id_periodo");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("RSO", "oa", "id_periodo");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("RSO", "oa", "id_periodo");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "PeriodoDatatype";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _RSOIsValid:Boolean;
    model_internal var _RSOValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _RSOIsValidCacheInitialized:Boolean = false;
    model_internal var _RSOValidationFailureMessages:Array;
    
    model_internal var _oaIsValid:Boolean;
    model_internal var _oaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _oaIsValidCacheInitialized:Boolean = false;
    model_internal var _oaValidationFailureMessages:Array;
    
    model_internal var _id_periodoIsValid:Boolean;
    model_internal var _id_periodoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _id_periodoIsValidCacheInitialized:Boolean = false;
    model_internal var _id_periodoValidationFailureMessages:Array;

    model_internal var _instance:_Super_PeriodoDatatype;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _PeriodoDatatypeEntityMetadata(value : _Super_PeriodoDatatype)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["RSO"] = new Array();
            model_internal::dependentsOnMap["oa"] = new Array();
            model_internal::dependentsOnMap["id_periodo"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["RSO"] = "String";
        model_internal::propertyTypeMap["oa"] = "String";
        model_internal::propertyTypeMap["id_periodo"] = "String";

        model_internal::_instance = value;
        model_internal::_RSOValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRSO);
        model_internal::_RSOValidator.required = true;
        model_internal::_RSOValidator.requiredFieldError = "RSO is required";
        //model_internal::_RSOValidator.source = model_internal::_instance;
        //model_internal::_RSOValidator.property = "RSO";
        model_internal::_oaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForOa);
        model_internal::_oaValidator.required = true;
        model_internal::_oaValidator.requiredFieldError = "oa is required";
        //model_internal::_oaValidator.source = model_internal::_instance;
        //model_internal::_oaValidator.property = "oa";
        model_internal::_id_periodoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForId_periodo);
        model_internal::_id_periodoValidator.required = true;
        model_internal::_id_periodoValidator.requiredFieldError = "id_periodo is required";
        //model_internal::_id_periodoValidator.source = model_internal::_instance;
        //model_internal::_id_periodoValidator.property = "id_periodo";
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
            throw new Error(propertyName + " is not a data property of entity PeriodoDatatype");
            
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
            throw new Error(propertyName + " is not a collection property of entity PeriodoDatatype");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of PeriodoDatatype");

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
            throw new Error(propertyName + " does not exist for entity PeriodoDatatype");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity PeriodoDatatype");
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
            throw new Error(propertyName + " does not exist for entity PeriodoDatatype");
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
    public function get isRSOAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isOaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isId_periodoAvailable():Boolean
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
    public function invalidateDependentOnOa():void
    {
        if (model_internal::_oaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfOa = null;
            model_internal::calculateOaIsValid();
        }
    }
    public function invalidateDependentOnId_periodo():void
    {
        if (model_internal::_id_periodoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfId_periodo = null;
            model_internal::calculateId_periodoIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
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
    public function get oaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get oaValidator() : StyleValidator
    {
        return model_internal::_oaValidator;
    }

    model_internal function set _oaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_oaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_oaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "oaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get oaIsValid():Boolean
    {
        if (!model_internal::_oaIsValidCacheInitialized)
        {
            model_internal::calculateOaIsValid();
        }

        return model_internal::_oaIsValid;
    }

    model_internal function calculateOaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_oaValidator.validate(model_internal::_instance.oa)
        model_internal::_oaIsValid_der = (valRes.results == null);
        model_internal::_oaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::oaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::oaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get oaValidationFailureMessages():Array
    {
        if (model_internal::_oaValidationFailureMessages == null)
            model_internal::calculateOaIsValid();

        return _oaValidationFailureMessages;
    }

    model_internal function set oaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_oaValidationFailureMessages;

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
            model_internal::_oaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "oaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get id_periodoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get id_periodoValidator() : StyleValidator
    {
        return model_internal::_id_periodoValidator;
    }

    model_internal function set _id_periodoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_id_periodoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_id_periodoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id_periodoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get id_periodoIsValid():Boolean
    {
        if (!model_internal::_id_periodoIsValidCacheInitialized)
        {
            model_internal::calculateId_periodoIsValid();
        }

        return model_internal::_id_periodoIsValid;
    }

    model_internal function calculateId_periodoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_id_periodoValidator.validate(model_internal::_instance.id_periodo)
        model_internal::_id_periodoIsValid_der = (valRes.results == null);
        model_internal::_id_periodoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::id_periodoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::id_periodoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get id_periodoValidationFailureMessages():Array
    {
        if (model_internal::_id_periodoValidationFailureMessages == null)
            model_internal::calculateId_periodoIsValid();

        return _id_periodoValidationFailureMessages;
    }

    model_internal function set id_periodoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_id_periodoValidationFailureMessages;

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
            model_internal::_id_periodoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id_periodoValidationFailureMessages", oldValue, value));
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
            case("RSO"):
            {
                return RSOValidationFailureMessages;
            }
            case("oa"):
            {
                return oaValidationFailureMessages;
            }
            case("id_periodo"):
            {
                return id_periodoValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
