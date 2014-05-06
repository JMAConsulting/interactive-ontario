{literal}
<script type="text/javascript">
cj(document).ready( function(){

cj("input[id='custom_18_Other - Please specify']").parent().append(cj('#editrow-custom_25'));
cj("input[id='custom_18_Television Producers']").parent().wrap("<div id='other-set-idm' style='margin-left:12px'></div>");
cj("input[id='custom_18_Broadcasters']").parent().wrap("<div id='other-set-idm2' style='margin-left:12px'></div>");
cj("input[id='custom_18_Magazines']").parent().wrap("<div id='other-set-idm3' style='margin-left:12px'></div>");
cj("input[id='custom_18_Other publishers / distributors']").parent().wrap("<div id='other-set-idm4' style='margin-left:12px'></div>");
cj("input[id='custom_18_Other - Please specify']").parent().wrap("<div id='other-set-idm5' style='margin-left:12px'></div>");

cj("input[id='custom_18_Provide new, complete products (e.g. to publishers)']").parent().wrap("<div id='other-set-idm6' style='margin-left:12px'></div>");
cj("input[id='custom_18_Provide parts of a product (e.g. music, programming/art/design)']").parent().wrap("<div id='other-set-idm7' style='margin-left:12px'></div>");
cj("input[id='custom_18_Supply tools used in the creation of product (e.g. middleware)']").parent().wrap("<div id='other-set-idm8' style='margin-left:12px'></div>");
cj("input[id='custom_18_Provide services to creators (e.g. analytics, testing)']").parent().wrap("<div id='other-set-idm9' style='margin-left:12px'></div>");
cj("input[id='custom_18_Create versions of existing products (e.g. porting)']").parent().wrap("<div id='other-set-idm10' style='margin-left:12px'></div>");


cj("input[id='custom_18_Other creative businesses (e.g. Film/TV producers) (please specify)']").parent().append(cj('#other-set-idm'));
cj("input[id='custom_18_Other creative businesses (e.g. Film/TV producers) (please specify)']").parent().append(cj('#other-set-idm2'));
cj("input[id='custom_18_Other creative businesses (e.g. Film/TV producers) (please specify)']").parent().append(cj('#other-set-idm3'));
cj("input[id='custom_18_Other creative businesses (e.g. Film/TV producers) (please specify)']").parent().append(cj('#other-set-idm4'));
cj("input[id='custom_18_Other creative businesses (e.g. Film/TV producers) (please specify)']").parent().append(cj('#other-set-idm5'));

cj("input[id='custom_18_Other IDM firms (please specify)']").parent().append(cj('#other-set-idm6'));
cj("input[id='custom_18_Other IDM firms (please specify)']").parent().append(cj('#other-set-idm7'));
cj("input[id='custom_18_Other IDM firms (please specify)']").parent().append(cj('#other-set-idm8'));
cj("input[id='custom_18_Other IDM firms (please specify)']").parent().append(cj('#other-set-idm9'));
cj("input[id='custom_18_Other IDM firms (please specify)']").parent().append(cj('#other-set-idm10'));

// Change events
cj("input[id='custom_18_Other IDM firms (please specify)']").change(function(){
    cj('#other-set-idm6').toggle(this.checked);
    cj('#other-set-idm7').toggle(this.checked);
    cj('#other-set-idm8').toggle(this.checked);
    cj('#other-set-idm9').toggle(this.checked);
    cj('#other-set-idm10').toggle(this.checked);
    if (!cj(this).is(':checked')) {
       cj("input[id='custom_18_Provide new, complete products (e.g. to publishers)']").removeAttr('checked');
       cj("input[id='custom_18_Provide parts of a product (e.g. music, programming/art/design)']").removeAttr('checked');
       cj("input[id='custom_18_Supply tools used in the creation of product (e.g. middleware)']").removeAttr('checked');
       cj("input[id='custom_18_Provide services to creators (e.g. analytics, testing)']").removeAttr('checked');
       cj("input[id='custom_18_Create versions of existing products (e.g. porting)']").removeAttr('checked');
    }
}).change();
cj("input[id='custom_18_Other creative businesses (e.g. Film/TV producers) (please specify)']").change(function(){
    cj('#other-set-idm').toggle(this.checked);
    cj('#other-set-idm2').toggle(this.checked);
    cj('#other-set-idm3').toggle(this.checked);
    cj('#other-set-idm4').toggle(this.checked);
    cj('#other-set-idm5').toggle(this.checked);
    cj('#editrow-custom_25').hide();
    if (!cj(this).is(':checked')) {
       cj("input[id='custom_18_Television Producers']").removeAttr('checked');
       cj("input[id='custom_18_Broadcasters']").removeAttr('checked');
       cj("input[id='custom_18_Magazines']").removeAttr('checked');
       cj("input[id='custom_18_Other publishers / distributors']").removeAttr('checked');
       cj("input[id='custom_18_Other - Please specify']").removeAttr('checked');
       cj('#custom_25').val('');
    }
}).change();
cj('#custom_3_Other').change(function(){
    cj('#editrow-custom_23').toggle(this.checked);
    if (!cj(this).is(':checked')) {
       cj('#custom_23').val('');
    }
}).change();
cj('#custom_4_Other').change(function(){
    cj('#editrow-custom_24').toggle(this.checked);
    if (!cj(this).is(':checked')) {
       cj('#custom_24').val('');
    }
}).change();
cj("input[id='custom_18_Other - Please specify']").change(function(){
    cj('#editrow-custom_25').toggle(this.checked);
    if (!cj(this).is(':checked')) {
       cj('#custom_25').val('');
    }
}).change();
cj('#editrow-custom_6 input:radio').each(function (index) {
cj(this).change(function(){
  if (cj(this).val() == 'Private company') {
    cj('#editrow-custom_13').show();
  }
  else {
   cj('#editrow-custom_13').hide();
   unselectRadio('custom_13', 'Edit'); 
  }
}).change();
});
cj("input[id='custom_20_Other - Please specify']").change(function(){
    cj('#editrow-custom_26').toggle(this.checked);
    if (!cj(this).is(':checked')) {
       cj('#custom_26').val('');
    }
}).change();
cj('#custom_15_Other').change(function(){
    cj('#editrow-custom_32').toggle(this.checked);
    if (!cj(this).is(':checked')) {
       cj('#custom_32').val('');
    }
}).change();

cj('#editrow-custom_20 table tr').each( function(key, value){
  if (value.firstChild.firstChild && value.firstChild.firstChild.nextSibling.nextSibling.innerHTML) {
    str = value.firstChild.firstChild.nextSibling.nextSibling.innerHTML;
    value.firstChild.firstChild.nextSibling.nextSibling.innerHTML = str.replace('Applied - ', '');
  }

  if (value.firstChild.nextSibling && value.firstChild.nextSibling.firstChild.nextSibling.nextSibling.innerHTML) {
    str = value.firstChild.nextSibling.firstChild.nextSibling.nextSibling.innerHTML;
    value.firstChild.nextSibling.firstChild.nextSibling.nextSibling.innerHTML = str.replace('Received - ', '');
  }
});

// On load
if (cj('#custom_3_Other').is(':checked'))
    cj('#editrow-custom_23').show();
else
    cj('#editrow-custom_23').hide();
if (cj('#custom_4_Other').is(':checked'))
    cj('#editrow-custom_24').show();
else
    cj('#editrow-custom_24').hide();
if (cj('#CIVICRM_QFID_Private_company_12').is(":checked") && cj('#CIVICRM_QFID_Private_company_12').val() == 'Private company')
    cj('#editrow-custom_13').show();
else
    cj('#editrow-custom_13').hide();
if (cj("input[id='custom_20_Other - Please specify']").is(':checked'))
    cj('#editrow-custom_26').show();
else
    cj('#editrow-custom_26').hide();
if (cj("input[id='custom_15_Other']").is(':checked'))
    cj('#editrow-custom_32').show();
else
    cj('#editrow-custom_32').hide();


});
</script>
{/literal}
