AssetSync.configure do |config|
    config.fog_provider = 'AzureRM'
    config.fog_directory = ENV['FOG_DIRECTORY']
    config.azure_storage_account_name = ENV['AZURE_STORAGE_ACCOUNT_NAME']
    config.azure_storage_access_key = ENV['AZURE_STORAGE_ACCESS_KEY']
end