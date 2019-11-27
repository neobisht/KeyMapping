using com.sap.mdm.keymap from '../db/data-model';
service KeyMapService {

  @Capabilities: { Insertable:true , Updatable:true, Deletable:false }
  entity BusinessSystem as projection on keymap.BusinessSystem;
  
  @Capabilities: { Insertable:true , Updatable:true, Deletable:false } 
  entity ObjectTypeCode as projection on keymap.ObjectTypeCode;
  
  @Capabilities: { Insertable:true , Updatable:true, Deletable:false } 
  entity ObjectIdentifierTypeCode as projection on keymap.ObjectIdentifierTypeCode;
  
  @Capabilities: { Insertable:true , Updatable:true, Deletable:false } 
  entity KeyMapping as projection on keymap.KeyMapping;
}