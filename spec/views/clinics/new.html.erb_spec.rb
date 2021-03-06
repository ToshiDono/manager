require 'rails_helper'

RSpec.describe 'clinics/new', type: :view do
  let(:clinic) { build(:clinic) }
  let!(:item) do
    assign(:clinic, clinic.decorate)
    render
  end

  it "page have a title '#{I18n.t('actions.create')} #{I18n.t('clinics.form.clinic')}'" do
    expect(rendered).to have_selector('h3', text: "#{t('actions.create')} #{t('clinics.form.clinic')}")
  end
end
