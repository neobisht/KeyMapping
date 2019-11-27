namespace com.sap.mdm.keymap;


    entity BusinessSystem{
        key Id              : UUID;
        BusinessSystem      : String(60);       
    }

    entity ObjectTypeCode{
        key Id : UUID;
        ObjectTypeCode : String(10);
    }

    entity ObjectIdentifierTypeCode{
        key Id : UUID;
        ObjectTypeCode : UUID;
        ObjectIdentifierTypeCode : String(10);
        to_ObjectTypeCode : Association to ObjectTypeCode on to_ObjectTypeCode.Id = ObjectTypeCode;
    }
    
    entity KeyMapping{
    	key Id : UUID;
    	ObjectTypeCode : UUID;
    	OITC : UUID;
    	BusinessSystem : UUID;
    	KeyValue : String;
    	MappingGrpId : UUID;
    	to_ObjectTypeCode : Association to ObjectTypeCode on to_ObjectTypeCode.Id = ObjectTypeCode;
    	to_ObjectIdentifierTypeCode : Association to ObjectIdentifierTypeCode on to_ObjectIdentifierTypeCode.Id = OITC;
    	to_BusinessSystem : Association to BusinessSystem on to_BusinessSystem.Id = BusinessSystem;
    }

