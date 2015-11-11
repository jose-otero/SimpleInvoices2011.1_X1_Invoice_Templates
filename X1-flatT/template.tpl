<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
    <title>{$preference.pref_inv_wording|htmlsafe} {$LANG.number_short}: {$invoice.index_id|htmlsafe}</title>
</head>
<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
<!-- header -->
<tr>
    <td align="center">
        <table bgcolor="#f8f8f8" width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr align="center" valign="top">
                <td>
                    <table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="208" align="center" valign="top" bgcolor="#609d9d">
                                <table width="auto" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td height="50"></td>
                                    </tr>
                                    <!-- logo -->
                                    <tr>
                                        <td align="center" style="line-height:0px;">
                                            <img style="display:block;font-size:0px; border:0px; line-height:0px;" src="{$logo|urlsafe}" width="auto" height="auto" alt="logo" />
                                        </td>
                                    </tr>
                                    <!-- end logo -->

                                    <tr>
                                        <td height="40"></td>
                                    </tr>

                                    <!-- Compane Name -->
                                    <tr>
                                        <td style="font-family: 'Open Sans', Arial, sans-serif; font-size:16px; color:#FFFFFF; line-height:20px; font-weight: bold;">{$biller.name|htmlsafe}</td>
                                    </tr>
                                    <!-- end Compane Name -->

                                    <tr>
                                        <td height="5"></td>
                                    </tr>

                                    <!-- address -->
                                    <tr>
                                        <td style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#FFFFFF; line-height:18px;">
                                            {if $biller.street_address != null}
                                                {$biller.street_address|htmlsafe}<br/>
                                            {/if}
                                                {if $biller.street_address2 != null }
                                                    {if $biller.street_address == null }
                                                        {$biller.street_address2|htmlsafe}
                                                    {/if}
                                                {/if}
                                                    {if $biller.street_address != null }
                                                        {$biller.street_address2|htmlsafe}
                                                    {/if}
                                                {if $biller.country != null }
                                                    {$biller.state|htmlsafe}&nbsp;{$biller.zip_code|htmlsafe}
                                                {/if}<br/>
                                            {$biller.city|htmlsafe}&nbsp;{$biller.state|htmlsafe}, {$biller.zip_code|htmlsafe}
                                        </td>
                                    </tr>

                                    <!-- end address -->

                                    <tr>
                                        <td height="25"></td>
                                    </tr>
                                </table>
                            </td>
                            <td width="392" align="center" valign="top">
                                <table width="342" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td height="50"></td>
                                    </tr>

                                    <!-- title -->
                                    <tr>
                                        <td align="right" style="font-family: 'Open Sans', Arial, sans-serif; font-size:38px; color:#3b3b3b; line-height:26px;">{$preference.pref_inv_heading|htmlsafe}</td>
                                    </tr>
                                    <!-- end title -->
                                    <tr>
                                        <td height="2"></td>
                                    </tr>
                                    <tr>
                                        <td align="right"  style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px; ">{$invoice.date}&nbsp;&nbsp;|&nbsp;&nbsp;{$LANG.number_short}{$invoice.index_id}</td>
                                    </tr>
                                    <tr>
                                        <td height="2"></td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <table align="right" width="50" border="0" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td bgcolor="#ff646a" height="3" style="line-height:0px; font-size:0px;">&nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="5"></td>
                                    </tr>
                                    <!-- Compane Name -->
                                    <tr>
                                        <td align="right" style="font-family: 'Open Sans', Arial, sans-serif; font-size:16px; color:#3b3b3b; line-height:26px; font-weight: bold;">{$customer.name|htmlsafe}</td>
                                    </tr>
                                    <!-- end Compane Name -->

                                    <tr>
                                        {if $customer.attention != null }
                                        <td align="right" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#7f8c8d; line-height:20px;">{$customer.attention|htmlsafe}</td>
                                        {/if}
                                        <td height="5"></td>
                                    </tr>

                                    <!-- address -->
                                    <tr>
                                        <td align="right" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#7f8c8d; line-height:18px;">
                                            {if $customer.street_address != null}
                                                {$customer.street_address|htmlsafe}<br/>
                                            {/if}
                                            {if $customer.street_address2 != null}
                                                {if $customer.street_address == null}
                                                    {$customer.street_address2|htmlsafe}
                                                {/if}
                                                {if $customer.street_address != null}
                                                    {$customer.street_address2|htmlsafe}
                                                {/if}
                                            {/if}
                                            {$customer.city|htmlsafe}&nbsp;{$customer.state|htmlsafe}, {$customer.zip_code|htmlsafe}
                                            {if $customer.country != null}
                                                {$customer.country|htmlsafe}
                                            {/if}<br/>
                                            {if $customer.phone != null}
                                                {$customer.phone|htmlsafe}<br/>
                                            {/if}
                                            {if $customer.email != null}
                                                {$customer.email|htmlsafe}
                                            {/if}
                                        </td>
                                    </tr>
                                    <!-- end address -->

                                    <tr>
                                        <td height="25"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </td>
</tr>
<!-- end header -->

<!-- Invoice Type == 1 -->
{if $invoice.type_id == 1 }
    <tr>
    <td align="center">
        <table align="center" width="600" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td align="center" style="border-bottom:3px solid #bcbcbc;">
                    <table align="center" width="550" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td height="35"></td>
                        </tr>

                        <!-- header -->
                        <tr>
                            <td>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="524" align="left" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:20px; color:#3b3b3b; line-height:26px; text-transform:uppercase; font-weight: bold;">{$LANG.description}</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <!-- end header -->
                        <tr>
                            <td height="10"></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </td>
    {foreach from=$invoiceItems item= invoiceItem}

        <tr>
            <td align="center">
                <table width="600" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td align="center" style="border-bottom:1px solid #ecf0f1;">
                            <table width="550" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td height="35"></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="524" align="left" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px;">{$invoiceItem.description|outhtml}</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                {*<tr>*}
                                {*<td height="5"></td>*}
                                {*</tr>*}
                            </table>
                        </td>
                    </tr>
                    {*<tr>*}
                    {*<td height="5"></td>*}
                    {*</tr>*}

                </table>
            </td>
        </tr>
    {/foreach}
{/if}
<!-- Invoice Type == 1 -->

<!-- Invoice Type == 2 -->
{if $invoice.type_id == 2 }
    <tr>
        <td align="center">
            <table align="center" width="600" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td align="center" style="border-bottom:3px solid #bcbcbc;">
                        <table align="center" width="550" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td height="35"></td>
                            </tr>

                            <!-- header -->
                            <tr>
                                <td>
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td width="263" align="left" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px; text-transform:uppercase;">{$LANG.item}</td>
                                            <td width="87" align="right" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px; text-transform:uppercase;">{$LANG.Unit_Cost}</td>
                                            <td width="87" align="right" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px; text-transform:uppercase;">{$LANG.quantity_short}</td>
                                            <td width="87" align="right" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px; text-transform:uppercase;">{$LANG.Price}</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <!-- end header -->
                            <tr>
                                <td height="10"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <!-- end title -->
    <!-- list -->
    <tr>
        <td align="center">
            <table width="600" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td align="center" style="border-bottom:1px solid #ecf0f1;">
                        <table width="550" border="0" cellspacing="0" cellpadding="0">
                            {*<tr>*}
                            {*<td height="35"></td>*}
                            {*</tr>*}
                            <tr>
                                <td>
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        {foreach from=$invoiceItems item=invoiceItem}
                                            <tr>
                                                <td width="263" align="left" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px;">{$invoiceItem.product.description|htmlsafe}</td>
                                                <td width="87" align="right" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px;">{$preference.pref_currency_sign|htmlsafe}{$invoiceItem.unit_price|siLocal_number}</td>
                                                <td width="87" align="right" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px;">{$invoiceItem.quantity|siLocal_number_trim}</td>
                                                <td width="87" align="right" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px;">{$preference.pref_currency_sign|htmlsafe}{$invoiceItem.gross_total|siLocal_number}</td>
                                            </tr>
                                            {if $invoiceItem.description != null}
                                                <tr>
                                                    <td width="263" align="left" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:12px; color:#3b3b3b; line-height:26px;">{$LANG.description}: {$invoiceItem.description|htmlsafe}</td>
                                                </tr>
                                            {/if}
                                        {/foreach}
                                    </table>
                                </td>
                            </tr>
                            {*<tr>*}
                            {*<td height="5"></td>*}
                            {*</tr>*}
                        </table>
                    </td>
                </tr>
                {*<tr>*}
                {*<td height="5"></td>*}
                {*</tr>*}

            </table>
        </td>
    </tr>
{/if}
<!-- End Invoice Type == 2 -->

<!-- Invoice Type == 3 -->
{if $invoice.type_id == 3 }
    <tr>
        <td align="center">
            <table align="center" width="600" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td align="center" style="border-bottom:3px solid #bcbcbc;">
                        <table align="center" width="550" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td height="35"></td>
                            </tr>

                            <!-- header -->
                            <tr>
                                <td>
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td width="87" align="left" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px; text-transform:uppercase;">{$LANG.quantity_short}</td>
                                            <td width="263" align="left" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px; text-transform:uppercase;">{$LANG.item}</td>
                                            <td width="87" align="right" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px; text-transform:uppercase;">{$LANG.Unit_Cost}</td>
                                            <td width="87" align="right" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px; text-transform:uppercase;">{$LANG.Price}</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <!-- end header -->
                            <tr>
                                <td height="10"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <!-- end title -->
    <!-- list -->
    <tr>
        <td align="center">
            <table width="600" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td align="center" style="border-bottom:1px solid #ecf0f1;">
                        <table width="550" border="0" cellspacing="0" cellpadding="0">
                            {*<tr>*}
                            {*<td height="35"></td>*}
                            {*</tr>*}
                            <tr>
                                <td>
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        {foreach from=$invoiceItems item=invoiceItem}
                                            <tr>
                                                <td width="87" align="left" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px;">{$invoiceItem.quantity|siLocal_number}</td>
                                                <td width="437" align="left" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px;">{$invoiceItem.product.description|htmlsafe}</td>
                                            </tr>
                                            <tr>
                                                <td width="263" align="left" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px;"></td>
                                                <td width="87" align="left" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px;"></td>
                                                <td width="87" align="right" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px;">{$preference.pref_currency_sign}{$invoiceItem.unit_price|siLocal_number}</td>
                                                <td width="87" align="right" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px;">{$preference.pref_currency_sign}{$invoiceItem.total|siLocal_number}</td>
                                            </tr>
                                            {if $invoiceItem.description != null}
                                                <tr>
                                                    <td width="524" align="left" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:12px; color:#3b3b3b; line-height:26px;">{$LANG.description}: {$invoiceItem.description|htmlsafe}</td>
                                                </tr>
                                            {/if}
                                        {/foreach}
                                    </table>
                                </td>
                            </tr>
                            {*<tr>*}
                            {*<td height="5"></td>*}
                            {*</tr>*}
                        </table>
                    </td>
                </tr>
                {*<tr>*}
                {*<td height="5"></td>*}
                {*</tr>*}

            </table>
        </td>
    </tr>
{/if}
<!-- End Invoice Type == 3 -->

<!-- total -->
<tr>
    <td align="center">
        <table align="center" width="600" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td align="center" height="40" style="border-bottom:3px solid #3b3b3b;">
                    {*TAX LOOP AND SUBTOTAL*}
                    {if $invoice_number_of_taxes > 0}
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="263" align="right" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px; text-transform:uppercase;">&nbsp;</td>
                                {*<td width="87" align="right" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px; text-transform:uppercase;">&nbsp;</td>*}
                                <td width="174" align="right" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px; text-transform:uppercase;">{$LANG.sub_total}&nbsp;</td>
                                <td width="87" align="center" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px; text-transform:uppercase;">&nbsp;{if $invoice_number_of_taxes > 1}{/if}{$preference.pref_currency_sign|htmlsafe}{$invoice.gross|siLocal_number}{if $invoice_number_of_taxes > 1}{/if}</td>
                            </tr>
                        </table>
                    {/if}
                    {if $invoice_number_of_taxes > 1 }

                    {/if}
                    {section name=line start=0 loop=$invoice.tax_grouped step=1}
                        {if ($invoice.tax_grouped[line].tax_amount != "0") }
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="263" align="right" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px; text-transform:uppercase;">&nbsp;</td>
                                    {*<td width="87" align="right" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px; text-transform:uppercase;">&nbsp;</td>*}
                                    <td width="174" align="right" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px; text-transform:uppercase;">{$invoice.tax_grouped[line].tax_name|htmlsafe}&nbsp;</td>
                                    <td width="87" align="center" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px; text-transform:uppercase;">&nbsp;{$preference.pref_currency_sign|htmlsafe}{$invoice.tax_grouped[line].tax_amount|siLocal_number}</td>
                                </tr>
                            </table>
                        {/if}
                    {/section}
                    {if $invoice_number_of_taxes > 1}
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="263" align="right" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px; text-transform:uppercase;">&nbsp;</td>
                                {*<td width="87" align="right" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px; text-transform:uppercase;">&nbsp;</td>*}
                                <td width="174" align="right" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px; text-transform:uppercase;">{$LANG.tax_total}&nbsp;</td>
                                <td width="87" align="center" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px; text-transform:uppercase;">&nbsp;{$preference.pref_currency_sign|htmlsafe}{$invoice.total_tax|siLocal_number}</td>
                            </tr>
                        </table>
                    {/if}
                    {if $invoice_number_of_taxes > 1}{/if}
                    {*END TAX LOOP AND SUBTOTAL*}
                </td>
            </tr>
            <tr>
                <td height="15"></td>
            </tr>
            <tr>
                <td align="center">
                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="416" align="right" valign="top" bgcolor="#f8f8f8">
                                <table width="366" border="0" align="right" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td height="30"></td>
                                    </tr>
                                    {*<tr>*}
                                    {*<td align="right" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:12px; color:#3b3b3b; line-height:26px; text-transform:uppercase;line-height:24px;"></td>*}
                                    {*</tr>*}
                                    <tr>
                                        <td align="left" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:24px; color:#3b3b3b;text-transform:uppercase;font-weight: bold;">{$preference.pref_inv_wording|htmlsafe} {$LANG.amount}&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td height="15"></td>
                                    </tr>
                                </table>
                            </td>
                            <td width="184" align="center" valign="top" bgcolor="#e1e6e7">
                                <table width="134" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td height="10"></td>
                                    </tr>
                                    <tr>
                                        <td align="right" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:12px; color:#3b3b3b; line-height:26px; text-transform:uppercase;line-height:24px;">Total</td>
                                    </tr>
                                    <tr>
                                        <td align="right" valign="top" style="font-family: 'Open Sans', Arial, sans-serif; font-size:24px; color:#3b3b3b;  font-weight: bold;">{$preference.pref_currency_sign|htmlsafe}{$invoice.total|siLocal_number}</td>
                                    </tr>
                                    <tr>
                                        <td height="15"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="15"></td>
            </tr>
        </table>
    </td>
</tr>
<!-- end total -->

<!-- note -->
{if ($invoice.type_id == 2 && $invoice.note != "") || ($invoice.type_id == 3 && $invoice.note != "" )  }
    <tr>
        <td align="center">
            <table align="center" width="600" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td height="40"></td>
                </tr>

                <!-- title -->
                <tr>
                    <td style="font-family: 'Open Sans', Arial, sans-serif; font-size:16px; color:#3b3b3b; line-height:26px;  font-weight: bold; text-transform:uppercase">{$LANG.notes}:</td>
                </tr>
                <!-- end title -->
                <tr>
                    <td height="5"></td>
                </tr>

                <!-- content -->
                <tr>
                    <td style="font-family: 'Open Sans', Arial, sans-serif; font-size:10px; color:#7f8c8d; line-height:10px;">
                        {$invoice.note|outhtml}
                    </td>
                </tr>
                <!-- end content -->

                <tr>
                    <td height="15" style="border-bottom:3px solid #bcbcbc;"></td>
                </tr>
            </table>
        </td>
    </tr>
{/if}
<!-- end note -->


<!-- footer -->
<tr>
    <td align="center">
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td height="15" align="center" valign="top" style="border-bottom:10px solid #ecf0f1;">
                    <table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td height="25"></td>
                        </tr>
                        <tr>
                            <td align="center" valign="top">
                                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="11" align="center" style="line-height:0px;">
                                            {*<img style="display:block;font-size:0px; border:0px; line-height:0px;" src="templates/invoices/X1-flatT/img/phone.png" width="11" height="11" alt="img" />*}
                                        </td>
                                        <td width="10"></td>
                                        {*<td class="footer-link" width="120" align="left" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px;">{$biller.phone|htmlsafe}</td>*}
                                        <td width="20"></td>
                                        <td width="11" align="center" style="line-height:0px;">
                                            {*<img style="display:block;font-size:0px; border:0px; line-height:0px;" src="templates/invoices/X1-flatT/img/mail.png" width="14" height="11" alt="img" />*}
                                        </td>
                                        <td width="10"></td>
                                        {*<td class="footer-link" width="120" align="left" style="font-family: 'Open Sans', Arial, sans-serif; font-size:13px; color:#3b3b3b; line-height:26px;">{$biller.email|htmlsafe}</td>*}
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td height="25"></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </td>
</tr>
<!-- end footer -->

</table>
</body>
</html>