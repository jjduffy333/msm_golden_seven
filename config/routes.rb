Rails.application.routes.draw do

  ##Directors

  #Routes to CREATE new DIRECTORS

  get('/directors/new_form', {:controller => 'directors', :action => 'new_form'})
  get('/create_director', {:controller => 'directors', :action => 'create_row'})

  #Routes to READ for DIRECTORS

  get('/directors', {:controller => 'directors', :action => 'index'})
  get('/directors/:id', {:controller => 'directors', :action => 'show'})

  #Routes to UPDATE for DIRECTORS

  get('/directors/:id/edit_form', {:controller => 'directors', :action => 'edit_form'})
  get('/update_director/:id', {:controller => 'directors', :action => 'update_row'})

  #Routes to DELETE existing DIRECTORS
  get('/delete_director/:id', { :controller => 'directors', :action => 'destroy'})

  ##Actors

  #Routes to CREATE new Actors

  get('/actors/new_form', {:controller => 'actors', :action => 'new_form'})
  get('/create_actor', {:controller => 'actors', :action => 'create_actor'})

  #Routes to READ for Actors

  get('/actors', {:controller => 'actors', :action => 'index'})
  get('/actors/:id', {:controller => 'actors', :action => 'show'})

  #Routes to Update existing Actors

  get('/actor/:id/edit_form', {:controller => 'actors', :action => 'edit_form'})
  get('/update_actor/:id', {:controller => 'actors', :action => 'update_actor'})

  #Routes to Delete existing Actors
  get('/delete_actor/:id', {:controller => 'actors', :action => 'destroy'})

end
