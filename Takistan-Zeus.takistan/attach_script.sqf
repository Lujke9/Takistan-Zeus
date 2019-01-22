_obj = _this select 0;

_nearestVan = getPos _obj nearestObject "I_G_Van_02_transport_F";

if (not isNull _nearestVan) then
{
    _obj attachTo [_nearestVan, [0, -2, 0]]; // Attach this thing to the van
    _obj setDir 180; // Turn this thing around 180deg

    removeAllActions _obj; // Remove the 'Attach to van' action and any others
}
else
{
    hint "No van in range";
};
