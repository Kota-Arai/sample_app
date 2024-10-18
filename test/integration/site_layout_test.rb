require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest

  # Contactページのタイトルをテスト
  test "contact page title" do
    get contact_path  # contact_pathにアクセス
    assert_response :success  # 正常にページが表示されるか確認
    assert_select "title", full_title("Contact")  # タイトルを検証
  end

end
