
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

    model_internal static var allProperties:Array = new Array("orden", "RSO", "color", "vigencia", "tipoEntidad", "RUT", "ID_EMPRESA");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("orden", "RSO", "color", "vigencia", "tipoEntidad", "RUT", "ID_EMPRESA");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("orden", "RSO", "color", "vigencia", "tipoEntidad", "RUT", "ID_EMPRESA");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("orden", "RSO", "color", "vigencia", "tipoEntidad", "RUT", "ID_EMPRESA");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("orden", "RSO", "color", "vigencia", "tipoEntidad", "RUT", "ID_EMPRESA");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "EmpresaDatatype";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _ordenIsValid:Boolean;
    model_internal var _ordenValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _ordenIsValidCacheInitialized:Boolean = false;
    model_internal var _ordenValidationFailureMessages:Array;
    
    model_internal var _RSOIsValid:Boolean;
    model_internal var _RSOValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _RSOIsValidCacheInitialized:Boolean = false;
    model_internal var _RSOValidationFailureMessages:Array;
    
    model_internal var _colorIsValid:Boolean;
    model_internal var _colorValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _colorIsValidCacheInitialized:Boolean = false;
    model_internal var _colorValidationFailureMessages:Array;
    
    model_internal var _vigenciaIsValid:Boolean;
    model_internal var _vigenciaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _vigenciaIsValidCacheInitialized:Boolean = false;
    model_internal var _vigenciaValidationFailureMessages:Array;
    
    model_internal var _tipoEntidadIsValid:Boolean;
    model_internal var _tipoEntidadValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _tipoEntidadIsValidCacheInitialized:Boolean = false;
    model_internal var _tipoEntidadValidationFailureMessages:Array;
    
    model_internal var _RUTIsValid:Boolean;
    model_internal var _RUTValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _RUTIsValidCacheInitialized:Boolean = false;
    model_internal var _RUTValidationFailureMessages:Array;
    
    model_internal var _ID_EMPRESAIsValid:Boolean;
    model_internal var _ID_EMPRESAValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _ID_EMPRESAIsValidCacheInitialized:Boolean = false;
    model_internal var _ID_EMPRESAValidationFailureMessages:Array;

    model_internal var _instance:_Super_EmpresaDatatype;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _EmpresaDatatypeEntityMetadata(value : _Super_EmpresaDatatype)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["orden"] = new Array();
            model_internal::dependentsOnMap["RSO"] = new Array();
            model_internal::dependentsOnMap["color"] = new Array();
            model_internal::dependentsOnMap["vigencia"] = new Array();
            model_internal::dependentsOnMap["tipoEntidad"] = new Array();
            model_internal::dependentsOnMap["RUT"] = new Array();
            model_internal::dependentsOnMap["ID_EMPRESA"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["orden"] = "String";
        model_internal::propertyTypeMap["RSO"] = "Object";
        model_internal::propertyTypeMap["color"] = "String";
        model_internal::propertyTypeMap["vigencia"] = "String";
        model_internal::propertyTypeMap["tipoEntidad"] = "String";
        model_internal::propertyTypeMap["RUT"] = "String";
        model_internal::propertyTypeMap["ID_EMPRESA"] = "String";

        model_internal::_instance = value;
        model_internal::_ordenValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForOrden);
        model_internal::_ordenValidator.required = true;
        model_internal::_ordenValidator.requiredFieldError = "orden is required";
        //model_internal::_ordenValidator.source = model_internal::_instance;
        //model_internal::_ordenValidator.property = "orden";
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
        model_internal::_vigenciaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForVigencia);
        model_internal::_vigenciaValidator.required = true;
        model_internal::_vigenciaValidator.requiredFieldError = "vigencia is required";
        //model_internal::_vigenciaValidator.source = model_internal::_instance;
        //model_internal::_vigenciaValidator.property = "vigencia";
        model_internal::_tipoEntidadValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTipoEntidad);
        model_internal::_tipoEntidadValidator.required = true;
        model_internal::_tipoEntidadValidator.requiredFieldError = "tipoEntidad is required";
        //model_internal::_tipoEntidadValidator.source = model_internal::_instance;
        //model_internal::_tipoEntidadValidator.property = "tipoEntidad";
        model_internal::_RUTValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRUT);
        model_internal::_RUTValidator.required = true;
        model_internal::_RUTValidator.requiredFieldError = "RUT is required";
        //model_internal::_RUTValidator.source = model_internal::_instance;
        //model_internal::_RUTValidator.property = "RUT";
        model_internal::_ID_EMPRESAValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForID_EMPRESA);
        model_internal::_ID_EMPRESAValidator.required = true;
        model_internal::_ID_EMPRESAValidator.requiredFieldError = "ID_EMPRESA is required";
        //model_internal::_ID_EMPRESAValidator.source = model_internal::_instance;
        //model_internal::_ID_EMPRESAValidator.property = "ID_EMPRESA";
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
    public function get isOrdenAvailable():Boolean
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
    public function get isVigenciaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTipoEntidadAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRUTAvailable():Boolean
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
    public function invalidateDependentOnOrden():void
    {
        if (model_internal::_ordenIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfOrden = null;
            model_internal::calculateOrdenIsValid();
        }
    }
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
    public function invalidateDependentOnVigencia():void
    {
        if (model_internal::_vigenciaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfVigencia = null;
            model_internal::calculateVigenciaIsValid();
        }
    }
    public function invalidateDependentOnTipoEntidad():void
    {
        if (model_internal::_tipoEntidadIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTipoEntidad = null;
            model_internal::calculateTipoEntidadIsValid();
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
    public function invalidateDependentOnID_EMPRESA():void
    {
        if (model_internal::_ID_EMPRESAIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfID_EMPRESA = null;
            model_internal::calculateID_EMPRESAIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get ordenStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get ordenValidator() : StyleValidator
    {
        return model_internal::_ordenValidator;
    }

    model_internal function set _ordenIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_ordenIsValid;         
        if (oldValue !== value)
        {
            model_internal::_ordenIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ordenIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get ordenIsValid():Boolean
    {
        if (!model_internal::_ordenIsValidCacheInitialized)
        {
            model_internal::calculateOrdenIsValid();
        }

        return model_internal::_ordenIsValid;
    }

    model_internal function calculateOrdenIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_ordenValidator.validate(model_internal::_instance.orden)
        model_internal::_ordenIsValid_der = (valRes.results == null);
        model_internal::_ordenIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::ordenValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::ordenValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get ordenValidationFailureMessages():Array
    {
        if (model_internal::_ordenValidationFailureMessages == null)
            model_internal::calculateOrdenIsValid();

        return _ordenValidationFailureMessages;
    }

    model_internal function set ordenValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_ordenValidationFailureMessages;

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
            model_internal::_ordenValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ordenValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
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
    public function get vigenciaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get vigenciaValidator() : StyleValidator
    {
        return model_internal::_vigenciaValidator;
    }

    model_internal function set _vigenciaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_vigenciaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_vigenciaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "vigenciaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get vigenciaIsValid():Boolean
    {
        if (!model_internal::_vigenciaIsValidCacheInitialized)
        {
            model_internal::calculateVigenciaIsValid();
        }

        return model_internal::_vigenciaIsValid;
    }

    model_internal function calculateVigenciaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_vigenciaValidator.validate(model_internal::_instance.vigencia)
        model_internal::_vigenciaIsValid_der = (valRes.results == null);
        model_internal::_vigenciaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::vigenciaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::vigenciaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get vigenciaValidationFailureMessages():Array
    {
        if (model_internal::_vigenciaValidationFailureMessages == null)
            model_internal::calculateVigenciaIsValid();

        return _vigenciaValidationFailureMessages;
    }

    model_internal function set vigenciaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_vigenciaValidationFailureMessages;

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
            model_internal::_vigenciaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "vigenciaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get tipoEntidadStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get tipoEntidadValidator() : StyleValidator
    {
        return model_internal::_tipoEntidadValidator;
    }

    model_internal function set _tipoEntidadIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_tipoEntidadIsValid;         
        if (oldValue !== value)
        {
            model_internal::_tipoEntidadIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoEntidadIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get tipoEntidadIsValid():Boolean
    {
        if (!model_internal::_tipoEntidadIsValidCacheInitialized)
        {
            model_internal::calculateTipoEntidadIsValid();
        }

        return model_internal::_tipoEntidadIsValid;
    }

    model_internal function calculateTipoEntidadIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_tipoEntidadValidator.validate(model_internal::_instance.tipoEntidad)
        model_internal::_tipoEntidadIsValid_der = (valRes.results == null);
        model_internal::_tipoEntidadIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::tipoEntidadValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::tipoEntidadValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get tipoEntidadValidationFailureMessages():Array
    {
        if (model_internal::_tipoEntidadValidationFailureMessages == null)
            model_internal::calculateTipoEntidadIsValid();

        return _tipoEntidadValidationFailureMessages;
    }

    model_internal function set tipoEntidadValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_tipoEntidadValidationFailureMessages;

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
            model_internal::_tipoEntidadValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoEntidadValidationFailureMessages", oldValue, value));
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
    public function get ID_EMPRESAStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get ID_EMPRESAValidator() : StyleValidator
    {
        return model_internal::_ID_EMPRESAValidator;
    }

    model_internal function set _ID_EMPRESAIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_ID_EMPRESAIsValid;         
        if (oldValue !== value)
        {
            model_internal::_ID_EMPRESAIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ID_EMPRESAIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get ID_EMPRESAIsValid():Boolean
    {
        if (!model_internal::_ID_EMPRESAIsValidCacheInitialized)
        {
            model_internal::calculateID_EMPRESAIsValid();
        }

        return model_internal::_ID_EMPRESAIsValid;
    }

    model_internal function calculateID_EMPRESAIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_ID_EMPRESAValidator.validate(model_internal::_instance.ID_EMPRESA)
        model_internal::_ID_EMPRESAIsValid_der = (valRes.results == null);
        model_internal::_ID_EMPRESAIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::ID_EMPRESAValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::ID_EMPRESAValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get ID_EMPRESAValidationFailureMessages():Array
    {
        if (model_internal::_ID_EMPRESAValidationFailureMessages == null)
            model_internal::calculateID_EMPRESAIsValid();

        return _ID_EMPRESAValidationFailureMessages;
    }

    model_internal function set ID_EMPRESAValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_ID_EMPRESAValidationFailureMessages;

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
            model_internal::_ID_EMPRESAValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ID_EMPRESAValidationFailureMessages", oldValue, value));
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
            case("orden"):
            {
                return ordenValidationFailureMessages;
            }
            case("RSO"):
            {
                return RSOValidationFailureMessages;
            }
            case("color"):
            {
                return colorValidationFailureMessages;
            }
            case("vigencia"):
            {
                return vigenciaValidationFailureMessages;
            }
            case("tipoEntidad"):
            {
                return tipoEntidadValidationFailureMessages;
            }
            case("RUT"):
            {
                return RUTValidationFailureMessages;
            }
            case("ID_EMPRESA"):
            {
                return ID_EMPRESAValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
