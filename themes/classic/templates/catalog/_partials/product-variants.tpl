{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
<div class="product-variants js-product-variants">
  {foreach from=$groups key=id_attribute_group item=group}
   {* {if !empty($group.attributes)}*}
    <div class="clearfix product-variants-item">
      <span class="control-label">{$group.name}{l s=': ' d='Shop.Theme.Catalog'}
          {*{foreach from=$group.attributes key=id_attribute item=group_attribute}
            {if $group_attribute.selected}{$group_attribute.name}{/if}
          {/foreach}*}
      </span>
      {if $group.group_type == 'select'}
        <select
          class="form-control form-control-select"
          id="group_{$id_attribute_group}"
          aria-label="{$group.name}"
          data-product-attribute="{$id_attribute_group}"
          name="group[{$id_attribute_group}]">
          {foreach from=$group.attributes key=id_attribute item=group_attribute}
            <option value="{$id_attribute}" title="{$group_attribute.name}"{if $group_attribute.selected} selected="selected"{/if}>{$group_attribute.name}</option>
          {/foreach}
        </select>
      {elseif $group.group_type == 'color'}
        <ul id="group_{$id_attribute_group}">
          {foreach from=$group.attributes key=id_attribute item=group_attribute}
            <li class="float-xs-left input-container">
              <label aria-label="{$group_attribute.name}">
                <input class="input-color" type="radio" data-product-attribute="{$id_attribute_group}" name="group[{$id_attribute_group}]" value="{$id_attribute}" title="{$group_attribute.name}"{if $group_attribute.selected} checked="checked"{/if}>
                <span
                  {if $group_attribute.texture}
                    class="color texture" style="background-image: url({$group_attribute.texture})"
                  {elseif $group_attribute.html_color_code}
                    class="color" style="background-color: {$group_attribute.html_color_code}"
                  {/if}
                ><span class="attribute-name sr-only">{$group_attribute.name}</span></span>
              </label>
            </li>
          {/foreach}
        </ul>
      {elseif $group.group_type == 'radio'}
        <ul id="group_{$id_attribute_group}">
          {foreach from=$group.attributes key=id_attribute item=group_attribute}
            <li class="input-container float-xs-left">
              <label>
                <input class="input-radio" type="radio" data-product-attribute="{$id_attribute_group}" name="group[{$id_attribute_group}]" value="{$id_attribute}" title="{$group_attribute.name}"{if $group_attribute.selected} checked="checked"{/if}>
                <span class="radio-label">{$group_attribute.name}</span>
              </label>
            </li>
          {/foreach}
        </ul>
      {/if}
    </div>
{*    {/if}*}
  {/foreach}
</div>