// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require typeahead.bundle
//= require books
//= require_addcart
//= require_tree .


var ready;
ready = function() {
    console.log('varuthe');
    var engine = new Bloodhound({
        datumTokenizer: function(d) {
            console.log(d);
            return Bloodhound.tokenizers.whitespace(d.title);
        },
        queryTokenizer: Bloodhound.tokenizers.whitespace,
        remote: {
            url: '../search/autocomplete?query=%QUERY',
	    wildcard: '%QUERY'
        }
    });

    var promise = engine.initialize();

    promise
       // .done(function() { console.log('success })
       // .fail(function() { console.log('err });

    $('.typeahead').typeahead(null, {
        name: 'engine',
        displayKey: 'title',
        source: engine.ttAdapter()
    });
    console.log('varleye');
}

$(document).ready(ready);
$(document).on('page:load', ready);
