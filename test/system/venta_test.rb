require "application_system_test_case"

class VentaTest < ApplicationSystemTestCase
  setup do
    @ventum = venta(:one)
  end

  test "visiting the index" do
    visit venta_url
    assert_selector "h1", text: "Venta"
  end

  test "should create ventum" do
    visit venta_url
    click_on "New ventum"

    fill_in "Article", with: @ventum.article_id
    fill_in "Date", with: @ventum.date
    fill_in "Sale price", with: @ventum.sale_price
    click_on "Create Ventum"

    assert_text "Ventum was successfully created"
    click_on "Back"
  end

  test "should update Ventum" do
    visit ventum_url(@ventum)
    click_on "Edit this ventum", match: :first

    fill_in "Article", with: @ventum.article_id
    fill_in "Date", with: @ventum.date
    fill_in "Sale price", with: @ventum.sale_price
    click_on "Update Ventum"

    assert_text "Ventum was successfully updated"
    click_on "Back"
  end

  test "should destroy Ventum" do
    visit ventum_url(@ventum)
    click_on "Destroy this ventum", match: :first

    assert_text "Ventum was successfully destroyed"
  end
end
