User.create!([
  {name: "Luna", email: "luna@example.com", password_digest: "$2a$12$de7yMXmpwEbvIDvmbqOQo.FL4s9xmXHbuB3dw.l8xRwoGmzRigNV2"},
  {name: "Amanda", email: "amanda@example.com", password_digest: "$2a$12$8Hy19ojah17QkP/ey1RmOuapTwkGvg91u83VD7p3yu5anQdfCNIEa"}
])

Recipe.create!([
  {title: "Cloud Cakes", chef: "Dinara Kasko", ingredients: "Clouds, cake", directions: "Put clouds and cake together, bake", image_url: "https://www.sogoodmagazine.com/wp-content/uploads/2021/03/cloud-kasko-zoom.jpg", user_id: 1, prep_time: 80},
  {title: "Raw Eggs", chef: "Laura Parsley", ingredients: "Chicken", directions: "Squeeze the chicken", image_url: "http://swansonhealthcenter.com/wp-content/uploads/2011/07/Egg.jpg", user_id: 1, prep_time: 1},
  {title: "Empty Sandwich", chef: "Jay Wengrow", ingredients: "Two slices of bread", directions: "Place slices of bread next to each other.", image_url: "http://www.phoenixisstrategic.com/wp-content/uploads/2013/05/blog-empty-sandwich.jpg", user_id: 1, prep_time: 72},
  {title: "Licorice", chef: "Jean Claude Packsone", ingredients: "Licorice", directions: "Buy licorice from store.", image_url: "http://cdn2.bigcommerce.com/server6200/aa739/product_images/uploaded_images/red-licorice.png?t=1398725710", user_id: 1, prep_time: 120},
  {title: "Mud Pie", chef: "Mark Richardson", ingredients: "Flour, water, mud.", directions: "Mix flour and water, add mud, bake at 350 degrees for 1 hour.", image_url: "http://cdn-image.myrecipes.com/sites/default/files/styles/300x300/public/image/recipes/sl/05/12/mocha-mud-pie-sl-257949-x.jpg?itok=_ChocANl", user_id: 1, prep_time: 84},
  {title: "Pizza", chef: "The Swedish Chef", ingredients: "Flour, water, pepperoni, cheese", directions: "Mix flour and water, add cheese and pepperoni, shape as a heart, bake in oven on self-clean mode.", image_url: "http://twopizzapals.weebly.com/uploads/2/3/6/0/23602608/1338890_orig.jpg", user_id: 1, prep_time: 455},
  {title: "Corn on the cob", chef: "Cornelius Vanderbilt", ingredients: "Corn, cob", directions: "Place corn on the cob, grill for 20 minutes, enjoy!", image_url: "http://www.scientificamerican.com/sciam/cache/file/59C0122F-509C-4FEE-99A67FC20C50CEF1.jpg", user_id: 1, prep_time: 22}
])