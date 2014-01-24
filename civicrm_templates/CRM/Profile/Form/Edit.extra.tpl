{literal}
<script type="text/javascript">
cj(document).ready( function(){

cj("input[id='custom_18_Other IDM firms (please specify)']").parent().append(cj('#editrow-custom_33'));
cj("input[id='custom_18_Other creative businesses (e.g. Film/TV producers) (please specify)']").parent().append(cj('#editrow-custom_34'));
cj("input[id='custom_18_Other creative businesses (e.g. Film/TV producers) (please specify)']").parent().append(cj('#editrow-custom_25'));

// Change events
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
cj("input[id='custom_18_Other IDM firms (please specify)']").change(function(){
    cj('#editrow-custom_33').toggle(this.checked);
    if (!cj(this).is(':checked')) {
       cj('#custom_33').val('');
    }
}).change();
cj("input[id='custom_18_Other creative businesses (e.g. Film/TV producers) (please specify)']").change(function(){
    cj('#editrow-custom_34').toggle(this.checked);
    if (!cj(this).is(':checked')) {
       cj('#custom_34').val('');
    }
}).change();
cj('#custom_34').change(function(){
  if (cj(this).val() == 5) {
     cj('#editrow-custom_25').show();
  }
else {
 cj('#editrow-custom_25').hide();
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
if (cj("input[id='custom_18_Other IDM firms (please specify)']").is(':checked'))
    cj('#editrow-custom_33').show();
else
    cj('#editrow-custom_33').hide();
if (cj("input[id='custom_18_Other creative businesses (e.g. Film/TV producers) (please specify)']").is(':checked'))
    cj('#editrow-custom_34').show();
else
    cj('#editrow-custom_34').hide();
if (cj('#custom_34').val() == 5)
    cj('#editrow-custom_25').show();
else
    cj('#editrow-custom_25').hide();
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