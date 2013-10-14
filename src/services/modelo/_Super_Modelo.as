/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - Modelo.as.
 */
package services.modelo
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.RemoteObjectServiceWrapper;
import com.adobe.fiber.valueobjects.IValueObject;
import com.adobe.serializers.utility.TypeUtility;
import mx.collections.ListCollectionView;
import mx.data.DataManager;
import mx.data.IManaged;
import mx.data.ManagedAssociation;
import mx.data.ManagedOperation;
import mx.data.ManagedQuery;
import mx.data.RPCDataManager;
import mx.data.errors.DataServiceError;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.remoting.Operation;
import mx.rpc.remoting.RemoteObject;
import valueObjects.AgfDatatype;
import valueObjects.EmpresaDatatype;
import valueObjects.EmpresasDatatype;
import valueObjects.GrupoIndDatatype;
import valueObjects.GrupoIndiceFinancieroDatatype;
import valueObjects.GrupoIndicesDataType;
import valueObjects.GruposDatatype;
import valueObjects.IndicesDatatype;
import valueObjects.IndicesFinancierosDatatype;
import valueObjects.ItemDatatype;
import valueObjects.MonedasDatatype;
import valueObjects.SubGrupoDatatype1;
import valueObjects.SubGruposDatatype;
import valueObjects.ValoresDatatype;

import mx.collections.ItemResponder;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

[ExcludeClass]
internal class _Super_Modelo extends com.adobe.fiber.services.wrapper.RemoteObjectServiceWrapper
{
    private var _grupoIndDatatypeRPCDataManager : mx.data.RPCDataManager;
    private var _subGrupoDatatype1RPCDataManager : mx.data.RPCDataManager;
    private var _grupoIndiceFinancieroDatatypeRPCDataManager : mx.data.RPCDataManager;
    private var _monedasDatatypeRPCDataManager : mx.data.RPCDataManager;
    private var _grupoIndicesDataTypeRPCDataManager : mx.data.RPCDataManager;
    private var _subGruposDatatypeRPCDataManager : mx.data.RPCDataManager;
    private var _indicesFinancierosDatatypeRPCDataManager : mx.data.RPCDataManager;
    private var _agfDatatypeRPCDataManager : mx.data.RPCDataManager;
    private var _gruposDatatypeRPCDataManager : mx.data.RPCDataManager;
    private var _empresasDatatypeRPCDataManager : mx.data.RPCDataManager;
    private var managersArray : Array = new Array();

    public const DATA_MANAGER_GRUPOINDDATATYPE : String = "GrupoIndDatatype";
    public const DATA_MANAGER_SUBGRUPODATATYPE1 : String = "SubGrupoDatatype1";
    public const DATA_MANAGER_GRUPOINDICEFINANCIERODATATYPE : String = "GrupoIndiceFinancieroDatatype";
    public const DATA_MANAGER_MONEDASDATATYPE : String = "MonedasDatatype";
    public const DATA_MANAGER_GRUPOINDICESDATATYPE : String = "GrupoIndicesDataType";
    public const DATA_MANAGER_SUBGRUPOSDATATYPE : String = "SubGruposDatatype";
    public const DATA_MANAGER_INDICESFINANCIEROSDATATYPE : String = "IndicesFinancierosDatatype";
    public const DATA_MANAGER_AGFDATATYPE : String = "AgfDatatype";
    public const DATA_MANAGER_GRUPOSDATATYPE : String = "GruposDatatype";
    public const DATA_MANAGER_EMPRESASDATATYPE : String = "EmpresasDatatype";

    public function getDataManager(dataManagerName:String) : mx.data.RPCDataManager
    {
        switch (dataManagerName)
        {
             case (DATA_MANAGER_GRUPOINDDATATYPE):
                return _grupoIndDatatypeRPCDataManager;
             case (DATA_MANAGER_SUBGRUPODATATYPE1):
                return _subGrupoDatatype1RPCDataManager;
             case (DATA_MANAGER_GRUPOINDICEFINANCIERODATATYPE):
                return _grupoIndiceFinancieroDatatypeRPCDataManager;
             case (DATA_MANAGER_MONEDASDATATYPE):
                return _monedasDatatypeRPCDataManager;
             case (DATA_MANAGER_GRUPOINDICESDATATYPE):
                return _grupoIndicesDataTypeRPCDataManager;
             case (DATA_MANAGER_SUBGRUPOSDATATYPE):
                return _subGruposDatatypeRPCDataManager;
             case (DATA_MANAGER_INDICESFINANCIEROSDATATYPE):
                return _indicesFinancierosDatatypeRPCDataManager;
             case (DATA_MANAGER_AGFDATATYPE):
                return _agfDatatypeRPCDataManager;
             case (DATA_MANAGER_GRUPOSDATATYPE):
                return _gruposDatatypeRPCDataManager;
             case (DATA_MANAGER_EMPRESASDATATYPE):
                return _empresasDatatypeRPCDataManager;
            default:
                return null;
        }
    }

    /**
     * Commit all of the pending changes for this DataService, as well as all of the pending changes of all DataServices
     * sharing the same DataStore.  By default, a DataService shares the same DataStore with other DataServices if they have 
     * managed association properties and share the same set of channels. 
     *
     * @see mx.data.DataManager
     * @see mx.data.DataStore
     *
     * @param itemsOrCollections:Array This is an optional parameter which defaults to null when
     *  you want to commit all pending changes.  If you want to commit a subset of the pending
     *  changes use this argument to specify a list of managed ListCollectionView instances
     *  and/or managed items.  ListCollectionView objects are most typically ArrayCollections
     *  you have provided to your fill method.  The items appropriate for this method are
     *  any managed version of the item.  These are any items you retrieve from getItem, createItem
     *  or using the getItemAt method from a managed collection.  Only changes for the
     *  items defined by any of the values in this array will be committed.
     *
     * @param cascadeCommit if true, also commit changes made to any associated
     *  items supplied in this list.
     *
     *  @return AsyncToken that is returned in <code>call</code> property of
     *  either the <code>ResultEvent.RESULT</code> or in the
     *  <code>FaultEvent.FAULT</code>.
     *  Custom data can be attached to this object and inspected later
     *  during the event handling phase.  If no changes have been made
     *  to the relevant items, null is returned instead of an AsyncToken.
     */
    public function commit(itemsOrCollections:Array=null, cascadeCommit:Boolean=false):mx.rpc.AsyncToken
    {
        return _grupoIndDatatypeRPCDataManager.dataStore.commit(itemsOrCollections, cascadeCommit);
    }

    /**
     * Reverts all pending (uncommitted) changes for this DataService, as well as all of the pending changes of all DataServics
     * sharing the same DataStore.  By default, a DataService shares the same DataStore with other DataServices if they have 
     * managed association properties and share the same set of channels. 
     *
     * In case you specify a value for itemsOrCollections:Array parameter, only pending (uncommitted) changes for the specified 
     * managed items or collections will be reverted.
     *
     * @see mx.data.DataManager
     * @see mx.data.DataStore
     * 
     * @param itemsOrCollections:Array This is an optional parameter which defaults to null 
     * when you want to revert all pending (uncommitted) changes for all DataServices
     * managed by this DataStore. If you want to revert a subset of the pending changes use 
     * this argument to specify a array of managed items or collections
     *
     * @return true if any changes were reverted.
     * @throws DataServiceError if the passed in array contains non-managed items or collections
     *  
     */
    public function revertChanges(itemsOrCollections:Array=null):Boolean
    {
        if (itemsOrCollections == null)
        {
            // Revert all changes
            return _grupoIndDatatypeRPCDataManager.dataStore.revertChanges();
        }
        else
        {
            // Revert passed in items
            var anyChangeItemReverted:Boolean = false;

            // Iterate over array and revert managed item or collection as the case may be
            for each (var changeItem:Object in itemsOrCollections)
            {
                if (changeItem is com.adobe.fiber.valueobjects.IValueObject)
                {
                    var dataMgr:mx.data.DataManager = getDataManager(changeItem._model.getEntityName());
                    anyChangeItemReverted ||= dataMgr.revertChanges(mx.data.IManaged(changeItem))
                }
                else if (changeItem is mx.collections.ListCollectionView)
                {
                    anyChangeItemReverted ||= _grupoIndDatatypeRPCDataManager.dataStore.revertChangesForCollection(mx.collections.ListCollectionView(changeItem));
                }
                else
                {
                    throw new mx.data.errors.DataServiceError("revertChanges called on array that contains non-managed items or collections");
                }
            }
            return anyChangeItemReverted;
        }
    }

    // Constructor
    public function _Super_Modelo()
    {
        // initialize service control
        _serviceControl = new mx.rpc.remoting.RemoteObject();

        // initialize RemoteClass alias for all entities returned by functions of this service
        valueObjects.EmpresasDatatype._initRemoteClassAlias();
        valueObjects.GrupoIndicesDataType._initRemoteClassAlias();
        valueObjects.ItemDatatype._initRemoteClassAlias();
        valueObjects.SubGruposDatatype._initRemoteClassAlias();
        valueObjects.AgfDatatype._initRemoteClassAlias();
        valueObjects.EmpresaDatatype._initRemoteClassAlias();
        valueObjects.GrupoIndiceFinancieroDatatype._initRemoteClassAlias();
        valueObjects.GruposDatatype._initRemoteClassAlias();
        valueObjects.IndicesFinancierosDatatype._initRemoteClassAlias();
        valueObjects.MonedasDatatype._initRemoteClassAlias();
        valueObjects.GrupoIndDatatype._initRemoteClassAlias();
        valueObjects.ValoresDatatype._initRemoteClassAlias();
        valueObjects.IndicesDatatype._initRemoteClassAlias();

        var operations:Object = new Object();
        var operation:mx.rpc.remoting.Operation;

        operation = new mx.rpc.remoting.Operation(null, "comboEmpresa");
         operation.resultElementType = valueObjects.EmpresasDatatype;
        operations["comboEmpresa"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "comboGrupoIndicesFinancieros");
         operation.resultElementType = valueObjects.GrupoIndicesDataType;
        operations["comboGrupoIndicesFinancieros"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "comboGrupos");
         operation.resultType = Object;
        operations["comboGrupos"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "comboItems");
         operation.resultElementType = valueObjects.ItemDatatype;
        operations["comboItems"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "comboSubGrupos");
         operation.resultElementType = valueObjects.SubGruposDatatype;
        operations["comboSubGrupos"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "countAgf");
         operation.resultType = Object;
        operations["countAgf"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "countEmpresa");
         operation.resultType = Object;
        operations["countEmpresa"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "countGrupoIndices");
         operation.resultType = Object;
        operations["countGrupoIndices"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "countGrupos");
         operation.resultType = Object;
        operations["countGrupos"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "countIndicesFinancieros");
         operation.resultType = Object;
        operations["countIndicesFinancieros"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "countMonedas");
         operation.resultType = Object;
        operations["countMonedas"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "countSubGrupos");
         operation.resultType = Object;
        operations["countSubGrupos"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "deleteFormularioItem");
         operation.resultType = Object;
        operations["deleteFormularioItem"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "editar");
         operation.resultType = Object;
        operations["editar"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "editarIndicesFinancieros");
         operation.resultType = Object;
        operations["editarIndicesFinancieros"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "editarSubGrupo");
         operation.resultType = Object;
        operations["editarSubGrupo"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "grillaAgf");
         operation.resultElementType = valueObjects.AgfDatatype;
        operations["grillaAgf"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "grillaEmpresa");
         operation.resultElementType = valueObjects.EmpresasDatatype;
        operations["grillaEmpresa"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "grillaEmpresaDelSubGrupo");
         operation.resultType = Object;
        operations["grillaEmpresaDelSubGrupo"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "grillaEmpresaSinSubGrupo");
         operation.resultElementType = valueObjects.EmpresaDatatype;
        operations["grillaEmpresaSinSubGrupo"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "grillaGrupoIndices");
         operation.resultElementType = valueObjects.GrupoIndiceFinancieroDatatype;
        operations["grillaGrupoIndices"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "grillaGrupos");
         operation.resultElementType = valueObjects.GruposDatatype;
        operations["grillaGrupos"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "grillaIndicesFinancieros");
         operation.resultElementType = valueObjects.IndicesFinancierosDatatype;
        operations["grillaIndicesFinancieros"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "grillaMonedas");
         operation.resultElementType = valueObjects.MonedasDatatype;
        operations["grillaMonedas"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "grillaSubGrupos");
         operation.resultElementType = valueObjects.SubGruposDatatype;
        operations["grillaSubGrupos"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "grillaTodasEmpresa");
         operation.resultType = Object;
        operations["grillaTodasEmpresa"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "grillaTodoIndicesFinancieros");
         operation.resultType = Object;
        operations["grillaTodoIndicesFinancieros"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "grillaTodosGrupoIndices");
         operation.resultElementType = valueObjects.GrupoIndDatatype;
        operations["grillaTodosGrupoIndices"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "grillaTodosGrupos");
         operation.resultType = Object;
        operations["grillaTodosGrupos"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "grillaTodoSubGrupos");
         operation.resultType = Object;
        operations["grillaTodoSubGrupos"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "insertar");
         operation.resultType = Object;
        operations["insertar"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "insertarEmpresa");
         operation.resultType = Object;
        operations["insertarEmpresa"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "insertarIndicesFinancieros");
         operation.resultType = Object;
        operations["insertarIndicesFinancieros"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "insertarItem");
         operation.resultType = Object;
        operations["insertarItem"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "insertarItemExistente");
         operation.resultType = Object;
        operations["insertarItemExistente"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "insertarSubgrupo");
         operation.resultType = Object;
        operations["insertarSubgrupo"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "insertarSubgrupoEmpresa");
         operation.resultType = Object;
        operations["insertarSubgrupoEmpresa"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "insertarValor");
         operation.resultType = Object;
        operations["insertarValor"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "periodos");
         operation.resultType = Object;
        operations["periodos"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "subGrillaSubGrupos");
         operation.resultType = Object;
        operations["subGrillaSubGrupos"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "valores");
         operation.resultElementType = valueObjects.ValoresDatatype;
        operations["valores"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "valores2");
         operation.resultType = Object;
        operations["valores2"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "insertarConfig");
         operation.resultType = Boolean;
        operations["insertarConfig"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "indicesFinancieros");
         operation.resultElementType = valueObjects.IndicesDatatype;
        operations["indicesFinancieros"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "listEmpresa");
         operation.resultType = Object;
        operations["listEmpresa"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "listSubgrupo");
         operation.resultType = Object;
        operations["listSubgrupo"] = operation;

        _serviceControl.operations = operations;
        _serviceControl.convertResultHandler = com.adobe.serializers.utility.TypeUtility.convertResultHandler;
        _serviceControl.source = "modelo";
        _serviceControl.endpoint = "gateway.php";
        var managedAssociation : mx.data.ManagedAssociation;
        var managedAssocsArray : Array;
        // initialize GrupoIndDatatype data manager
        _grupoIndDatatypeRPCDataManager = new mx.data.RPCDataManager();
        managersArray.push(_grupoIndDatatypeRPCDataManager);

        managedAssocsArray = new Array();

        _grupoIndDatatypeRPCDataManager.destination = "grupoIndDatatypeRPCDataManager";
        _grupoIndDatatypeRPCDataManager.service = _serviceControl;        
        _grupoIndDatatypeRPCDataManager.identities =  "ID_GRUPO_INDICE_FINANCIERO";      
        _grupoIndDatatypeRPCDataManager.itemClass = valueObjects.GrupoIndDatatype; 


        // initialize SubGrupoDatatype1 data manager
        _subGrupoDatatype1RPCDataManager = new mx.data.RPCDataManager();
        managersArray.push(_subGrupoDatatype1RPCDataManager);

        managedAssocsArray = new Array();

        _subGrupoDatatype1RPCDataManager.destination = "subGrupoDatatype1RPCDataManager";
        _subGrupoDatatype1RPCDataManager.service = _serviceControl;        
        _subGrupoDatatype1RPCDataManager.identities =  "ID_SUBGRUPO";      
        _subGrupoDatatype1RPCDataManager.itemClass = valueObjects.SubGrupoDatatype1; 


        // initialize GrupoIndiceFinancieroDatatype data manager
        _grupoIndiceFinancieroDatatypeRPCDataManager = new mx.data.RPCDataManager();
        managersArray.push(_grupoIndiceFinancieroDatatypeRPCDataManager);

        managedAssocsArray = new Array();

        _grupoIndiceFinancieroDatatypeRPCDataManager.destination = "grupoIndiceFinancieroDatatypeRPCDataManager";
        _grupoIndiceFinancieroDatatypeRPCDataManager.service = _serviceControl;        
        _grupoIndiceFinancieroDatatypeRPCDataManager.identities =  "ID_GRUPO_INDICE_FINANCIERO";      
        _grupoIndiceFinancieroDatatypeRPCDataManager.itemClass = valueObjects.GrupoIndiceFinancieroDatatype; 


        // initialize MonedasDatatype data manager
        _monedasDatatypeRPCDataManager = new mx.data.RPCDataManager();
        managersArray.push(_monedasDatatypeRPCDataManager);

        managedAssocsArray = new Array();

        _monedasDatatypeRPCDataManager.destination = "monedasDatatypeRPCDataManager";
        _monedasDatatypeRPCDataManager.service = _serviceControl;        
        _monedasDatatypeRPCDataManager.identities =  "id";      
        _monedasDatatypeRPCDataManager.itemClass = valueObjects.MonedasDatatype; 


        // initialize GrupoIndicesDataType data manager
        _grupoIndicesDataTypeRPCDataManager = new mx.data.RPCDataManager();
        managersArray.push(_grupoIndicesDataTypeRPCDataManager);

        managedAssocsArray = new Array();

        _grupoIndicesDataTypeRPCDataManager.destination = "grupoIndicesDataTypeRPCDataManager";
        _grupoIndicesDataTypeRPCDataManager.service = _serviceControl;        
        _grupoIndicesDataTypeRPCDataManager.identities =  "ID_GRUPO_INDICE_FINANCIERO";      
        _grupoIndicesDataTypeRPCDataManager.itemClass = valueObjects.GrupoIndicesDataType; 


        // initialize SubGruposDatatype data manager
        _subGruposDatatypeRPCDataManager = new mx.data.RPCDataManager();
        managersArray.push(_subGruposDatatypeRPCDataManager);

        managedAssocsArray = new Array();

        _subGruposDatatypeRPCDataManager.destination = "subGruposDatatypeRPCDataManager";
        _subGruposDatatypeRPCDataManager.service = _serviceControl;        
        _subGruposDatatypeRPCDataManager.identities =  "ID_SUBGRUPO,ID_TIPO_EMPRESA";      
        _subGruposDatatypeRPCDataManager.itemClass = valueObjects.SubGruposDatatype; 


        // initialize IndicesFinancierosDatatype data manager
        _indicesFinancierosDatatypeRPCDataManager = new mx.data.RPCDataManager();
        managersArray.push(_indicesFinancierosDatatypeRPCDataManager);

        managedAssocsArray = new Array();

        _indicesFinancierosDatatypeRPCDataManager.destination = "indicesFinancierosDatatypeRPCDataManager";
        _indicesFinancierosDatatypeRPCDataManager.service = _serviceControl;        
        _indicesFinancierosDatatypeRPCDataManager.identities =  "ID_INDICE_FINANCIERO";      
        _indicesFinancierosDatatypeRPCDataManager.itemClass = valueObjects.IndicesFinancierosDatatype; 


        // initialize AgfDatatype data manager
        _agfDatatypeRPCDataManager = new mx.data.RPCDataManager();
        managersArray.push(_agfDatatypeRPCDataManager);

        managedAssocsArray = new Array();

        _agfDatatypeRPCDataManager.destination = "agfDatatypeRPCDataManager";
        _agfDatatypeRPCDataManager.service = _serviceControl;        
        _agfDatatypeRPCDataManager.identities =  "id_tag_agf";      
        _agfDatatypeRPCDataManager.itemClass = valueObjects.AgfDatatype; 


        // initialize GruposDatatype data manager
        _gruposDatatypeRPCDataManager = new mx.data.RPCDataManager();
        managersArray.push(_gruposDatatypeRPCDataManager);

        managedAssocsArray = new Array();

        _gruposDatatypeRPCDataManager.destination = "gruposDatatypeRPCDataManager";
        _gruposDatatypeRPCDataManager.service = _serviceControl;        
        _gruposDatatypeRPCDataManager.identities =  "ID_TIPO_EMPRESA";      
        _gruposDatatypeRPCDataManager.itemClass = valueObjects.GruposDatatype; 


        // initialize EmpresasDatatype data manager
        _empresasDatatypeRPCDataManager = new mx.data.RPCDataManager();
        managersArray.push(_empresasDatatypeRPCDataManager);

        managedAssocsArray = new Array();

        _empresasDatatypeRPCDataManager.destination = "empresasDatatypeRPCDataManager";
        _empresasDatatypeRPCDataManager.service = _serviceControl;        
        _empresasDatatypeRPCDataManager.identities =  "ID_SUBGRUPO,ID_EMPRESA";      
        _empresasDatatypeRPCDataManager.itemClass = valueObjects.EmpresasDatatype; 



        var dmOperation : mx.data.ManagedOperation;
        var dmQuery : mx.data.ManagedQuery;

        dmQuery = new mx.data.ManagedQuery("grillaIndicesFinancieros");
        dmQuery.propertySpecifier = "id_formula,NOMBRE,rangos_desc,rango_superior,DESCRIPCION,formula_desc,decimales,campo3,campo2,ID_GRUPO_INDICE_FINANCIERO,rango_inferior,campo1,ID_INDICE_FINANCIERO,formula";
        dmQuery.countOperation = "countIndicesFinancieros";
        dmQuery.pagingEnabled = true;
        dmQuery.positionalPagingParameters = true;
        dmQuery.pageSize = 100;
        dmQuery.parameters = "startIndex,numItems";
        _indicesFinancierosDatatypeRPCDataManager.addManagedOperation(dmQuery);

        dmQuery = new mx.data.ManagedQuery("grillaGrupos");
        dmQuery.propertySpecifier = "nombre,ID_TIPO_EMPRESA,descripcion";
        dmQuery.countOperation = "countGrupos";
        dmQuery.pagingEnabled = true;
        dmQuery.positionalPagingParameters = true;
        dmQuery.pageSize = 5;
        dmQuery.parameters = "startIndex,numItems";
        _gruposDatatypeRPCDataManager.addManagedOperation(dmQuery);

        dmQuery = new mx.data.ManagedQuery("grillaEmpresa");
        dmQuery.propertySpecifier = "ID_SUBGRUPO,RSO,color,TIPO_IFRS,TIPO_BALANCE,RUT,NOMBRE_BOLSA,NOMBRE_FANTASIA,ID_EMPRESA";
        dmQuery.countOperation = "countEmpresa";
        dmQuery.pagingEnabled = true;
        dmQuery.positionalPagingParameters = true;
        dmQuery.parameters = "startIndex,numItems";
        _empresasDatatypeRPCDataManager.addManagedOperation(dmQuery);

        dmQuery = new mx.data.ManagedQuery("grillaMonedas");
        dmQuery.propertySpecifier = "codigo,nombre,id,operacion,signo,valor_defecto,cantidad_decimal";
        dmQuery.countOperation = "countMonedas";
        dmQuery.pagingEnabled = true;
        dmQuery.positionalPagingParameters = true;
        dmQuery.pageSize = 10;
        dmQuery.parameters = "startIndex,numItems";
        _monedasDatatypeRPCDataManager.addManagedOperation(dmQuery);

        dmQuery = new mx.data.ManagedQuery("grillaAgf");
        dmQuery.propertySpecifier = "nombre,id_tag_agf,etiqueta,origen";
        dmQuery.positionalPagingParameters = true;
        dmQuery.parameters = "";
        _agfDatatypeRPCDataManager.addManagedOperation(dmQuery);

        dmQuery = new mx.data.ManagedQuery("grillaGrupoIndices");
        dmQuery.propertySpecifier = "nombre,descripcion,ID_GRUPO_INDICE_FINANCIERO";
        dmQuery.countOperation = "countGrupoIndices";
        dmQuery.pagingEnabled = true;
        dmQuery.positionalPagingParameters = true;
        dmQuery.parameters = "startIndex,numItems";
        _grupoIndiceFinancieroDatatypeRPCDataManager.addManagedOperation(dmQuery);

        dmQuery = new mx.data.ManagedQuery("grillaSubGrupos");
        dmQuery.propertySpecifier = "nombre,ID_SUBGRUPO,ID_TIPO_EMPRESA,descripcion";
        dmQuery.countOperation = "countSubGrupos";
        dmQuery.pagingEnabled = true;
        dmQuery.positionalPagingParameters = true;
        dmQuery.pageSize = 5;
        dmQuery.parameters = "startIndex,numItems";
        _subGruposDatatypeRPCDataManager.addManagedOperation(dmQuery);

        _serviceControl.managers = managersArray;

         preInitializeService();
         model_internal::initialize();
    }
    
    //init initialization routine here, child class to override
    protected function preInitializeService():void
    {
        destination = "modelo";
      
    }
    

    /**
      * This method is a generated wrapper used to call the 'comboEmpresa' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function comboEmpresa() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("comboEmpresa");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'comboGrupoIndicesFinancieros' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function comboGrupoIndicesFinancieros() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("comboGrupoIndicesFinancieros");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'comboGrupos' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function comboGrupos() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("comboGrupos");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'comboItems' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function comboItems() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("comboItems");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'comboSubGrupos' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function comboSubGrupos() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("comboSubGrupos");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'countAgf' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function countAgf() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("countAgf");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'countEmpresa' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function countEmpresa() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("countEmpresa");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'countGrupoIndices' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function countGrupoIndices() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("countGrupoIndices");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'countGrupos' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function countGrupos() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("countGrupos");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'countIndicesFinancieros' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function countIndicesFinancieros() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("countIndicesFinancieros");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'countMonedas' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function countMonedas() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("countMonedas");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'countSubGrupos' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function countSubGrupos() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("countSubGrupos");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'deleteFormularioItem' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function deleteFormularioItem(empresa:Object, tagAgf:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("deleteFormularioItem");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(empresa,tagAgf) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'editar' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function editar(arrInf:Object, table:Object, where:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("editar");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arrInf,table,where) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'editarIndicesFinancieros' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function editarIndicesFinancieros(arrInf2:Object, table:Object, where:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("editarIndicesFinancieros");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arrInf2,table,where) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'editarSubGrupo' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function editarSubGrupo(arrInf:Object, table:Object, where:Object, param:Object, id:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("editarSubGrupo");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arrInf,table,where,param,id) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'grillaAgf' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function grillaAgf() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("grillaAgf");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'grillaEmpresa' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function grillaEmpresa() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("grillaEmpresa");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'grillaEmpresaDelSubGrupo' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function grillaEmpresaDelSubGrupo(cod:int) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("grillaEmpresaDelSubGrupo");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(cod) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'grillaEmpresaSinSubGrupo' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function grillaEmpresaSinSubGrupo(id:int) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("grillaEmpresaSinSubGrupo");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(id) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'grillaGrupoIndices' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function grillaGrupoIndices() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("grillaGrupoIndices");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'grillaGrupos' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function grillaGrupos() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("grillaGrupos");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'grillaIndicesFinancieros' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function grillaIndicesFinancieros() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("grillaIndicesFinancieros");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'grillaMonedas' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function grillaMonedas() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("grillaMonedas");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'grillaSubGrupos' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function grillaSubGrupos() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("grillaSubGrupos");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'grillaTodasEmpresa' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function grillaTodasEmpresa() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("grillaTodasEmpresa");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'grillaTodoIndicesFinancieros' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function grillaTodoIndicesFinancieros() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("grillaTodoIndicesFinancieros");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'grillaTodosGrupoIndices' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function grillaTodosGrupoIndices() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("grillaTodosGrupoIndices");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'grillaTodosGrupos' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function grillaTodosGrupos() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("grillaTodosGrupos");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'grillaTodoSubGrupos' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function grillaTodoSubGrupos() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("grillaTodoSubGrupos");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'insertar' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function insertar(arrInf:Object, table:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("insertar");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arrInf,table) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'insertarEmpresa' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function insertarEmpresa(arrInf:Object, table:Object, param:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("insertarEmpresa");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arrInf,table,param) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'insertarIndicesFinancieros' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function insertarIndicesFinancieros(arrInf:Object, tabla:Object, arrEmp:Object, tipo:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("insertarIndicesFinancieros");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arrInf,tabla,arrEmp,tipo) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'insertarItem' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function insertarItem(arrInf:Object, table:Object, empresa:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("insertarItem");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arrInf,table,empresa) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'insertarItemExistente' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function insertarItemExistente(empresa:Object, idTag:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("insertarItemExistente");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(empresa,idTag) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'insertarSubgrupo' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function insertarSubgrupo(arrInf:Object, table:Object, param:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("insertarSubgrupo");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arrInf,table,param) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'insertarSubgrupoEmpresa' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function insertarSubgrupoEmpresa(grupo:Object, empresas:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("insertarSubgrupoEmpresa");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(grupo,empresas) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'insertarValor' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function insertarValor(arrInf:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("insertarValor");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arrInf) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'periodos' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function periodos() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("periodos");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'subGrillaSubGrupos' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function subGrillaSubGrupos(tipo:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("subGrillaSubGrupos");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(tipo) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'valores' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function valores(principal:String, idEmpresas:String, idPeriodos:String, formulas:String, op:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("valores");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(principal,idEmpresas,idPeriodos,formulas,op) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'valores2' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function valores2(empresa:Object, periodo:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("valores2");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(empresa,periodo) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'insertarConfig' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function insertarConfig(arrInf:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("insertarConfig");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arrInf) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'indicesFinancieros' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function indicesFinancieros() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("indicesFinancieros");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'listEmpresa' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function listEmpresa(id:int) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("listEmpresa");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(id) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'listSubgrupo' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function listSubgrupo(id:int) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("listSubgrupo");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(id) ;
        return _internal_token;
    }
     
}

}
