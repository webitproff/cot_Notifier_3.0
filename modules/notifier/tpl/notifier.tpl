<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-blur-silver uk-border-btm-primary">
  <div class="uk-container uk-container-large uk-padding-small uk-link-text">
    <h2>{PHP.L.YourSubscriptions}</h2>
  </div>
</div>
<div class="uk-section uk-background-muted uk-padding-y-10" uk-height-viewport="expand: true" uk-scrollspy="target: .uk-card; offset: 100">
  <div class="uk-container uk-container-large uk-padding-large-bottom uk-padding-xs">
    <div class="uk-card uk-background-default uk-card-body uk-card-small uk-border-rounded shadow-scmtdlight uk-margin-medium-bottom">
      <h3>{PHP.L.SubscriptionSettings}</h3>
      <form action="{SETTINGS_FORM_URL}" method="POST">
        <table>
          <thead>
            <tr>
              <th>{PHP.L.NotifyMe}</th>
              <th>{PHP.L.Frequency}</th>
            </tr>
          </thead>
          <tbody>
            <!-- BEGIN: AREA -->
            <tr>
              <td>{SETTINGS_FORM_AREA_DESC}:</td>
              <td>{SETTINGS_FORM_AREA_FREQUENCY}</td>
            </tr>
            <!-- END: AREA -->
          </tbody>
        </table>
        <p>{SETTINGS_FORM_AUTOSUBSCRIBE}</p>
        <p>{SETTINGS_FORM_HTMLEMAIL}</p>
        <button type="submit" class="uk-button uk-button-large uk-button-gry-invert">{PHP.L.Submit}</button>
      </form>
    </div>
  </div>
  <!-- BEGIN: SUBSCRIPTIONS -->
  <div class="uk-container uk-container-large uk-padding-large-bottom uk-padding-xs">
    <div class="uk-overflow-auto">
      <table class="uk-table uk-table-responsive uk-table-divider">
        <thead>
          <tr>
            <th>{PHP.L.Description}</th>
            <th>{PHP.L.Type}</th>
            <th>{PHP.L.SubscribedSince}</th>
            <th>{PHP.L.LastNotification}</th>
            <th>{PHP.L.Action}</th>
          </tr>
        </thead>
        <tbody>
          <!-- BEGIN: ROW -->
          <tr>
            <td>{SUB_DESC}</td>
            <td>{SUB_AREA}</td>
            <td>{SUB_CREATED|cot_date('date_full',$this)}</td>
            <td>
              <!-- IF {SUB_LASTSENT} -->{SUB_LASTSENT|cot_date('datetime_medium',$this)}
              <!-- ELSE -->{PHP.L.Never}
              <!-- ENDIF -->
            </td>
            <td>
              <a class="uk-button uk-button-small uk-button-default" href="{SUB_ID|cot_url('notifier', 'a=unsubscribe&id=$this')}">{PHP.L.Unsubscribe}</a>
            </td>
          </tr>
          <!-- END: ROW -->
        </tbody>
      </table>
    </div>
  </div>
  <!-- END: SUBSCRIPTIONS -->
  <!-- BEGIN: NOSUBSCRIPTIONS -->
  <div class="uk-container uk-container-large uk-padding-large-bottom uk-padding-xs">
    <p>{PHP.L.NoSubscriptions}</p>
  </div>
  <!-- END: NOSUBSCRIPTIONS -->
</div>
<!-- END: MAIN -->