
def janken
    puts "じゃんけん..."
    puts "0(グー)、1(チョキ)、2(パー)、3(戦わない)"
    hand_number = gets.to_i
    if !(hand_number == 0 || hand_number == 1 || hand_number == 2)
        hand_number = 3
    end
    random_number = rand(3)
    $pattern = 0
    jankens = ["グー","チョキ","パー","戦わない"]
    
    puts "ほいっ"
    
    puts "--------------------"

    puts "あなた:#{jankens[hand_number]}を出しました"
    puts "相手:#{jankens[random_number]}を出しました"
    puts "--------------------"
    
    if hand_number == 3 || random_number == 3
        puts "じゃんけんを終了します"
        exit
    else
        number = hand_number - random_number
        case number
            when 0
                puts "あいこです。"
                janken
            when 1, -2
                puts "負けました。あっちむいて〜"
                $pattern = 2
                hoi
            when -1, 2
                puts "勝ちました。あっちむいて〜"
                $pattern = 1
                hoi
        end
    end
   
end

def hoi
    puts "0(上)、1(下)、2(左)、3(右)"
    hand_number2 = gets.to_i
    random_number2 = rand(4)
    directions = ["上","下","左","右"]
    puts "あなた：#{directions[hand_number2]}"
    puts "相手：#{directions[random_number2]}"
    puts "ホイッ"
    ending = 0
    case hand_number2
    when 0, 1, 2, 3 then
        if hand_number2 == random_number2
            puts "勝敗がつきました"
            puts"------------------------------"
        else
            puts "勝敗がつかなかったので、再度ジャンケンします"
            puts"------------------------------"
            ending = janken
        end
    else
        puts "じゃんけんをやめました"
        exit
    end
end

janken
if $pattern == 1
    puts "勝利しました！"
else
    puts "敗北しました！"
end




#ruby rock_paper_scissors.rb