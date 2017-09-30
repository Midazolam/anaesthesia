RailsAdmin.config do |config|


  ## == Authenticate admin user, everyone else gets redirected ==
  config.authenticate_with do
      redirect_to main_app.root_path unless warden.user.email == 'johnoshea@rcsi.ie'
  end


  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
