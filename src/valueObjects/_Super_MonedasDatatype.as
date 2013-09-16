/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - MonedasDatatype.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.binding.utils.ChangeWatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[Managed]
[ExcludeClass]
public class _Super_MonedasDatatype extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _MonedasDatatypeEntityMetadata;
    model_internal var _changedObjects:mx.collections.ArrayCollection = new ArrayCollection();

    public function getChangedObjects() : Array
    {
        _changedObjects.addItemAt(this,0);
        return _changedObjects.source;
    }

    public function clearChangedObjects() : void
    {
        _changedObjects.removeAll();
    }

    /**
     * properties
     */
    private var _internal_codigo : String;
    private var _internal_nombre : String;
    private var _internal_id : String;
    private var _internal_operacion : String;
    private var _internal_signo : String;
    private var _internal_valor_defecto : String;
    private var _internal_cantidad_decimal : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_MonedasDatatype()
    {
        _model = new _MonedasDatatypeEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "codigo", model_internal::setterListenerCodigo));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "nombre", model_internal::setterListenerNombre));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "operacion", model_internal::setterListenerOperacion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "signo", model_internal::setterListenerSigno));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "valor_defecto", model_internal::setterListenerValor_defecto));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "cantidad_decimal", model_internal::setterListenerCantidad_decimal));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get codigo() : String
    {
        return _internal_codigo;
    }

    [Bindable(event="propertyChange")]
    public function get nombre() : String
    {
        return _internal_nombre;
    }

    [Bindable(event="propertyChange")]
    public function get id() : String
    {
        return _internal_id;
    }

    [Bindable(event="propertyChange")]
    public function get operacion() : String
    {
        return _internal_operacion;
    }

    [Bindable(event="propertyChange")]
    public function get signo() : String
    {
        return _internal_signo;
    }

    [Bindable(event="propertyChange")]
    public function get valor_defecto() : String
    {
        return _internal_valor_defecto;
    }

    [Bindable(event="propertyChange")]
    public function get cantidad_decimal() : String
    {
        return _internal_cantidad_decimal;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set codigo(value:String) : void
    {
        var oldValue:String = _internal_codigo;
        if (oldValue !== value)
        {
            _internal_codigo = value;
        }
    }

    public function set nombre(value:String) : void
    {
        var oldValue:String = _internal_nombre;
        if (oldValue !== value)
        {
            _internal_nombre = value;
        }
    }

    public function set id(value:String) : void
    {
        var oldValue:String = _internal_id;
        if (oldValue !== value)
        {
            _internal_id = value;
        }
    }

    public function set operacion(value:String) : void
    {
        var oldValue:String = _internal_operacion;
        if (oldValue !== value)
        {
            _internal_operacion = value;
        }
    }

    public function set signo(value:String) : void
    {
        var oldValue:String = _internal_signo;
        if (oldValue !== value)
        {
            _internal_signo = value;
        }
    }

    public function set valor_defecto(value:String) : void
    {
        var oldValue:String = _internal_valor_defecto;
        if (oldValue !== value)
        {
            _internal_valor_defecto = value;
        }
    }

    public function set cantidad_decimal(value:String) : void
    {
        var oldValue:String = _internal_cantidad_decimal;
        if (oldValue !== value)
        {
            _internal_cantidad_decimal = value;
        }
    }

    /**
     * Data/source property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */

    model_internal function setterListenerCodigo(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCodigo();
    }

    model_internal function setterListenerNombre(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNombre();
    }

    model_internal function setterListenerOperacion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnOperacion();
    }

    model_internal function setterListenerSigno(value:flash.events.Event):void
    {
        _model.invalidateDependentOnSigno();
    }

    model_internal function setterListenerValor_defecto(value:flash.events.Event):void
    {
        _model.invalidateDependentOnValor_defecto();
    }

    model_internal function setterListenerCantidad_decimal(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCantidad_decimal();
    }


    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();
        var validationFailureMessages:Array = new Array();

        var propertyValidity:Boolean = true;
        if (!_model.codigoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_codigoValidationFailureMessages);
        }
        if (!_model.nombreIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_nombreValidationFailureMessages);
        }
        if (!_model.operacionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_operacionValidationFailureMessages);
        }
        if (!_model.signoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_signoValidationFailureMessages);
        }
        if (!_model.valor_defectoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_valor_defectoValidationFailureMessages);
        }
        if (!_model.cantidad_decimalIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_cantidad_decimalValidationFailureMessages);
        }

        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && propertyValidity;
    }

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
        var oldValue:Boolean = model_internal::_isValid;
        if (oldValue !== value)
        {
            model_internal::_isValid = value;
            _model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }
    }

    /**
     * derived property getters
     */

    [Transient]
    [Bindable(event="propertyChange")]
    public function get _model() : _MonedasDatatypeEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _MonedasDatatypeEntityMetadata) : void
    {
        var oldValue : _MonedasDatatypeEntityMetadata = model_internal::_dminternal_model;
        if (oldValue !== value)
        {
            model_internal::_dminternal_model = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }
    }

    /**
     * methods
     */


    /**
     *  services
     */
    private var _managingService:com.adobe.fiber.services.IFiberManagingService;

    public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
    {
        _managingService = managingService;
    }

    model_internal function set invalidConstraints_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_invalidConstraints;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;
            _model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);
        }
    }

    model_internal function set validationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_validationFailureMessages;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;
            _model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);
        }
    }

    model_internal var _doValidationCacheOfCodigo : Array = null;
    model_internal var _doValidationLastValOfCodigo : String;

    model_internal function _doValidationForCodigo(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCodigo != null && model_internal::_doValidationLastValOfCodigo == value)
           return model_internal::_doValidationCacheOfCodigo ;

        _model.model_internal::_codigoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCodigoAvailable && _internal_codigo == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "codigo is required"));
        }

        model_internal::_doValidationCacheOfCodigo = validationFailures;
        model_internal::_doValidationLastValOfCodigo = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfNombre : Array = null;
    model_internal var _doValidationLastValOfNombre : String;

    model_internal function _doValidationForNombre(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNombre != null && model_internal::_doValidationLastValOfNombre == value)
           return model_internal::_doValidationCacheOfNombre ;

        _model.model_internal::_nombreIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNombreAvailable && _internal_nombre == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "nombre is required"));
        }

        model_internal::_doValidationCacheOfNombre = validationFailures;
        model_internal::_doValidationLastValOfNombre = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfOperacion : Array = null;
    model_internal var _doValidationLastValOfOperacion : String;

    model_internal function _doValidationForOperacion(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfOperacion != null && model_internal::_doValidationLastValOfOperacion == value)
           return model_internal::_doValidationCacheOfOperacion ;

        _model.model_internal::_operacionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isOperacionAvailable && _internal_operacion == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "operacion is required"));
        }

        model_internal::_doValidationCacheOfOperacion = validationFailures;
        model_internal::_doValidationLastValOfOperacion = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfSigno : Array = null;
    model_internal var _doValidationLastValOfSigno : String;

    model_internal function _doValidationForSigno(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfSigno != null && model_internal::_doValidationLastValOfSigno == value)
           return model_internal::_doValidationCacheOfSigno ;

        _model.model_internal::_signoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSignoAvailable && _internal_signo == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "signo is required"));
        }

        model_internal::_doValidationCacheOfSigno = validationFailures;
        model_internal::_doValidationLastValOfSigno = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfValor_defecto : Array = null;
    model_internal var _doValidationLastValOfValor_defecto : String;

    model_internal function _doValidationForValor_defecto(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfValor_defecto != null && model_internal::_doValidationLastValOfValor_defecto == value)
           return model_internal::_doValidationCacheOfValor_defecto ;

        _model.model_internal::_valor_defectoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isValor_defectoAvailable && _internal_valor_defecto == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "valor_defecto is required"));
        }

        model_internal::_doValidationCacheOfValor_defecto = validationFailures;
        model_internal::_doValidationLastValOfValor_defecto = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCantidad_decimal : Array = null;
    model_internal var _doValidationLastValOfCantidad_decimal : String;

    model_internal function _doValidationForCantidad_decimal(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCantidad_decimal != null && model_internal::_doValidationLastValOfCantidad_decimal == value)
           return model_internal::_doValidationCacheOfCantidad_decimal ;

        _model.model_internal::_cantidad_decimalIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCantidad_decimalAvailable && _internal_cantidad_decimal == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "cantidad_decimal is required"));
        }

        model_internal::_doValidationCacheOfCantidad_decimal = validationFailures;
        model_internal::_doValidationLastValOfCantidad_decimal = value;

        return validationFailures;
    }
    

}

}
