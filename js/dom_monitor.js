// Mutation observer catches when the DOM changes.
var MutationObserver = window.MutationObserver || window.WebKitMutationObserver;
var myObserver = new MutationObserver (mutationHandler);

// Catch changes to the "main" div and all children
var obsConfig = { childList: true, characterData: true, attributes: true, subtree: true };
myObserver.observe ($("#main")[0], obsConfig);

function mutationHandler (mutationRecords) {
    // Add the click handler for the media boxes.
    // http://materializecss.com/media.html
    $('.materialboxed').materialbox();
}
