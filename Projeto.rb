def hello(nome, sobrenome)
    puts "Bem-vindo(a) #{nome} #{sobrenome} ao ToDo List"
end

def list

end

puts "Olá, qual o seu nome?\n"
nome = gets.chomp
puts "E seu sobrenome?\n"
sobrenome = gets.chomp

hello(nome, sobrenome)

loop do
    puts 'Selecione a opção desejada: '
    puts '1 - Criar um novo Board'
    puts '2 - Sair do ToDo List'

    puts 'Opção: '
    op = gets.chomp.to_i

    if op == 1 
        puts "Qual o nome do Board?\n"
        board_nome = gets.chomp

        puts 'Deseja adicionar uma Task?'
        puts '1 - Sim'
        puts '2 - Não, sair do Board'
        puts 'Opção: '

        op_board = gets.chomp.to_i
        if op_board == 1
            task_nome = []
            status_task = []
            i = 0
            loop do
                puts "Qual a task?\n"
                task_nome[i] = gets.chomp
                puts "Qual o status da task?\n"
                status_task[i] = gets.chomp
                i = i + 1

                puts '1 - Adicionar outra task'
                puts '2 - Não adicionar outra task'
                puts 'Opção: '
                op_task = gets.chomp.to_i
                if op_task == 2
                    break
                end
            end
        else 
            break
        end
        
    elsif op == 2
        break

    else
        print "Opção invalida"
    end
    
    puts "Board: #{board_nome}"
    puts "Possui #{i+1} task(s)"
    i = i + 1
    i.times do
        puts "Task: #{task_nome[i]} Status: #{status_task[i]}"
        if i = i - 1
            break
        end
    end
end
