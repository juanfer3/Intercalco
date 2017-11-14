$(".add").on "click", (event) ->
    $.ajax
       url: "https://intercalco-web-app-juanfer3.c9users.io/views/tintas/_formula_tinta_fields.html.erb"
       dataType: "html"
       error: (jqXHR, textStatus, errorThrown) ->
         $('body').append "AJAX Error: #{textStatus}"
       success: (data, textStatus, jqXHR) ->
         $('body').append "Successful AJAX call: #{data}"