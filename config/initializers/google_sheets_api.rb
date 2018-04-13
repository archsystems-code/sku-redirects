require 'google/apis/sheets_v4'
require 'googleauth'

APPLICATION_NAME = 'Redirection'
SCOPE = Google::Apis::SheetsV4::AUTH_SPREADSHEETS

service = Google::Apis::SheetsV4::SheetsService.new
service.client_options.application_name = APPLICATION_NAME
service.authorization = Google::Auth.get_application_default(SCOPE)

Rails.application.config.google_sheets_service = service