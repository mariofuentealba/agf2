/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - IndicesFinancierosDatatype.as.
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
public class _Super_IndicesFinancierosDatatype extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _IndicesFinancierosDatatypeEntityMetadata;
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
    private var _internal_id_formula : String;
    private var _internal_NOMBRE : String;
    private var _internal_rangos_desc : String;
    private var _internal_rango_superior : String;
    private var _internal_DESCRIPCION : String;
    private var _internal_formula_desc : String;
    private var _internal_decimales : String;
    private var _internal_campo3 : String;
    private var _internal_campo2 : String;
    private var _internal_ID_GRUPO_INDICE_FINANCIERO : String;
    private var _internal_rango_inferior : String;
    private var _internal_campo1 : String;
    private var _internal_ID_INDICE_FINANCIERO : String;
    private var _internal_formula : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_IndicesFinancierosDatatype()
    {
        _model = new _IndicesFinancierosDatatypeEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "id_formula", model_internal::setterListenerId_formula));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "NOMBRE", model_internal::setterListenerNOMBRE));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "rangos_desc", model_internal::setterListenerRangos_desc));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "rango_superior", model_internal::setterListenerRango_superior));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "DESCRIPCION", model_internal::setterListenerDESCRIPCION));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "formula_desc", model_internal::setterListenerFormula_desc));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "decimales", model_internal::setterListenerDecimales));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "campo3", model_internal::setterListenerCampo3));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "campo2", model_internal::setterListenerCampo2));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "ID_GRUPO_INDICE_FINANCIERO", model_internal::setterListenerID_GRUPO_INDICE_FINANCIERO));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "rango_inferior", model_internal::setterListenerRango_inferior));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "campo1", model_internal::setterListenerCampo1));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "formula", model_internal::setterListenerFormula));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get id_formula() : String
    {
        return _internal_id_formula;
    }

    [Bindable(event="propertyChange")]
    public function get NOMBRE() : String
    {
        return _internal_NOMBRE;
    }

    [Bindable(event="propertyChange")]
    public function get rangos_desc() : String
    {
        return _internal_rangos_desc;
    }

    [Bindable(event="propertyChange")]
    public function get rango_superior() : String
    {
        return _internal_rango_superior;
    }

    [Bindable(event="propertyChange")]
    public function get DESCRIPCION() : String
    {
        return _internal_DESCRIPCION;
    }

    [Bindable(event="propertyChange")]
    public function get formula_desc() : String
    {
        return _internal_formula_desc;
    }

    [Bindable(event="propertyChange")]
    public function get decimales() : String
    {
        return _internal_decimales;
    }

    [Bindable(event="propertyChange")]
    public function get campo3() : String
    {
        return _internal_campo3;
    }

    [Bindable(event="propertyChange")]
    public function get campo2() : String
    {
        return _internal_campo2;
    }

    [Bindable(event="propertyChange")]
    public function get ID_GRUPO_INDICE_FINANCIERO() : String
    {
        return _internal_ID_GRUPO_INDICE_FINANCIERO;
    }

    [Bindable(event="propertyChange")]
    public function get rango_inferior() : String
    {
        return _internal_rango_inferior;
    }

    [Bindable(event="propertyChange")]
    public function get campo1() : String
    {
        return _internal_campo1;
    }

    [Bindable(event="propertyChange")]
    public function get ID_INDICE_FINANCIERO() : String
    {
        return _internal_ID_INDICE_FINANCIERO;
    }

    [Bindable(event="propertyChange")]
    public function get formula() : String
    {
        return _internal_formula;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set id_formula(value:String) : void
    {
        var oldValue:String = _internal_id_formula;
        if (oldValue !== value)
        {
            _internal_id_formula = value;
        }
    }

    public function set NOMBRE(value:String) : void
    {
        var oldValue:String = _internal_NOMBRE;
        if (oldValue !== value)
        {
            _internal_NOMBRE = value;
        }
    }

    public function set rangos_desc(value:String) : void
    {
        var oldValue:String = _internal_rangos_desc;
        if (oldValue !== value)
        {
            _internal_rangos_desc = value;
        }
    }

    public function set rango_superior(value:String) : void
    {
        var oldValue:String = _internal_rango_superior;
        if (oldValue !== value)
        {
            _internal_rango_superior = value;
        }
    }

    public function set DESCRIPCION(value:String) : void
    {
        var oldValue:String = _internal_DESCRIPCION;
        if (oldValue !== value)
        {
            _internal_DESCRIPCION = value;
        }
    }

    public function set formula_desc(value:String) : void
    {
        var oldValue:String = _internal_formula_desc;
        if (oldValue !== value)
        {
            _internal_formula_desc = value;
        }
    }

    public function set decimales(value:String) : void
    {
        var oldValue:String = _internal_decimales;
        if (oldValue !== value)
        {
            _internal_decimales = value;
        }
    }

    public function set campo3(value:String) : void
    {
        var oldValue:String = _internal_campo3;
        if (oldValue !== value)
        {
            _internal_campo3 = value;
        }
    }

    public function set campo2(value:String) : void
    {
        var oldValue:String = _internal_campo2;
        if (oldValue !== value)
        {
            _internal_campo2 = value;
        }
    }

    public function set ID_GRUPO_INDICE_FINANCIERO(value:String) : void
    {
        var oldValue:String = _internal_ID_GRUPO_INDICE_FINANCIERO;
        if (oldValue !== value)
        {
            _internal_ID_GRUPO_INDICE_FINANCIERO = value;
        }
    }

    public function set rango_inferior(value:String) : void
    {
        var oldValue:String = _internal_rango_inferior;
        if (oldValue !== value)
        {
            _internal_rango_inferior = value;
        }
    }

    public function set campo1(value:String) : void
    {
        var oldValue:String = _internal_campo1;
        if (oldValue !== value)
        {
            _internal_campo1 = value;
        }
    }

    public function set ID_INDICE_FINANCIERO(value:String) : void
    {
        var oldValue:String = _internal_ID_INDICE_FINANCIERO;
        if (oldValue !== value)
        {
            _internal_ID_INDICE_FINANCIERO = value;
        }
    }

    public function set formula(value:String) : void
    {
        var oldValue:String = _internal_formula;
        if (oldValue !== value)
        {
            _internal_formula = value;
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

    model_internal function setterListenerId_formula(value:flash.events.Event):void
    {
        _model.invalidateDependentOnId_formula();
    }

    model_internal function setterListenerNOMBRE(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNOMBRE();
    }

    model_internal function setterListenerRangos_desc(value:flash.events.Event):void
    {
        _model.invalidateDependentOnRangos_desc();
    }

    model_internal function setterListenerRango_superior(value:flash.events.Event):void
    {
        _model.invalidateDependentOnRango_superior();
    }

    model_internal function setterListenerDESCRIPCION(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDESCRIPCION();
    }

    model_internal function setterListenerFormula_desc(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFormula_desc();
    }

    model_internal function setterListenerDecimales(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDecimales();
    }

    model_internal function setterListenerCampo3(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCampo3();
    }

    model_internal function setterListenerCampo2(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCampo2();
    }

    model_internal function setterListenerID_GRUPO_INDICE_FINANCIERO(value:flash.events.Event):void
    {
        _model.invalidateDependentOnID_GRUPO_INDICE_FINANCIERO();
    }

    model_internal function setterListenerRango_inferior(value:flash.events.Event):void
    {
        _model.invalidateDependentOnRango_inferior();
    }

    model_internal function setterListenerCampo1(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCampo1();
    }

    model_internal function setterListenerFormula(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFormula();
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
        if (!_model.id_formulaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_id_formulaValidationFailureMessages);
        }
        if (!_model.NOMBREIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_NOMBREValidationFailureMessages);
        }
        if (!_model.rangos_descIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_rangos_descValidationFailureMessages);
        }
        if (!_model.rango_superiorIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_rango_superiorValidationFailureMessages);
        }
        if (!_model.DESCRIPCIONIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_DESCRIPCIONValidationFailureMessages);
        }
        if (!_model.formula_descIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_formula_descValidationFailureMessages);
        }
        if (!_model.decimalesIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_decimalesValidationFailureMessages);
        }
        if (!_model.campo3IsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_campo3ValidationFailureMessages);
        }
        if (!_model.campo2IsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_campo2ValidationFailureMessages);
        }
        if (!_model.ID_GRUPO_INDICE_FINANCIEROIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_ID_GRUPO_INDICE_FINANCIEROValidationFailureMessages);
        }
        if (!_model.rango_inferiorIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_rango_inferiorValidationFailureMessages);
        }
        if (!_model.campo1IsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_campo1ValidationFailureMessages);
        }
        if (!_model.formulaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_formulaValidationFailureMessages);
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
    public function get _model() : _IndicesFinancierosDatatypeEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _IndicesFinancierosDatatypeEntityMetadata) : void
    {
        var oldValue : _IndicesFinancierosDatatypeEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfId_formula : Array = null;
    model_internal var _doValidationLastValOfId_formula : String;

    model_internal function _doValidationForId_formula(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfId_formula != null && model_internal::_doValidationLastValOfId_formula == value)
           return model_internal::_doValidationCacheOfId_formula ;

        _model.model_internal::_id_formulaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isId_formulaAvailable && _internal_id_formula == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "id_formula is required"));
        }

        model_internal::_doValidationCacheOfId_formula = validationFailures;
        model_internal::_doValidationLastValOfId_formula = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfNOMBRE : Array = null;
    model_internal var _doValidationLastValOfNOMBRE : String;

    model_internal function _doValidationForNOMBRE(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNOMBRE != null && model_internal::_doValidationLastValOfNOMBRE == value)
           return model_internal::_doValidationCacheOfNOMBRE ;

        _model.model_internal::_NOMBREIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNOMBREAvailable && _internal_NOMBRE == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "NOMBRE is required"));
        }

        model_internal::_doValidationCacheOfNOMBRE = validationFailures;
        model_internal::_doValidationLastValOfNOMBRE = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfRangos_desc : Array = null;
    model_internal var _doValidationLastValOfRangos_desc : String;

    model_internal function _doValidationForRangos_desc(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfRangos_desc != null && model_internal::_doValidationLastValOfRangos_desc == value)
           return model_internal::_doValidationCacheOfRangos_desc ;

        _model.model_internal::_rangos_descIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRangos_descAvailable && _internal_rangos_desc == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "rangos_desc is required"));
        }

        model_internal::_doValidationCacheOfRangos_desc = validationFailures;
        model_internal::_doValidationLastValOfRangos_desc = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfRango_superior : Array = null;
    model_internal var _doValidationLastValOfRango_superior : String;

    model_internal function _doValidationForRango_superior(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfRango_superior != null && model_internal::_doValidationLastValOfRango_superior == value)
           return model_internal::_doValidationCacheOfRango_superior ;

        _model.model_internal::_rango_superiorIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRango_superiorAvailable && _internal_rango_superior == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "rango_superior is required"));
        }

        model_internal::_doValidationCacheOfRango_superior = validationFailures;
        model_internal::_doValidationLastValOfRango_superior = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDESCRIPCION : Array = null;
    model_internal var _doValidationLastValOfDESCRIPCION : String;

    model_internal function _doValidationForDESCRIPCION(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDESCRIPCION != null && model_internal::_doValidationLastValOfDESCRIPCION == value)
           return model_internal::_doValidationCacheOfDESCRIPCION ;

        _model.model_internal::_DESCRIPCIONIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDESCRIPCIONAvailable && _internal_DESCRIPCION == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "DESCRIPCION is required"));
        }

        model_internal::_doValidationCacheOfDESCRIPCION = validationFailures;
        model_internal::_doValidationLastValOfDESCRIPCION = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfFormula_desc : Array = null;
    model_internal var _doValidationLastValOfFormula_desc : String;

    model_internal function _doValidationForFormula_desc(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfFormula_desc != null && model_internal::_doValidationLastValOfFormula_desc == value)
           return model_internal::_doValidationCacheOfFormula_desc ;

        _model.model_internal::_formula_descIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFormula_descAvailable && _internal_formula_desc == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "formula_desc is required"));
        }

        model_internal::_doValidationCacheOfFormula_desc = validationFailures;
        model_internal::_doValidationLastValOfFormula_desc = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDecimales : Array = null;
    model_internal var _doValidationLastValOfDecimales : String;

    model_internal function _doValidationForDecimales(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDecimales != null && model_internal::_doValidationLastValOfDecimales == value)
           return model_internal::_doValidationCacheOfDecimales ;

        _model.model_internal::_decimalesIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDecimalesAvailable && _internal_decimales == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "decimales is required"));
        }

        model_internal::_doValidationCacheOfDecimales = validationFailures;
        model_internal::_doValidationLastValOfDecimales = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCampo3 : Array = null;
    model_internal var _doValidationLastValOfCampo3 : String;

    model_internal function _doValidationForCampo3(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCampo3 != null && model_internal::_doValidationLastValOfCampo3 == value)
           return model_internal::_doValidationCacheOfCampo3 ;

        _model.model_internal::_campo3IsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCampo3Available && _internal_campo3 == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "campo3 is required"));
        }

        model_internal::_doValidationCacheOfCampo3 = validationFailures;
        model_internal::_doValidationLastValOfCampo3 = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCampo2 : Array = null;
    model_internal var _doValidationLastValOfCampo2 : String;

    model_internal function _doValidationForCampo2(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCampo2 != null && model_internal::_doValidationLastValOfCampo2 == value)
           return model_internal::_doValidationCacheOfCampo2 ;

        _model.model_internal::_campo2IsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCampo2Available && _internal_campo2 == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "campo2 is required"));
        }

        model_internal::_doValidationCacheOfCampo2 = validationFailures;
        model_internal::_doValidationLastValOfCampo2 = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfID_GRUPO_INDICE_FINANCIERO : Array = null;
    model_internal var _doValidationLastValOfID_GRUPO_INDICE_FINANCIERO : String;

    model_internal function _doValidationForID_GRUPO_INDICE_FINANCIERO(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfID_GRUPO_INDICE_FINANCIERO != null && model_internal::_doValidationLastValOfID_GRUPO_INDICE_FINANCIERO == value)
           return model_internal::_doValidationCacheOfID_GRUPO_INDICE_FINANCIERO ;

        _model.model_internal::_ID_GRUPO_INDICE_FINANCIEROIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isID_GRUPO_INDICE_FINANCIEROAvailable && _internal_ID_GRUPO_INDICE_FINANCIERO == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "ID_GRUPO_INDICE_FINANCIERO is required"));
        }

        model_internal::_doValidationCacheOfID_GRUPO_INDICE_FINANCIERO = validationFailures;
        model_internal::_doValidationLastValOfID_GRUPO_INDICE_FINANCIERO = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfRango_inferior : Array = null;
    model_internal var _doValidationLastValOfRango_inferior : String;

    model_internal function _doValidationForRango_inferior(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfRango_inferior != null && model_internal::_doValidationLastValOfRango_inferior == value)
           return model_internal::_doValidationCacheOfRango_inferior ;

        _model.model_internal::_rango_inferiorIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRango_inferiorAvailable && _internal_rango_inferior == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "rango_inferior is required"));
        }

        model_internal::_doValidationCacheOfRango_inferior = validationFailures;
        model_internal::_doValidationLastValOfRango_inferior = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCampo1 : Array = null;
    model_internal var _doValidationLastValOfCampo1 : String;

    model_internal function _doValidationForCampo1(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCampo1 != null && model_internal::_doValidationLastValOfCampo1 == value)
           return model_internal::_doValidationCacheOfCampo1 ;

        _model.model_internal::_campo1IsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCampo1Available && _internal_campo1 == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "campo1 is required"));
        }

        model_internal::_doValidationCacheOfCampo1 = validationFailures;
        model_internal::_doValidationLastValOfCampo1 = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfFormula : Array = null;
    model_internal var _doValidationLastValOfFormula : String;

    model_internal function _doValidationForFormula(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfFormula != null && model_internal::_doValidationLastValOfFormula == value)
           return model_internal::_doValidationCacheOfFormula ;

        _model.model_internal::_formulaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFormulaAvailable && _internal_formula == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "formula is required"));
        }

        model_internal::_doValidationCacheOfFormula = validationFailures;
        model_internal::_doValidationLastValOfFormula = value;

        return validationFailures;
    }
    

}

}
