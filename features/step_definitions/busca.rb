Dado("que esteja na página inicial") do 
  @home_page.load

end

Quando("buscar pelo produto {string}") do |query|
  @home_page.search(query)

end

Então("devem ser retornados produtos") do
  expect(@search_page.products.first).to have_image
  expect(@search_page.products.first).to have_name
  expect(@search_page.products.first.name.text).to have_content 'shirt'
  sleep 03

  page.driver.quit

end

Então("deve ser retornada a mensagem {string}") do |msg|
    expect(input.class="alert alert-warning").to eql ("No results were found for your search")

  page.driver.quit

end
