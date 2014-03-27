{extends file="assets/helpview/_Layout.tpl"}

{block name="head"}
	<title>Urloping - Nagrody</title>
{/block}

{block name="content"}

            <!-- pierwszy box -->
            <div class="row">
                <div class="col-md-12 margin-top-20">
                	<!-- miasta -->
                    <div class="panel panel-default panel-green" id="polecaneObiekty">
                      <div class="panel-heading"><i class="fa fa-user"></i> Moje dane</div>
                      <div class="panel-body padding-10">

{include file="assets/helpview/messages.tpl" messages=$messages}

                      	<div class="row margin-top-20">
                        	<div class="col-md-2"></div>
                        	<div class="col-md-8">
					              <table id="basketBN" class="table table-striped">
					              <thead>
					                <tr>
					                  <th>NAZWA</th>
					                  <th>SZTUK</th>
					                  <th>CENA</th>
					                  <th></th>
					                </tr>
					              </thead>
					              <tbody>
					              {if $basket_item}
					              {foreach from=$basket_item item=item name=items}
					                <tr>
					                  <td>{$item.name}</td>
					                  <td>
					                    <a href="#basketBN" data-item="{$item.rowid}" data-qty="{$item.qty}" class="qtyAdd"><i class="fa fa-plus-circle"></i></a>
					                    {$item.qty}
					                    <a href="#basketBN" data-item="{$item.rowid}" data-qty="{$item.qty}" class="qtyRemove"><i class="fa fa-minus-circle"></i></a>
					                  </td>
					                  <td>{$item.subtotal}</td>
					                  <td><a href="#basketBN" data-item="{$item.rowid}" class="coquette16-delete"><i class="fa fa-trash-o"></i></a></td>
					                </tr>
					              {/foreach}
					              {else}
					                <tr>
					                  <td colspan="4" style="text-align:center;">Koszyk jest pusty</td>
					                </tr>
					              {/if}
					              </tbody>
					            </table>

					            {if $basket_item}
					            <div class="row">
					                <div class="col-md-12">
					                    <p class="text-right"><span class="label label-info">Razem: {$basket_total} pkt </span></p>
					                    <p class="text-right">Łącznie: {$basket_items} szt.</p>
					                </div>
					            </div>
					            {/if}
                        	</div>
                        	<div class="col-md-2"></div>
                      	</div>

                      </div>
                    </div>
                    <!-- ./miasta -->
                </div>
            </div>
            <!-- ./pierwszy box-->

{/block}