#
# Cookbook Name:: systemd
# Library:: Systemd::Manager
# Library:: Systemd::Manager
#
# Copyright 2015 The Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'dbus'

class Systemd
  class Bus
    attr_reader :service, :manager

    # set up dbus session and service/manager accessors
    def initialize
      bus = DBus::SystemBus.instance
      @service = bus.service('org.freedesktop.systemd1')
      @manager = @service.object('/org/freedesktop/systemd1').tap(&:introspect)
    end

    # return an introspected unit object
    def unit(unit_name)
      @service.object(@manager.GetUnit(unit_name).first).tap(&:introspect)
    end

    # return a list of unit names
    def units
      @manager.ListUnits().first.map { |unit| unit[0] }
    end
  end
end
