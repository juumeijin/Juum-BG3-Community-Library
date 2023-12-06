--- Builds and returns a string identifying a mod's Name and Author from a given Guid.
---@param guid string
---@return string
function Utils.RetrieveModHandleAndAuthor(guid)
  Utils.Info("Entering Utils.RetrieveModHandleAndAuthor")
  if guid and Ext.Mod.IsModLoaded(guid) then
    return Utils.RetrieveModHandle(guid) .. " (" .. Utils.RetrieveModAuthor(guid) .. ")"
  elseif guid then
    return guid
  else
    return Strings.WARN_GUID_NOT_PRESENT
  end
end

--- Builds and returns a string identifying a mod's Name from a given Guid.
---@param guid string
---@return string
function Utils.RetrieveModHandle(guid)
  if guid and Ext.Mod.IsLoaded(guid) then
    return Ext.Mod.GetMod(guid).Info.Name
  else
    return Strings.WARN_GUID_NOT_PRESENT
  end
end

--- Builds and returns a string identifying a mod's Author from a given Guid.
---@param guid string
---@return string
function Utils.RetrieveModAuthor(guid)
  if guid and Ext.Mod.IsLoaded(guid) then
    return Ext.Mod.GetMod(guid).Info.Author
  else
    return Strings.WARN_GUID_NOT_PRESENT
  end
end