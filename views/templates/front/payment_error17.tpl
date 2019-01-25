{*
 * Copyright © 2018 Tomas Hubik <hubik.tomas@gmail.com>
 *
 * NOTICE OF LICENSE
 *
 * This file is part of Confirmo PrestaShop module.
 *
 * Confirmo PrestaShop module is free software: you can redistribute it
 * and/or modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation, either version 3 of the License,
 * or (at your option) any later version.
 *
 * Confirmo PrestaShop module is distributed in the hope that it will be
 * useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
 * Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade this Confirmo
 * module to newer versions in the future. If you wish to customize this module
 * for your needs please refer to http://www.prestashop.com for more information.
 *
 *  @author Tomas Hubik <hubik.tomas@gmail.com>
 *  @copyright  2018 Tomas Hubik
 *  @license    https://www.gnu.org/licenses/gpl-3.0.en.html  GNU General Public License (GPLv3)
 *}

{extends file='page.tpl'}

{block name="page_content"}
  <h1 class="page-heading">{$heading}</h1>

  <div class="alert alert-danger">
    {l s='An error occurred while attempting to create a new BitcoinPay Beta payment.' mod='confirmo'}
  </div>

  <p>
    {{l s='The raw response data is displayed below. Please %sforward this%s to the site administrator so that they may rectify the issue.' mod='confirmo'}|sprintf:"<a href=\"{$link->getPageLink('contact')}\" target=\"_blank\">":'</a>' nofilter}
  </p>
  <pre>{$error}</pre>

  <p class="cart_navigation clearfix" id="cart_navigation">
    <a href="{$link->getPageLink('order', true, NULL, 'step=3')|escape:'html':'UTF-8'}" class="button-exclusive btn btn-default">
      <i class="icon-chevron-left"></i> {l s='Back to payment methods' mod='confirmo'}
    </a>
  </p>
{/block}