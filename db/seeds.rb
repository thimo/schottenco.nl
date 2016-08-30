ContentText.find_or_create_by(name: 'company_slogan') do |text|
  text.body = 'Academie voor Leefstijl, Sport en Vitaliteit'
end
ContentText.find_or_create_by(name: 'homepage_company_description') do |text|
  text.body = 'De Academie voor Leefstijl, Sport en Vitaliteit. De opleider en trainer waar kwaliteit, kennis en passie voor het vak elkaar ontmoeten.'
end
ContentText.find_or_create_by(name: 'homepage_opleiding_description') do |text|
  text.body = 'De beschrijving voor Opleiding'
end
ContentText.find_or_create_by(name: 'homepage_training_description') do |text|
  text.body = 'De beschrijving voor Training'
end
ContentText.find_or_create_by(name: 'homepage_vorming_description') do |text|
  text.body = 'De beschrijving voor Vorming'
end
ContentText.find_or_create_by(name: 'footer_company_description') do |text|
  text.body = '*De* Academie voor Leefstijl, Sport en Vitaliteit. De opleider en trainer waar kwaliteit, kennis en passie voor het vak elkaar ontmoeten.

Onze opleidingen bieden meer dan kennisoverdracht. Jouw ontwikkeling als mens staat bij ons centraal.'
end
ContentText.find_or_create_by(name: 'footer_contact') do |text|
  text.body = '<address>
  <h5 class="mb-05">Carel Schott</h5>
  <i class="fa fa-phone"></i>06-18665115<br>
  <i class="fa fa-envelope"></i><a href="mailto:carel@schottenco.nl">carel@schottenco.nl</a>
  <h5 class="mt-20 mb-05">Coriene Lodder</h5>
  <i class="fa fa-phone"></i>06-18665109<br>
  <i class="fa fa-envelope"></i><a href="mailto:coriene@schottenco.nl">coriene@schottenco.nl</a>
  </address>'
end
ContentText.find_or_create_by(name: 'footer_address') do |text|
  text.body = '<address>
    <strong>Schott & Co</strong><br />
    Bogerdweg 7 <br />
    4315 CB  Dreischor <br />
    <a href="mailto:info@schottenco.nl">info@schottenco.nl</a>
  </address>'
end
ContentText.find_or_create_by(name: 'footer_newsletter') do |text|
  text.body = 'Op de hoogte blijven? Stuur ons een mail en ontvang onze nieuwsbrief: [nieuwsbrief@schottenco.nl](mailto:nieuwsbrief@schottenco.nl).'
end
ContentText.find_or_create_by(name: 'contactform_intro') do |text|
  text.body = 'Gebruik onderstaande formulier om je bericht door te geven. We nemen snel contact met je op!'
end

ContentPage.find_or_create_by(url: 'opleiding') do |page|
  page.title = 'Opleiding'
  page.body = 'Inhoud voor Opleiding'
end
ContentPage.find_or_create_by(url: 'opleiding/voedingscoach_gewichtsconsulent') do |page|
  page.title = 'Opleiding Voedingscoach / Gewichtsconsulent'
  page.menu_title = 'Voedingscoach / Gewichtsconsulent'
  page.body = 'Inhoud voor Opleiding Voedingscoach / Gewichtsconsulent'
end
ContentPage.find_or_create_by(url: 'opleiding/functional-personal-trainer') do |page|
  page.title = 'Opleiding Functional Personal Trainer'
  page.menu_title = 'Functional Personal Trainer'
  page.body = 'Inhoud voor Functional Personal Trainer'
end
ContentPage.find_or_create_by(url: 'opleiding/life-coach') do |page|
  page.title = 'Opleiding Life Coach'
  page.menu_title = 'Life Coach'
  page.body = 'Inhoud voor Opleiding Life Coach'
end
ContentPage.find_or_create_by(url: 'opleiding/vitaalcoach') do |page|
  page.title = 'Opleiding Vitaalcoach'
  page.menu_title = 'Vitaalcoach'
  page.body = 'Inhoud voor Vitaalcoach'
end

ContentPage.find_or_create_by(url: 'training') do |page|
  page.title = 'Training'
  page.body = 'Inhoud voor Training'
end
ContentPage.find_or_create_by(url: 'training/mentale-kracht') do |page|
  page.title = 'Training Mentale Kracht'
  page.menu_title = 'Mentale Kracht'
  page.body = 'Inhoud voor Training Mentale Kracht'
end
ContentPage.find_or_create_by(url: 'training/vivo-forto') do |page|
  page.title = 'Training Vivo Forto'
  page.menu_title = 'Vivo Forto'
  page.body = 'Inhoud voor Training Vivo Forto'
end

ContentPage.find_or_create_by(url: 'vorming') do |page|
  page.title = 'Vorming'
  page.body = 'Inhoud voor Vorming'
end
ContentPage.find_or_create_by(url: 'vorming/gems-trainingen') do |page|
  page.title = 'Vorming GEMS Trainingen'
  page.menu_title = 'GEMS Trainingen'
  page.body = 'Inhoud voor Vorming GEMS Trainingen'
end
ContentPage.find_or_create_by(url: 'vorming/gems-fat-switch') do |page|
  page.title = 'Vorming GEMS Fat Switch'
  page.menu_title = 'GEMS Fat Switch'
  page.body = 'Inhoud voor Vorming GEMS Fat Switch'
end
ContentPage.find_or_create_by(url: 'vorming/gems-atletiek-en-looptraining') do |page|
  page.title = 'Vorming GEMS Atletiek en Looptraining'
  page.menu_title = 'GEMS Atletiek en Looptraining'
  page.body = 'Inhoud voor Vorming GEMS Atletiek en Looptraining'
end
ContentPage.find_or_create_by(url: 'workshop') do |page|
  page.title = 'Workshop'
  page.body = 'Inhoud voor Workshop'
end
ContentPage.find_or_create_by(url: 'contact') do |page|
  page.title = 'Contact'
  page.menu_title = ''
  page.body = 'Inhoud voor Contact'
  page.menu_type = 0
end
ContentPage.find_or_create_by(url: 'over-ons') do |page|
  page.title = 'Over ons'
  page.body = 'Inhoud voor Over ons'
end
