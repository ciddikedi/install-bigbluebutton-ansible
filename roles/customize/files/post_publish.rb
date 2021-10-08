#!/usr/bin/ruby
require 'fileutils'
require 'psych'

require "trollop"
require File.expand_path('../../../lib/recordandplayback', __FILE__)

opts = Trollop::options do
  opt :meeting_id, "Meeting id to archive", :type => String
  opt :format, "Playback format name", :type => String
end
meeting_id = opts[:meeting_id]

props = Psych.load_file(File.join(__dir__, '../bigbluebutton.yml'))
published_dir = props['published_dir'] || raise('Unable to determine published_dir from bigbluebutton.yml')
recording_dir = props['recording_dir']
raw_presentation_src = props['raw_presentation_src']

FileUtils.rm_rf("#{raw_presentation_src}/#{meeting_id}")
FileUtils.cp("#{raw_presentation_src}/recording/raw/#{meeting_id}/events.xml", "#{published_dir}/presentation/#{meeting_id}/events.xml")