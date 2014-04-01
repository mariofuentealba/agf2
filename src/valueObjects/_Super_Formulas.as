/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Formulas.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[Managed]
[ExcludeClass]
public class _Super_Formulas extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _FormulasEntityMetadata;
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
    private var _internal_ID_FORMULA : int;
    private var _internal_CAMPO1 : int;
    private var _internal_CAMPO2 : int;
    private var _internal_CAMPO3 : int;
    private var _internal_CAMPO4 : int;
    private var _internal_CAMPO5 : int;
    private var _internal_tipoc1 : int;
    private var _internal_tipoc2 : int;
    private var _internal_tipoc3 : int;
    private var _internal_tipoc4 : int;
    private var _internal_tipoc5 : int;
    private var _internal_FORMULA : String;
    private var _internal_CANTIDAD_CAMPOS : int;
    private var _internal_DECIMALES : int;
    private var _internal_cod1 : String;
    private var _internal_cod2 : String;
    private var _internal_cod3 : String;
    private var _internal_cod4 : String;
    private var _internal_cod5 : String;
    private var _internal_id_indice_financiero : int;
    private var _internal_num_formula : int;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Formulas()
    {
        _model = new _FormulasEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get ID_FORMULA() : int
    {
        return _internal_ID_FORMULA;
    }

    [Bindable(event="propertyChange")]
    public function get CAMPO1() : int
    {
        return _internal_CAMPO1;
    }

    [Bindable(event="propertyChange")]
    public function get CAMPO2() : int
    {
        return _internal_CAMPO2;
    }

    [Bindable(event="propertyChange")]
    public function get CAMPO3() : int
    {
        return _internal_CAMPO3;
    }

    [Bindable(event="propertyChange")]
    public function get CAMPO4() : int
    {
        return _internal_CAMPO4;
    }

    [Bindable(event="propertyChange")]
    public function get CAMPO5() : int
    {
        return _internal_CAMPO5;
    }

    [Bindable(event="propertyChange")]
    public function get tipoc1() : int
    {
        return _internal_tipoc1;
    }

    [Bindable(event="propertyChange")]
    public function get tipoc2() : int
    {
        return _internal_tipoc2;
    }

    [Bindable(event="propertyChange")]
    public function get tipoc3() : int
    {
        return _internal_tipoc3;
    }

    [Bindable(event="propertyChange")]
    public function get tipoc4() : int
    {
        return _internal_tipoc4;
    }

    [Bindable(event="propertyChange")]
    public function get tipoc5() : int
    {
        return _internal_tipoc5;
    }

    [Bindable(event="propertyChange")]
    public function get FORMULA() : String
    {
        return _internal_FORMULA;
    }

    [Bindable(event="propertyChange")]
    public function get CANTIDAD_CAMPOS() : int
    {
        return _internal_CANTIDAD_CAMPOS;
    }

    [Bindable(event="propertyChange")]
    public function get DECIMALES() : int
    {
        return _internal_DECIMALES;
    }

    [Bindable(event="propertyChange")]
    public function get cod1() : String
    {
        return _internal_cod1;
    }

    [Bindable(event="propertyChange")]
    public function get cod2() : String
    {
        return _internal_cod2;
    }

    [Bindable(event="propertyChange")]
    public function get cod3() : String
    {
        return _internal_cod3;
    }

    [Bindable(event="propertyChange")]
    public function get cod4() : String
    {
        return _internal_cod4;
    }

    [Bindable(event="propertyChange")]
    public function get cod5() : String
    {
        return _internal_cod5;
    }

    [Bindable(event="propertyChange")]
    public function get id_indice_financiero() : int
    {
        return _internal_id_indice_financiero;
    }

    [Bindable(event="propertyChange")]
    public function get num_formula() : int
    {
        return _internal_num_formula;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set ID_FORMULA(value:int) : void
    {
        var oldValue:int = _internal_ID_FORMULA;
        if (oldValue !== value)
        {
            _internal_ID_FORMULA = value;
        }
    }

    public function set CAMPO1(value:int) : void
    {
        var oldValue:int = _internal_CAMPO1;
        if (oldValue !== value)
        {
            _internal_CAMPO1 = value;
        }
    }

    public function set CAMPO2(value:int) : void
    {
        var oldValue:int = _internal_CAMPO2;
        if (oldValue !== value)
        {
            _internal_CAMPO2 = value;
        }
    }

    public function set CAMPO3(value:int) : void
    {
        var oldValue:int = _internal_CAMPO3;
        if (oldValue !== value)
        {
            _internal_CAMPO3 = value;
        }
    }

    public function set CAMPO4(value:int) : void
    {
        var oldValue:int = _internal_CAMPO4;
        if (oldValue !== value)
        {
            _internal_CAMPO4 = value;
        }
    }

    public function set CAMPO5(value:int) : void
    {
        var oldValue:int = _internal_CAMPO5;
        if (oldValue !== value)
        {
            _internal_CAMPO5 = value;
        }
    }

    public function set tipoc1(value:int) : void
    {
        var oldValue:int = _internal_tipoc1;
        if (oldValue !== value)
        {
            _internal_tipoc1 = value;
        }
    }

    public function set tipoc2(value:int) : void
    {
        var oldValue:int = _internal_tipoc2;
        if (oldValue !== value)
        {
            _internal_tipoc2 = value;
        }
    }

    public function set tipoc3(value:int) : void
    {
        var oldValue:int = _internal_tipoc3;
        if (oldValue !== value)
        {
            _internal_tipoc3 = value;
        }
    }

    public function set tipoc4(value:int) : void
    {
        var oldValue:int = _internal_tipoc4;
        if (oldValue !== value)
        {
            _internal_tipoc4 = value;
        }
    }

    public function set tipoc5(value:int) : void
    {
        var oldValue:int = _internal_tipoc5;
        if (oldValue !== value)
        {
            _internal_tipoc5 = value;
        }
    }

    public function set FORMULA(value:String) : void
    {
        var oldValue:String = _internal_FORMULA;
        if (oldValue !== value)
        {
            _internal_FORMULA = value;
        }
    }

    public function set CANTIDAD_CAMPOS(value:int) : void
    {
        var oldValue:int = _internal_CANTIDAD_CAMPOS;
        if (oldValue !== value)
        {
            _internal_CANTIDAD_CAMPOS = value;
        }
    }

    public function set DECIMALES(value:int) : void
    {
        var oldValue:int = _internal_DECIMALES;
        if (oldValue !== value)
        {
            _internal_DECIMALES = value;
        }
    }

    public function set cod1(value:String) : void
    {
        var oldValue:String = _internal_cod1;
        if (oldValue !== value)
        {
            _internal_cod1 = value;
        }
    }

    public function set cod2(value:String) : void
    {
        var oldValue:String = _internal_cod2;
        if (oldValue !== value)
        {
            _internal_cod2 = value;
        }
    }

    public function set cod3(value:String) : void
    {
        var oldValue:String = _internal_cod3;
        if (oldValue !== value)
        {
            _internal_cod3 = value;
        }
    }

    public function set cod4(value:String) : void
    {
        var oldValue:String = _internal_cod4;
        if (oldValue !== value)
        {
            _internal_cod4 = value;
        }
    }

    public function set cod5(value:String) : void
    {
        var oldValue:String = _internal_cod5;
        if (oldValue !== value)
        {
            _internal_cod5 = value;
        }
    }

    public function set id_indice_financiero(value:int) : void
    {
        var oldValue:int = _internal_id_indice_financiero;
        if (oldValue !== value)
        {
            _internal_id_indice_financiero = value;
        }
    }

    public function set num_formula(value:int) : void
    {
        var oldValue:int = _internal_num_formula;
        if (oldValue !== value)
        {
            _internal_num_formula = value;
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
    public function get _model() : _FormulasEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _FormulasEntityMetadata) : void
    {
        var oldValue : _FormulasEntityMetadata = model_internal::_dminternal_model;
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


}

}
