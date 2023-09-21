{*
* 2007-2020 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2020 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
{assign var='totalcats' value=$categories|count}


<section id="featured_categories" class="featured-categories clearfix">
  <h3 class="h3 section-title text-uppercase">Collection</h3>
    <a class="category-carousel-nav prev"><i class="material-icons">navigate_before</i></a>
    <ul class="clearfix">
	    {foreach from=$categories item=category}
	        <li class="m-2">
	            <a href="{$link->getCategoryLink($category)|escape:'html':'UTF-8'}" title="{$category->name|escape:'htmlall':'UTF-8'}">
                    <img class="category-img img-fluid" src="{$link->getCatImageLink($category->link_rewrite, $category->id, 'category_default')|escape:'html':'UTF-8'}" /></a>
				<h3 class="h3">
                    <a href="{$link->getCategoryLink($category)|escape:'html':'UTF-8'}" title="{$category->name|escape:'htmlall':'UTF-8'}">{$category->name|escape:'htmlall':'UTF-8'}</a></h3>
	            {if $display_description == '1'}<div class="category-description">{$category->description|strip_tags:'UTF-8'|truncate:120:'...'|escape:'html':'UTF-8'}</div>{/if}
	        </li>
	    {/foreach}
    </ul>
    <a class="category-carousel-nav next"><i class="material-icons">navigate_next</i></a>
</section>