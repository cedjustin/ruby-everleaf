FactoryBot.define do

    factory :task do
        start_date { '1/1/2020' }
        end_date { '1/2/2020' }
        status { 'pending' }
    end

    factory :second_task, class: Task do
        start_date { '1/1/2020' }
        end_date { '1/3/2020' }
        status { 'done' }
    end
    
end