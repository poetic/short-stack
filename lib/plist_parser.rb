module Plist

  require 'CFPropertyList'

  class Parser
    attr_accessor :plist_dir, :plist_path, :plist_property, :plist_value,
      :exists, :plist_file_list

    def initialize(plist_file, plist_property, value)
      @plist_dir      = "#{File.expand_path('~')}/Library/Preferences/"
      @plist_path     = @plist_dir + get_plist_file(plist_file)

      @plist_property = plist_property
      @plist_value    = value

      check_if_property_exists
    end

    def write
      plist = plist_file_list
      data  = CFPropertyList.native_types(plist.value) || {}

      data[plist_property] = plist_value

      new_plist       = CFPropertyList::List.new
      new_plist.value = CFPropertyList.guess(data)

      new_plist.save(plist_path, CFPropertyList::List::FORMAT_BINARY)
    end

    private

    def get_plist_file(plist_file)
      if plist_file == 'NSGlobalDomain'
        plist_file = '.GlobalPreferences.plist'
      else
        plist_file += '.plist'
      end
      build_if_null(plist_file)
      plist_file
    end

    def build_if_null(file_name)
      unless File.file?(plist_dir + file_name)
        File.new(plist_dir + file_name, 'w')
      end
    end

    def check_if_property_exists
      begin
        @plist_file_list = CFPropertyList::List.new(:file => plist_path)
      rescue
        @plist_file_list = CFPropertyList::List.new
      end
      data = CFPropertyList.native_types(@plist_file_list.value) || {}
      @exists = data[plist_property] == plist_value
    end

  end

end

