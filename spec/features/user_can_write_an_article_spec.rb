
feature 'Visitor can write an article' do
    before do
        visit root_path
        click_on 'Write Article'
        fill_in 'Title', with: 'It is almost friday'
        fill_in 'Content', with: 'And cheezedoodles are now available with chocolate'
        click_on 'Create Article'
    end

    describe 'Visitor can write an article' do
        it 'Visitor should see success message' do
            expect(page).to have_content 'Your article was successfully created'
        end
    end
end
