<link rel="stylesheet" type="text/css" href="res/css/purecss.css">


<div>
    <ul style="list-style-type: none">
        <li class=" "><a class="botao" href="<%= request.getContextPath() %>/index.jsp">home</a></li>
        <li class=" "><a class="botao" href="<%= request.getContextPath() %>/vampiro.jsp">monte a ficha</a></li>
        <li class=" "><a class="botao" href="<%= request.getContextPath() %>/jogador/cadastrar.jsp">cadastre-se</a></li>
        <li class=" "><a class="botao" href="#login-box" id='login-window'>Login</a></li>
    </ul>
</div>

<%@include file="login_modal.jsp" %>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
<script>
    $(document).ready(function() {
        $('#login-window').click(function() {

            //Getting the variable's value from a link 
            var loginBox = $(this).attr('href');

            //Fade in the Popup
            $(loginBox).fadeIn(300);

            //Set the center alignment padding + border see css style
            var popMargTop = ($(loginBox).height() + 24) / 2;
            var popMargLeft = ($(loginBox).width() + 24) / 2;

            $(loginBox).css({
                'margin-top': -popMargTop,
                'margin-left': -popMargLeft
            });

            // Add the mask to body
            $('body').append('<div id="mask"></div>');
            $('#mask').fadeIn(300);

            return false;
        });

// When clicking on the button close or the mask layer the popup closed
        $('a.close, #mask').live('click', function() {
            $('#mask , .login-popup').fadeOut(300, function() {
                $('#mask').remove();
            });
            return false;
        });
    });
</script>

