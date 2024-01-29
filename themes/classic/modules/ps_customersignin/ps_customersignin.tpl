<div id="_desktop_user_info">
    <div class="user-info">
        {if $logged}
                <a class="account" href="{$urls.pages.my_account}" title="{l s='View my customer account' d='Shop.Theme.Customeraccount'}" rel="nofollow" style="margin-top: 3px;">
                    <span class="hidden-sm-down text-uppercase">{$customerName}</span>
                </a>
                <a class="logout hidden-sm-down text-uppercase" href="{$urls.actions.logout}" rel="nofollow" style="margin-top: 3px;">
                    <span class="material-icons">exit_to_app</span>
                </a>
        {else}
            <a href="{$urls.pages.authentication}?back={$urls.current_url|urlencode}" class="" title="{l s='Log in to your customer account' d='Shop.Theme.Customeraccount'}" rel="nofollow">
                <img src="/themes/classic/_dev/img/user-128.svg" alt="" width="38" style="padding:6px 8px 8px ">
            </a>
        {/if}
    </div>
</div>