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
