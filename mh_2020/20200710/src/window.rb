﻿class BackWindow
  WINDOW_WIDTH  = 640
  WINDOW_HEIGHT = 480
  SKYLINE=400

  def initialize
    Window.width = WINDOW_WIDTH
    Window.height = WINDOW_HEIGHT
    @image = Image.new(WINDOW_WIDTH, WINDOW_HEIGHT, Color::SKYBLUE)
    @image.box_fill(0, SKYLINE, WINDOW_WIDTH, WINDOW_HEIGHT, Color::GREEN)

    @font  = Font.new(30, "ＭＳ Ｐゴシック", { :weight=>false, :italic => true })
    @font1 = Font.new(25, "ＭＳ 明朝", { :weight=>false, :italic => false })

  end
 
  def draw
    Window.draw(0,0,@image)
  end
 
  def draw_endback
    Window.draw(0,0,@image)
    @image.box_fill(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT, Color::BLACK) 
    Window.draw_font( 190, 200, "ゲームオーバーです",@font, {:color=>Color::WHITE})
  end
 
  def write_char(x, y, char, color)
    Window.draw_font( x, y, char, @font1, {:color=>color})
  end
end
