
After do |scenario|
    nome_cenario = scenario.name.gsub(' ', '_').downcase!
     screenshot = "reports/screenshots/#{nome_cenario}.png"
     page.save_screenshot(screenshot)
end