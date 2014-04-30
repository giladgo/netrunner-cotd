module CardHelper
  def netrunner_img(url)
    "http://netrunnerdb.com#{url}"
  end

  def icon_map
    {
      'Credits' => 'credit',
      'Subroutine' => 'subroutine',
      'Link' => 'link',
      'Trash' => 'trash',
      'Recurring Credits' => 'recurring-credit',
      'Asset' => 'asset',
      'Rez' => 'rez',
      'Memory Unit' => 'mu',
      'Click' => 'click',

      '1mu' => '1mu',
      '2mu' => '2mu',
      '3mu' => '3mu',

      'Haas-Bioroid' => 'haas-bioroid',
      'Weyland Consortium' => 'weyland-consortium',
      'Jinteki' => 'jinteki',
      'NBN' => 'nbn',

      'Anarch' => 'anarch',
      'Criminal' => 'criminal',
      'Shaper' => 'shaper',
    }
  end


  def fix_icons(the_text)
    icon_map.each do |k,v|
      the_text = the_text.gsub("[#{k}]", "<i class='icon icon-#{v}'></i>")
    end

    the_text
  end

  def fix_newline(the_text)
    the_text.gsub('\n', '<br />')
  end

  def fix_text(the_text)
    the_text = fix_newline(the_text)
    the_text = fix_icons(the_text)
    the_text
  end
end
