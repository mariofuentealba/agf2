/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - EmpresaSinDatatype.as.
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
public class _Super_EmpresaSinDatatype extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _EmpresaSinDatatypeEntityMetadata;
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
    private var _internal_RSO : String;
    private var _internal_color : String;
    private var _internal_TIPO_IFRS : String;
    private var _internal_TIPO_BALANCE : String;
    private var _internal_RUT : String;
    private var _internal_NOMBRE_BOLSA : String;
    private var _internal_NOMBRE_FANTASIA : String;
    private var _internal_ID_EMPRESA : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_EmpresaSinDatatype()
    {
        _model = new _EmpresaSinDatatypeEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "RSO", model_internal::setterListenerRSO));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "color", model_internal::setterListenerColor));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "TIPO_IFRS", model_internal::setterListenerTIPO_IFRS));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "TIPO_BALANCE", model_internal::setterListenerTIPO_BALANCE));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "RUT", model_internal::setterListenerRUT));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "NOMBRE_BOLSA", model_internal::setterListenerNOMBRE_BOLSA));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "NOMBRE_FANTASIA", model_internal::setterListenerNOMBRE_FANTASIA));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get RSO() : String
    {
        return _internal_RSO;
    }

    [Bindable(event="propertyChange")]
    public function get color() : String
    {
        return _internal_color;
    }

    [Bindable(event="propertyChange")]
    public function get TIPO_IFRS() : String
    {
        return _internal_TIPO_IFRS;
    }

    [Bindable(event="propertyChange")]
    public function get TIPO_BALANCE() : String
    {
        return _internal_TIPO_BALANCE;
    }

    [Bindable(event="propertyChange")]
    public function get RUT() : String
    {
        return _internal_RUT;
    }

    [Bindable(event="propertyChange")]
    public function get NOMBRE_BOLSA() : String
    {
        return _internal_NOMBRE_BOLSA;
    }

    [Bindable(event="propertyChange")]
    public function get NOMBRE_FANTASIA() : String
    {
        return _internal_NOMBRE_FANTASIA;
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

    public function set RSO(value:String) : void
    {
        var oldValue:String = _internal_RSO;
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

    public function set TIPO_IFRS(value:String) : void
    {
        var oldValue:String = _internal_TIPO_IFRS;
        if (oldValue !== value)
        {
            _internal_TIPO_IFRS = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TIPO_IFRS", oldValue, _internal_TIPO_IFRS));
        }
    }

    public function set TIPO_BALANCE(value:String) : void
    {
        var oldValue:String = _internal_TIPO_BALANCE;
        if (oldValue !== value)
        {
            _internal_TIPO_BALANCE = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TIPO_BALANCE", oldValue, _internal_TIPO_BALANCE));
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

    public function set NOMBRE_BOLSA(value:String) : void
    {
        var oldValue:String = _internal_NOMBRE_BOLSA;
        if (oldValue !== value)
        {
            _internal_NOMBRE_BOLSA = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "NOMBRE_BOLSA", oldValue, _internal_NOMBRE_BOLSA));
        }
    }

    public function set NOMBRE_FANTASIA(value:String) : void
    {
        var oldValue:String = _internal_NOMBRE_FANTASIA;
        if (oldValue !== value)
        {
            _internal_NOMBRE_FANTASIA = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "NOMBRE_FANTASIA", oldValue, _internal_NOMBRE_FANTASIA));
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

    model_internal function setterListenerRSO(value:flash.events.Event):void
    {
        _model.invalidateDependentOnRSO();
    }

    model_internal function setterListenerColor(value:flash.events.Event):void
    {
        _model.invalidateDependentOnColor();
    }

    model_internal function setterListenerTIPO_IFRS(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTIPO_IFRS();
    }

    model_internal function setterListenerTIPO_BALANCE(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTIPO_BALANCE();
    }

    model_internal function setterListenerRUT(value:flash.events.Event):void
    {
        _model.invalidateDependentOnRUT();
    }

    model_internal function setterListenerNOMBRE_BOLSA(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNOMBRE_BOLSA();
    }

    model_internal function setterListenerNOMBRE_FANTASIA(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNOMBRE_FANTASIA();
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
        if (!_model.TIPO_IFRSIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_TIPO_IFRSValidationFailureMessages);
        }
        if (!_model.TIPO_BALANCEIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_TIPO_BALANCEValidationFailureMessages);
        }
        if (!_model.RUTIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_RUTValidationFailureMessages);
        }
        if (!_model.NOMBRE_BOLSAIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_NOMBRE_BOLSAValidationFailureMessages);
        }
        if (!_model.NOMBRE_FANTASIAIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_NOMBRE_FANTASIAValidationFailureMessages);
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
    public function get _model() : _EmpresaSinDatatypeEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _EmpresaSinDatatypeEntityMetadata) : void
    {
        var oldValue : _EmpresaSinDatatypeEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfRSO : Array = null;
    model_internal var _doValidationLastValOfRSO : String;

    model_internal function _doValidationForRSO(valueIn:Object):Array
    {
        var value : String = valueIn as String;

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
    
    model_internal var _doValidationCacheOfTIPO_IFRS : Array = null;
    model_internal var _doValidationLastValOfTIPO_IFRS : String;

    model_internal function _doValidationForTIPO_IFRS(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTIPO_IFRS != null && model_internal::_doValidationLastValOfTIPO_IFRS == value)
           return model_internal::_doValidationCacheOfTIPO_IFRS ;

        _model.model_internal::_TIPO_IFRSIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTIPO_IFRSAvailable && _internal_TIPO_IFRS == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "TIPO_IFRS is required"));
        }

        model_internal::_doValidationCacheOfTIPO_IFRS = validationFailures;
        model_internal::_doValidationLastValOfTIPO_IFRS = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTIPO_BALANCE : Array = null;
    model_internal var _doValidationLastValOfTIPO_BALANCE : String;

    model_internal function _doValidationForTIPO_BALANCE(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTIPO_BALANCE != null && model_internal::_doValidationLastValOfTIPO_BALANCE == value)
           return model_internal::_doValidationCacheOfTIPO_BALANCE ;

        _model.model_internal::_TIPO_BALANCEIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTIPO_BALANCEAvailable && _internal_TIPO_BALANCE == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "TIPO_BALANCE is required"));
        }

        model_internal::_doValidationCacheOfTIPO_BALANCE = validationFailures;
        model_internal::_doValidationLastValOfTIPO_BALANCE = value;

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
    
    model_internal var _doValidationCacheOfNOMBRE_BOLSA : Array = null;
    model_internal var _doValidationLastValOfNOMBRE_BOLSA : String;

    model_internal function _doValidationForNOMBRE_BOLSA(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNOMBRE_BOLSA != null && model_internal::_doValidationLastValOfNOMBRE_BOLSA == value)
           return model_internal::_doValidationCacheOfNOMBRE_BOLSA ;

        _model.model_internal::_NOMBRE_BOLSAIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNOMBRE_BOLSAAvailable && _internal_NOMBRE_BOLSA == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "NOMBRE_BOLSA is required"));
        }

        model_internal::_doValidationCacheOfNOMBRE_BOLSA = validationFailures;
        model_internal::_doValidationLastValOfNOMBRE_BOLSA = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfNOMBRE_FANTASIA : Array = null;
    model_internal var _doValidationLastValOfNOMBRE_FANTASIA : String;

    model_internal function _doValidationForNOMBRE_FANTASIA(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNOMBRE_FANTASIA != null && model_internal::_doValidationLastValOfNOMBRE_FANTASIA == value)
           return model_internal::_doValidationCacheOfNOMBRE_FANTASIA ;

        _model.model_internal::_NOMBRE_FANTASIAIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNOMBRE_FANTASIAAvailable && _internal_NOMBRE_FANTASIA == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "NOMBRE_FANTASIA is required"));
        }

        model_internal::_doValidationCacheOfNOMBRE_FANTASIA = validationFailures;
        model_internal::_doValidationLastValOfNOMBRE_FANTASIA = value;

        return validationFailures;
    }
    

}

}
