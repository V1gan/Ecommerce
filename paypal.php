<h1>Sales through online shop SEEU</h1>


<?php 
$total=110;
$ordernr=24;
?>
<h3>Total order: <?php echo $total; ?> usd</h3>


<form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">


  <!-- Saved buttons are identified by their button IDs -->
   <input type="hidden" name="business" value="adrian.besimi-facilitator@gmail.com">

  <!-- Specify a Buy Now button. -->
  <input type="hidden" name="cmd" value="_xclick">

  <!-- Specify details about the item that buyers will purchase. -->
  <input type="hidden" name="item_name" value="Order #<?php echo $ordernr; ?>">
  <input type="hidden" name="amount" value="<?php echo $total; ?>">
  <input type="hidden" name="currency_code" value="USD">
  

  <input type="hidden" name="notify_url" value="http://localhost/pay/paypal.php?OrderID=24&orderOK=true">
  <!-- Saved buttons display an appropriate button image. -->
  <input type="image" name="submit"
    src="https://www.paypalobjects.com/en_US/i/btn/btn_buynow_LG.gif"
    alt="PayPal pay">
  <img alt="" width="1" height="1"
    src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" >

</form>