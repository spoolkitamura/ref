﻿require 'dxruby'
require_relative 'color'
require_relative 'window'
require_relative 'hero'
require_relative 'item'
require_relative 'tama'   ###


def hit?(hero, bomb)
  diffx = hero.centerx - bomb.centerx
  diffy = hero.centery - bomb.centery
  if (diffx > -20) and (diffx < 20) and (diffy > -20) and (diffy < 20)
    return true
  else
    return false
  end
end

def clicked?(obj)
  clicked = false
  if Input.mouse_push?(M_LBUTTON)
    diffx = Input.mouse_pos_x - obj.centerx
    diffy = Input.mouse_pos_y - obj.centery
    if (diffx > -20) and (diffx < 20) and (diffy > -20) and (diffy < 20)
      clicked = true
    end
  end
  return clicked 
end

def game_over(backwindow, hero)
  backwindow.draw_endback
  hero.draw
  Window.update 
  sleep 2
  exit
end

backwindow = BackWindow.new
hero = Hero.new( BackWindow::WINDOW_WIDTH / 2, BackWindow::SKYLINE)

tamas = []   ###

NBOMB = 3
NAPPLE = 2
NORANGE = 1

sound_back = Sound.new("sound/backg.mid")
sound_hit = Sound.new("sound/hit.wav")

bombs = []
NBOMB.times do
  bombs << Bomb.new
end

apples = []
NAPPLE.times do
  apples << Apple.new
end

oranges =[]
NORANGE.times do
  oranges << Orange.new
end

score = 0
click_count = 0

sound_back.play

Window.loop do
  hero.move
  bombs.each do |bomb|
    bomb.drop
  end
  apples.each do |apple| 
    apple.drop
  end
  oranges.each do |orange|
    orange.drop
  end

  backwindow.draw
  hero.draw
  bombs.each do |bomb|
    bomb.draw
  end
  apples.each do |apple| 
    apple.draw
  end
  oranges.each do |orange|
    orange.draw
  end

  if Input.key_push?(K_SPACE)
    tamas << Tama.new(hero.centerx, hero.centery)
  end

  ###
  tamas.each do |tama|
    tama.move
    tama.draw
    bombs.each do |bomb|
      if hit?(tama, bomb)
        bomb.reset
        tamas.delete(tama)
      end
    end
  end
  ###

  apples.each do |apple|
    if hit?(hero, apple)
      score += apple.get_score
      sound_hit.play      
      apple.reset
    end
  end

  oranges.each do |orange|
    if hit?(hero, orange)
      score += orange.get_score
      orange.reset
    end
  end

  bombs.each do|bomb|
    if hit?(hero, bomb) 
      game_over(backwindow, hero)
    end
  end

  bombs.each do|bomb|
    if clicked?(bomb) 
      game_over(backwindow, hero)
    end
  end

  apples.each do |apple| 
    if clicked?(apple)
       score += apple.get_score
       click_count += 1
       apple.reset
    end
  end

  backwindow.write_char(50, 400, "あなたの得点は#{score}点 クリック#{click_count}回", Color::WHITE)

  if score >= 100
    backwindow.draw_endclear
  end

  break if Input.key_push?(K_ESCAPE)
end
