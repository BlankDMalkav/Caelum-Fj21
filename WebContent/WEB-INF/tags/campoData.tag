<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="id" required="true"%>
<input id="${id}" name="${id}" />
<script>
	$("#${id}").datepicker({
		changeMonth : true,
		changeYear : true,
		yearRange : "1950:1996"
	});
</script>
