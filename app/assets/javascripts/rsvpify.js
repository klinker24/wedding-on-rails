function EmbedForm() {
    this.iframe = null;
    this.iframe = null;
    this.currentProtocol = 'http';
    this.startScroll = false;
    this.init = function() {
        this.createForm();
    };
    this.createForm = function() {
        var ie_check = !!window.ActiveXObject;
        var iframe = "<iframe id=\"RSVPifyIFrame\" style=\"width:100%; border:none;\" onload=\"window.parent.scrollTo(0,0)\" allowtransparency=\"true\" src=\"" + this.currentProtocol + "://hannah-lucas-wedding.app.rsvpify.com/app/?embed=1&js=1\" frameborder=\"0\" scrolling=\"no\"></iframe>";
        document.write(iframe);
        this.iframe = document.getElementById("RSVPifyIFrame");
        if (ie_check === true) {
            try {
                var iframe = this.iframe;
                var doc = iframe.contentDocument ? iframe.contentDocument : (iframe.contentWindow.document || iframe.document);
                doc.open();
                doc.write('');
            } catch (err) {
                this.iframe.src = 'javascript:void((function(){document.open();document.domain=\'' + this.baseUrl() + '\';document.close();})())';
            }
        } else {
            var innerDocument = document.getElementById('RSVPifyIFrame').contentWindow.document;
            var spinnerImage = innerDocument.createElement('IMG');
            var container = innerDocument.createElement('P');
            container.style['text-align'] = 'center';
            spinnerImage.src = this.currentProtocol + '://app.rsvpify.com/images/preloader.GIF';
            container.appendChild(spinnerImage);
            innerDocument.body.appendChild(container);
        }
    };
    this.baseUrl = function() {
        var pathArray = location.href.split('/');
        var site_host = pathArray[2];
        return site_host;
    };
    this.init();
}
var pageForm = new EmbedForm();
document.getElementById("RSVPifyIFrame").onload = function() {
    if (pageForm.startScroll) {
        document.getElementById("RSVPifyIFrame").scrollIntoView(true);
    }
    pageForm.startScroll = true;

    document.getElementsByClassName('sticky_footer')[0].style.visibility='hidden';
};