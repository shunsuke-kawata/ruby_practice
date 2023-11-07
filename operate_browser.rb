require 'watir'

begin
  # プライベートブラウザを開く
  browser = Watir::Browser.new :chrome

  # サイトにアクセス
  to_url = 'https://www.youtube.com/watch?v=i0ujTBnZw4M'
  browser.goto to_url

  # ブラウザが開いたままにするために無限ループ
  loop do
    sleep 30
  end
rescue Interrupt
  # プログラムが手動で中断されたときにメッセージを表示
  puts "プログラムが中断されました。"
ensure
  browser.close if browser
end