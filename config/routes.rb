Rails.application.routes.draw do


get("/", { :controller => "lists", :action => "index"})

get("/lists", {:controller => "lists", :action => "index"})
get("/lists/new_form", {:controller => "lists", :action => "new_form"})
get("/create_list", { :controller => "lists", :action => "create_row"})
get("/lists/:id",       { :controller => "lists", :action => "show" })
get("lists/delete_list/:id", { :controller => "lists", :action => "destroy" })
get("/lists/edit/:id", { :controller => "lists", :action => "edit_form" })
get("/lists/update/:id", { :controller => "lists", :action => "update" })

get("/items", {:controller => "items", :action => "index"})
get("/items", {:controller => "items", :action => "index"})
get("/items/new_form", {:controller => "items", :action => "new_form"})
get("/create_item", { :controller => "items", :action => "create_row"})
get("/items/:id",       { :controller => "items", :action => "show" })
get("items/delete_item/:id", { :controller => "items", :action => "destroy" })
get("/items/edit/:id", { :controller => "items", :action => "edit_form" })
get("/items/update/:id", { :controller => "items", :action => "update" })


end
