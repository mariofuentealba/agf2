/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - EmpresaDatatype.as.
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

[ExcludeClass]
public class _Super_EmpresaDatatype extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _EmpresaDatatypeEntityMetadata;
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
    private var _internal_orden : String;
    private var _internal_RSO : Object;
    private var _internal_color : String;
    private var _internal_vigencia : String;
    private var _internal_tipoEntidad : String;
    private var _internal_RUT : String;
    private var _internal_ID_EMPRESA : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_EmpresaDatatype()
    {
        _model = new _EmpresaDatatypeEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "orden", model_internal::setterListenerOrden));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "RSO", model_internal::setterListenerRSO));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "color", model_internal::setterListenerColor));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "vigencia", model_internal::setterListenerVigencia));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "tipoEntidad", model_internal::setterListenerTipoEntidad));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "RUT", model_internal::setterListenerRUT));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "ID_EMPRESA", model_internal::setterListenerID_EMPRESA));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get orden() : String
    {
        return _internal_orden;
    }

    [Bindable(event="propertyChange")]
    public function get RSO() : Object
    {
        return _internal_RSO;
    }

    [Bindable(event="propertyChange")]
    public function get color() : String
    {
        return _internal_color;
    }

    [Bindable(event="propertyChange")]
    public function get vigencia() : String
    {
        return _internal_vigencia;
    }

    [Bindable(event="propertyChange")]
    public function get tipoEntidad() : String
    {
        return _internal_tipoEntidad;
    }

    [Bindable(event="propertyChange")]
    public function get RUT() : String
    {
        return _internal_RUT;
    }

    [Bindable(event="propertyChange")]
    public function get ID_EMPRESA() : String
    {
        return _internal_ID_EMPRESA;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set orden(value:String) : void
    {
        var oldValue:String = _internal_orden;
        if (oldValue !== value)
        {
            _internal_orden = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "orden", oldValue, _internal_orden));
        }
    }

    public function set RSO(value:Object) : void
    {
        var oldValue:Object = _internal_RSO;
        if (oldValue !== value)
        {
            _internal_RSO = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "RSO", oldValue, _internal_RSO));
        }
    }

    public function set color(value:String) : void
    {
        var oldValue:String = _internal_color;
        if (oldValue !== value)
        {
            _internal_color = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "color", oldValue, _internal_color));
        }
    }

    public function set vigencia(value:String) : void
    {
        var oldValue:String = _internal_vigencia;
        if (oldValue !== value)
        {
            _internal_vigencia = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "vigencia", oldValue, _internal_vigencia));
        }
    }

    public function set tipoEntidad(value:String) : void
    {
        var oldValue:String = _internal_tipoEntidad;
        if (oldValue !== value)
        {
            _internal_tipoEntidad = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoEntidad", oldValue, _internal_tipoEntidad));
        }
    }

    public function set RUT(value:String) : void
    {
        var oldValue:String = _internal_RUT;
        if (oldValue !== value)
        {
            _internal_RUT = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "RUT", oldValue, _internal_RUT));
        }
    }

    public function set ID_EMPRESA(value:String) : void
    {
        var oldValue:String = _internal_ID_EMPRESA;
        if (oldValue !== value)
        {
            _internal_ID_EMPRESA = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ID_EMPRESA", oldValue, _internal_ID_EMPRESA));
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

    model_internal function setterListenerOrden(value:flash.events.Event):void
    {
        _model.invalidateDependentOnOrden();
    }

    model_internal function setterListenerRSO(value:flash.events.Event):void
    {
        _model.invalidateDependentOnRSO();
    }

    model_internal function setterListenerColor(value:flash.events.Event):void
    {
        _model.invalidateDependentOnColor();
    }

    model_internal function setterListenerVigencia(value:flash.events.Event):void
    {
        _model.invalidateDependentOnVigencia();
    }

    model_internal function setterListenerTipoEntidad(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTipoEntidad();
    }

    model_internal function setterListenerRUT(value:flash.events.Event):void
    {
        _model.invalidateDependentOnRUT();
    }

    model_internal function setterListenerID_EMPRESA(value:flash.events.Event):void
    {
        _model.invalidateDependentOnID_EMPRESA();
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
        if (!_model.ordenIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_ordenValidationFailureMessages);
        }
        if (!_model.RSOIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_RSOValidationFailureMessages);
        }
        if (!_model.colorIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_colorValidationFailureMessages);
        }
        if (!_model.vigenciaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_vigenciaValidationFailureMessages);
        }
        if (!_model.tipoEntidadIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_tipoEntidadValidationFailureMessages);
        }
        if (!_model.RUTIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_RUTValidationFailureMessages);
        }
        if (!_model.ID_EMPRESAIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_ID_EMPRESAValidationFailureMessages);
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
    public function get _model() : _EmpresaDatatypeEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _EmpresaDatatypeEntityMetadata) : void
    {
        var oldValue : _EmpresaDatatypeEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfOrden : Array = null;
    model_internal var _doValidationLastValOfOrden : String;

    model_internal function _doValidationForOrden(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfOrden != null && model_internal::_doValidationLastValOfOrden == value)
           return model_internal::_doValidationCacheOfOrden ;

        _model.model_internal::_ordenIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isOrdenAvailable && _internal_orden == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "orden is required"));
        }

        model_internal::_doValidationCacheOfOrden = validationFailures;
        model_internal::_doValidationLastValOfOrden = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfRSO : Array = null;
    model_internal var _doValidationLastValOfRSO : Object;

    model_internal function _doValidationForRSO(valueIn:Object):Array
    {
        var value : Object = valueIn as Object;

        if (model_internal::_doValidationCacheOfRSO != null && model_internal::_doValidationLastValOfRSO == value)
           return model_internal::_doValidationCacheOfRSO ;

        _model.model_internal::_RSOIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRSOAvailable && _internal_RSO == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "RSO is required"));
        }

        model_internal::_doValidationCacheOfRSO = validationFailures;
        model_internal::_doValidationLastValOfRSO = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfColor : Array = null;
    model_internal var _doValidationLastValOfColor : String;

    model_internal function _doValidationForColor(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfColor != null && model_internal::_doValidationLastValOfColor == value)
           return model_internal::_doValidationCacheOfColor ;

        _model.model_internal::_colorIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isColorAvailable && _internal_color == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "color is required"));
        }

        model_internal::_doValidationCacheOfColor = validationFailures;
        model_internal::_doValidationLastValOfColor = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfVigencia : Array = null;
    model_internal var _doValidationLastValOfVigencia : String;

    model_internal function _doValidationForVigencia(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfVigencia != null && model_internal::_doValidationLastValOfVigencia == value)
           return model_internal::_doValidationCacheOfVigencia ;

        _model.model_internal::_vigenciaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isVigenciaAvailable && _internal_vigencia == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "vigencia is required"));
        }

        model_internal::_doValidationCacheOfVigencia = validationFailures;
        model_internal::_doValidationLastValOfVigencia = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTipoEntidad : Array = null;
    model_internal var _doValidationLastValOfTipoEntidad : String;

    model_internal function _doValidationForTipoEntidad(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTipoEntidad != null && model_internal::_doValidationLastValOfTipoEntidad == value)
           return model_internal::_doValidationCacheOfTipoEntidad ;

        _model.model_internal::_tipoEntidadIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTipoEntidadAvailable && _internal_tipoEntidad == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "tipoEntidad is required"));
        }

        model_internal::_doValidationCacheOfTipoEntidad = validationFailures;
        model_internal::_doValidationLastValOfTipoEntidad = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfRUT : Array = null;
    model_internal var _doValidationLastValOfRUT : String;

    model_internal function _doValidationForRUT(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfRUT != null && model_internal::_doValidationLastValOfRUT == value)
           return model_internal::_doValidationCacheOfRUT ;

        _model.model_internal::_RUTIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRUTAvailable && _internal_RUT == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "RUT is required"));
        }

        model_internal::_doValidationCacheOfRUT = validationFailures;
        model_internal::_doValidationLastValOfRUT = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfID_EMPRESA : Array = null;
    model_internal var _doValidationLastValOfID_EMPRESA : String;

    model_internal function _doValidationForID_EMPRESA(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfID_EMPRESA != null && model_internal::_doValidationLastValOfID_EMPRESA == value)
           return model_internal::_doValidationCacheOfID_EMPRESA ;

        _model.model_internal::_ID_EMPRESAIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isID_EMPRESAAvailable && _internal_ID_EMPRESA == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "ID_EMPRESA is required"));
        }

        model_internal::_doValidationCacheOfID_EMPRESA = validationFailures;
        model_internal::_doValidationLastValOfID_EMPRESA = value;

        return validationFailures;
    }
    

}

}
