
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
internal class _MonedasDatatypeEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("codigo", "nombre", "id", "operacion", "signo", "valor_defecto", "cantidad_decimal");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("codigo", "nombre", "id", "operacion", "signo", "valor_defecto", "cantidad_decimal");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("codigo", "nombre", "id", "operacion", "signo", "valor_defecto", "cantidad_decimal");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("codigo", "nombre", "id", "operacion", "signo", "valor_defecto", "cantidad_decimal");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("codigo", "nombre", "id", "operacion", "signo", "valor_defecto", "cantidad_decimal");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "MonedasDatatype";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _codigoIsValid:Boolean;
    model_internal var _codigoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _codigoIsValidCacheInitialized:Boolean = false;
    model_internal var _codigoValidationFailureMessages:Array;
    
    model_internal var _nombreIsValid:Boolean;
    model_internal var _nombreValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _nombreIsValidCacheInitialized:Boolean = false;
    model_internal var _nombreValidationFailureMessages:Array;
    
    model_internal var _operacionIsValid:Boolean;
    model_internal var _operacionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _operacionIsValidCacheInitialized:Boolean = false;
    model_internal var _operacionValidationFailureMessages:Array;
    
    model_internal var _signoIsValid:Boolean;
    model_internal var _signoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _signoIsValidCacheInitialized:Boolean = false;
    model_internal var _signoValidationFailureMessages:Array;
    
    model_internal var _valor_defectoIsValid:Boolean;
    model_internal var _valor_defectoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _valor_defectoIsValidCacheInitialized:Boolean = false;
    model_internal var _valor_defectoValidationFailureMessages:Array;
    
    model_internal var _cantidad_decimalIsValid:Boolean;
    model_internal var _cantidad_decimalValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _cantidad_decimalIsValidCacheInitialized:Boolean = false;
    model_internal var _cantidad_decimalValidationFailureMessages:Array;

    model_internal var _instance:_Super_MonedasDatatype;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _MonedasDatatypeEntityMetadata(value : _Super_MonedasDatatype)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["codigo"] = new Array();
            model_internal::dependentsOnMap["nombre"] = new Array();
            model_internal::dependentsOnMap["id"] = new Array();
            model_internal::dependentsOnMap["operacion"] = new Array();
            model_internal::dependentsOnMap["signo"] = new Array();
            model_internal::dependentsOnMap["valor_defecto"] = new Array();
            model_internal::dependentsOnMap["cantidad_decimal"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["codigo"] = "String";
        model_internal::propertyTypeMap["nombre"] = "String";
        model_internal::propertyTypeMap["id"] = "String";
        model_internal::propertyTypeMap["operacion"] = "String";
        model_internal::propertyTypeMap["signo"] = "String";
        model_internal::propertyTypeMap["valor_defecto"] = "String";
        model_internal::propertyTypeMap["cantidad_decimal"] = "String";

        model_internal::_instance = value;
        model_internal::_codigoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCodigo);
        model_internal::_codigoValidator.required = true;
        model_internal::_codigoValidator.requiredFieldError = "codigo is required";
        //model_internal::_codigoValidator.source = model_internal::_instance;
        //model_internal::_codigoValidator.property = "codigo";
        model_internal::_nombreValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNombre);
        model_internal::_nombreValidator.required = true;
        model_internal::_nombreValidator.requiredFieldError = "nombre is required";
        //model_internal::_nombreValidator.source = model_internal::_instance;
        //model_internal::_nombreValidator.property = "nombre";
        model_internal::_operacionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForOperacion);
        model_internal::_operacionValidator.required = true;
        model_internal::_operacionValidator.requiredFieldError = "operacion is required";
        //model_internal::_operacionValidator.source = model_internal::_instance;
        //model_internal::_operacionValidator.property = "operacion";
        model_internal::_signoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSigno);
        model_internal::_signoValidator.required = true;
        model_internal::_signoValidator.requiredFieldError = "signo is required";
        //model_internal::_signoValidator.source = model_internal::_instance;
        //model_internal::_signoValidator.property = "signo";
        model_internal::_valor_defectoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForValor_defecto);
        model_internal::_valor_defectoValidator.required = true;
        model_internal::_valor_defectoValidator.requiredFieldError = "valor_defecto is required";
        //model_internal::_valor_defectoValidator.source = model_internal::_instance;
        //model_internal::_valor_defectoValidator.property = "valor_defecto";
        model_internal::_cantidad_decimalValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCantidad_decimal);
        model_internal::_cantidad_decimalValidator.required = true;
        model_internal::_cantidad_decimalValidator.requiredFieldError = "cantidad_decimal is required";
        //model_internal::_cantidad_decimalValidator.source = model_internal::_instance;
        //model_internal::_cantidad_decimalValidator.property = "cantidad_decimal";
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
            throw new Error(propertyName + " is not a data property of entity MonedasDatatype");
            
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
            throw new Error(propertyName + " is not a collection property of entity MonedasDatatype");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of MonedasDatatype");

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
            throw new Error(propertyName + " does not exist for entity MonedasDatatype");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity MonedasDatatype");
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
            throw new Error(propertyName + " does not exist for entity MonedasDatatype");
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
        returnMap["id"] = model_internal::_instance.id;

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
    public function get isCodigoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNombreAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isOperacionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSignoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isValor_defectoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCantidad_decimalAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnCodigo():void
    {
        if (model_internal::_codigoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCodigo = null;
            model_internal::calculateCodigoIsValid();
        }
    }
    public function invalidateDependentOnNombre():void
    {
        if (model_internal::_nombreIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNombre = null;
            model_internal::calculateNombreIsValid();
        }
    }
    public function invalidateDependentOnOperacion():void
    {
        if (model_internal::_operacionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfOperacion = null;
            model_internal::calculateOperacionIsValid();
        }
    }
    public function invalidateDependentOnSigno():void
    {
        if (model_internal::_signoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSigno = null;
            model_internal::calculateSignoIsValid();
        }
    }
    public function invalidateDependentOnValor_defecto():void
    {
        if (model_internal::_valor_defectoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfValor_defecto = null;
            model_internal::calculateValor_defectoIsValid();
        }
    }
    public function invalidateDependentOnCantidad_decimal():void
    {
        if (model_internal::_cantidad_decimalIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCantidad_decimal = null;
            model_internal::calculateCantidad_decimalIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get codigoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get codigoValidator() : StyleValidator
    {
        return model_internal::_codigoValidator;
    }

    model_internal function set _codigoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_codigoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_codigoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "codigoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get codigoIsValid():Boolean
    {
        if (!model_internal::_codigoIsValidCacheInitialized)
        {
            model_internal::calculateCodigoIsValid();
        }

        return model_internal::_codigoIsValid;
    }

    model_internal function calculateCodigoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_codigoValidator.validate(model_internal::_instance.codigo)
        model_internal::_codigoIsValid_der = (valRes.results == null);
        model_internal::_codigoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::codigoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::codigoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get codigoValidationFailureMessages():Array
    {
        if (model_internal::_codigoValidationFailureMessages == null)
            model_internal::calculateCodigoIsValid();

        return _codigoValidationFailureMessages;
    }

    model_internal function set codigoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_codigoValidationFailureMessages;

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
            model_internal::_codigoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "codigoValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get nombreStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get nombreValidator() : StyleValidator
    {
        return model_internal::_nombreValidator;
    }

    model_internal function set _nombreIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_nombreIsValid;         
        if (oldValue !== value)
        {
            model_internal::_nombreIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombreIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get nombreIsValid():Boolean
    {
        if (!model_internal::_nombreIsValidCacheInitialized)
        {
            model_internal::calculateNombreIsValid();
        }

        return model_internal::_nombreIsValid;
    }

    model_internal function calculateNombreIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_nombreValidator.validate(model_internal::_instance.nombre)
        model_internal::_nombreIsValid_der = (valRes.results == null);
        model_internal::_nombreIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::nombreValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::nombreValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get nombreValidationFailureMessages():Array
    {
        if (model_internal::_nombreValidationFailureMessages == null)
            model_internal::calculateNombreIsValid();

        return _nombreValidationFailureMessages;
    }

    model_internal function set nombreValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_nombreValidationFailureMessages;

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
            model_internal::_nombreValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombreValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get idStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get operacionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get operacionValidator() : StyleValidator
    {
        return model_internal::_operacionValidator;
    }

    model_internal function set _operacionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_operacionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_operacionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "operacionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get operacionIsValid():Boolean
    {
        if (!model_internal::_operacionIsValidCacheInitialized)
        {
            model_internal::calculateOperacionIsValid();
        }

        return model_internal::_operacionIsValid;
    }

    model_internal function calculateOperacionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_operacionValidator.validate(model_internal::_instance.operacion)
        model_internal::_operacionIsValid_der = (valRes.results == null);
        model_internal::_operacionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::operacionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::operacionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get operacionValidationFailureMessages():Array
    {
        if (model_internal::_operacionValidationFailureMessages == null)
            model_internal::calculateOperacionIsValid();

        return _operacionValidationFailureMessages;
    }

    model_internal function set operacionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_operacionValidationFailureMessages;

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
            model_internal::_operacionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "operacionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get signoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get signoValidator() : StyleValidator
    {
        return model_internal::_signoValidator;
    }

    model_internal function set _signoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_signoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_signoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "signoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get signoIsValid():Boolean
    {
        if (!model_internal::_signoIsValidCacheInitialized)
        {
            model_internal::calculateSignoIsValid();
        }

        return model_internal::_signoIsValid;
    }

    model_internal function calculateSignoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_signoValidator.validate(model_internal::_instance.signo)
        model_internal::_signoIsValid_der = (valRes.results == null);
        model_internal::_signoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::signoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::signoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get signoValidationFailureMessages():Array
    {
        if (model_internal::_signoValidationFailureMessages == null)
            model_internal::calculateSignoIsValid();

        return _signoValidationFailureMessages;
    }

    model_internal function set signoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_signoValidationFailureMessages;

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
            model_internal::_signoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "signoValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get valor_defectoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get valor_defectoValidator() : StyleValidator
    {
        return model_internal::_valor_defectoValidator;
    }

    model_internal function set _valor_defectoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_valor_defectoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_valor_defectoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "valor_defectoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get valor_defectoIsValid():Boolean
    {
        if (!model_internal::_valor_defectoIsValidCacheInitialized)
        {
            model_internal::calculateValor_defectoIsValid();
        }

        return model_internal::_valor_defectoIsValid;
    }

    model_internal function calculateValor_defectoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_valor_defectoValidator.validate(model_internal::_instance.valor_defecto)
        model_internal::_valor_defectoIsValid_der = (valRes.results == null);
        model_internal::_valor_defectoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::valor_defectoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::valor_defectoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get valor_defectoValidationFailureMessages():Array
    {
        if (model_internal::_valor_defectoValidationFailureMessages == null)
            model_internal::calculateValor_defectoIsValid();

        return _valor_defectoValidationFailureMessages;
    }

    model_internal function set valor_defectoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_valor_defectoValidationFailureMessages;

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
            model_internal::_valor_defectoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "valor_defectoValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get cantidad_decimalStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get cantidad_decimalValidator() : StyleValidator
    {
        return model_internal::_cantidad_decimalValidator;
    }

    model_internal function set _cantidad_decimalIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_cantidad_decimalIsValid;         
        if (oldValue !== value)
        {
            model_internal::_cantidad_decimalIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cantidad_decimalIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get cantidad_decimalIsValid():Boolean
    {
        if (!model_internal::_cantidad_decimalIsValidCacheInitialized)
        {
            model_internal::calculateCantidad_decimalIsValid();
        }

        return model_internal::_cantidad_decimalIsValid;
    }

    model_internal function calculateCantidad_decimalIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_cantidad_decimalValidator.validate(model_internal::_instance.cantidad_decimal)
        model_internal::_cantidad_decimalIsValid_der = (valRes.results == null);
        model_internal::_cantidad_decimalIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::cantidad_decimalValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::cantidad_decimalValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get cantidad_decimalValidationFailureMessages():Array
    {
        if (model_internal::_cantidad_decimalValidationFailureMessages == null)
            model_internal::calculateCantidad_decimalIsValid();

        return _cantidad_decimalValidationFailureMessages;
    }

    model_internal function set cantidad_decimalValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_cantidad_decimalValidationFailureMessages;

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
            model_internal::_cantidad_decimalValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cantidad_decimalValidationFailureMessages", oldValue, value));
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
            case("codigo"):
            {
                return codigoValidationFailureMessages;
            }
            case("nombre"):
            {
                return nombreValidationFailureMessages;
            }
            case("operacion"):
            {
                return operacionValidationFailureMessages;
            }
            case("signo"):
            {
                return signoValidationFailureMessages;
            }
            case("valor_defecto"):
            {
                return valor_defectoValidationFailureMessages;
            }
            case("cantidad_decimal"):
            {
                return cantidad_decimalValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
