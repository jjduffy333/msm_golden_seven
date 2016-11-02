Rails.application.routes.draw do

  #Routes to CREATE new DIRECTORS

  get('/directors/new_form', {:controller => 'directors', :action => 'new_form'})
  get('/create_director', {:controller => 'directors', :action => 'create_row'})

  #Routes to READ for DIRECTORS

  get('/directors', {:controller => 'directors', :action => 'index'})
  get('/directors/:id', {:controller => 'directors', :action => 'show'})


end
