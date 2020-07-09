#-------------------------------------------------
#  tama.rb
#  爆弾ゲーム改良
#   Ruby君が弾を撃つ
#   Tamaクラス作成(新規)
#     1)Tamaのメンバ変数(インスタンス変数)を作り初期値を設定
#     2)次のメソッドを作る
#     (1)メソッドmove:動きの処理を行う
#     (2)メソッドdraw:弾を画面に描画する
#     (3)メソッドcenterx:弾の中心のx座標を求める(衝突判定用)
#     (4)メソッドcenterx:弾の中心のx座標を求める(衝突判定用)
#
#-------------------------------------------------

# 弾クラス
class Tama
  def initialize(x, y)
    # 弾の初期位置(x,y)
    @x = x
    @y = y
    # 弾の半径
    @r = 4
    # 縦方向の速度
    @vy = 5
  end

  def move
    @y -= @vy
  end

  def draw
    # 中心位置(@x, @y)に半径@rの赤色の円を描画
    Window.draw_circle_fill(@x, @y, @r, C_RED)
  end

  def centerx
    @x
  end

  def centery
    @y
  end
end



if $0 == __FILE__
  require 'dxruby'
  tama = Tama.new(320, 400)
  Window.loop do
    tama.move
    tama.draw
  end
end
