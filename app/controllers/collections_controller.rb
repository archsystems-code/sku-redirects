class CollectionsController < ApplicationController
  def redirect
    id = params[:id]
    spreadsheet_id = '1ueNwaJcS4y558UrxuC66kcKBPirXPfEhgeolQ2LEKIY'
    range = 'A2:C'
    service = Rails.application.config.google_sheets_service
    response = service.get_spreadsheet_values(spreadsheet_id, range)
    response.values.each do |row|
      if row[1] == id
        redirect_to "https://www.archsystems.com#{row[2]}"
      end
    end
  end
end