<!-- fizaboun@uth.gr -->

<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <title>fizaboun/3w lesson</title>
    <meta name="description" content="fizaboun/ZaaBI_AlonSo">
    <link rel="stylesheet" href="lib/c/styles.css">
    <meta property="og:site_name" content="fizaboun/3w lesson"/>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){$('#swap').click(function(){s1=$('#to').val();s0=$('#from').val();$('#to').val(s0);$('#from').val(s1);		});
		});
</script>
</head>
<body>

    <%@ page import="java.util.*" %>
    
    <div class="background"></div>
    
	<div id="heading">

		<%
		Double currency = (Double)request.getAttribute("currency");
		String from = (String)request.getAttribute("from");
		String from2 = (String)request.getAttribute("from2");
		String from3 = (String)request.getAttribute("from3");
		String sessionVal = (String)request.getAttribute("sessionVal");
		Double totalVal = (Double)session.getAttribute("totalVal");

		
		if( currency == null )
		{
			out.print("Fizaboun live shopping basket, "+totalVal);
		}else{
			//out.println(""+value);
			//out.println(""+from);
			out.println(""+sessionVal);
			out.println(" ,total equals to "+currency);
			//out.println(""+to);

		}

		%>
	</div>
	
<div id="currencyBox">
<form method="POST" action="CurrencyConverter.do">
	<div class="data">
        <label for="from">Amount</label>
        <p><input type="text" name="amount" id="amount" value="<%if(from == null){out.print("1");}else{out.println(from);}%>"/></p>
        <p>&amp;</p>
        <p><input type="text" name="amount2" id="amount2" value="<%if(from2 == null){out.print("1");}else{out.println(from2);}%>"/></p>
        <p>&amp;</p>
        <p><input type="text" name="amount3" id="amount3" value="<%if(from3 == null){out.print("1");}else{out.println(from3);}%>"/></p>
        
    </div>
    <div class="data">
        <label for="fromCurrency">Items</label>
        <p><font size="5">Cafe</font></p>
        <p><font size="5">Sugar</font></p>
        <p><font size="5">Water</font></p>
        </div>
    
    <div class="data">
        <label for="to">Price</label>
        <p><font size="5">18.50</font></p>
        <p><font size="5">06.95</font></p>
        <p><font size="5">01.29</font></p>
        </div>
    <div class="data">
    	<input type="submit" name="submit" id="submit" value="Show me the total!">
    	<!--<input type="button" name="swap" id="swap" value="Swap values">-->
    </div>
</form>
<!--<form method="GET" action="CodeGrabber.zip"><input type="submit" value="Grab the code!"></form>
<form method="GET" action="ReportGrabber.do"><input type="submit" value="On line report!"></form>-->

</div>
<p>Μετά από κάθε show me total μπαίνει ένα κενό πίσω από κάθε αριθμό οπότε για να ξανα-υπολογίσεις το νέο total πρέπει να σβήσεις αυτά τα κενά αλλιώς πετάει σφάλμα.</p>
</body>
</html>

