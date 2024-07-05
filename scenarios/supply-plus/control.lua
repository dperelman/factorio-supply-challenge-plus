require "util"
require "story"
mod_gui = require "mod-gui"
time_modifier = 1.4
points_per_second_start = 5
points_per_second_level_subtract = 0.2
global.levels =
{
  -- 1
  {
    requirements =
    {
      {name = "stone", count = 15 }
    },
    time = 240
  },

  -- 2
  {
    requirements =
    {
      {name = "iron-plate", count = 30}
    },
    time = 300
  },

  -- 3
  {
    requirements =
    {
      {name = "iron-plate", count = 30},
      {name = "copper-plate", count = 30}
    },
    time = 300
  },

  -- 4
  {
    requirements =
    {
      {name = "iron-plate", count = 30},
      {name = "iron-gear-wheel", count = 30}
    },
    time = 300
  },

  -- 5
  {
    requirements =
    {
      {name = "iron-plate", count = 40},
      {name = "iron-gear-wheel", count = 30},
      {name = "copper-cable", count = 40}
    },
    time = 300
  },

  -- 6
  {
    requirements =
    {
      {name = "iron-plate", count = 40},
      {name = "iron-gear-wheel", count = 30},
      {name = "electronic-circuit", count = 30}
    },
    time = 300
  },

  -- 7
  {
    requirements =
    {
      {name = "iron-plate", count = 40},
      {name = "iron-gear-wheel", count = 30},
      {name = "electronic-circuit", count = 30},
      {name = "automation-science-pack", count = 10},
      {name = "firearm-magazine", count = 50}
    },
    time = 300
  },

  -- 8
  {
    requirements =
    {
      {name = "iron-plate", count = 40},
      {name = "iron-gear-wheel", count = 30},
      {name = "electronic-circuit", count = 30},
      {name = "automation-science-pack", count = 10},
      {name = "transport-belt", count = 20}
    },
    time = 300
  },

  -- 9
  {
    requirements =
    {
      {name = "iron-plate", count = 50},
      {name = "iron-gear-wheel", count = 30},
      {name = "electronic-circuit", count = 30},
      {name = "automation-science-pack", count = 10},
      {name = "transport-belt", count = 20},
      {name = "inserter", count = 20}
    },
    time = 300
  },

  -- 10
  {
    requirements =
    {
      {name = "iron-plate", count = 50},
      {name = "iron-gear-wheel", count = 30},
      {name = "electronic-circuit", count = 30},
      {name = "automation-science-pack", count = 10},
      {name = "logistic-science-pack", count = 10}
    },
    time = 300
  },

  -- 11
  {
    requirements =
    {
      {name = "iron-plate", count = 50},
      {name = "iron-gear-wheel", count = 30},
      {name = "electronic-circuit", count = 30},
      {name = "automation-science-pack", count = 20},
      {name = "logistic-science-pack", count = 20},
      {name = "fast-transport-belt", count = 10}
    },
    time = 300
  },

  -- 12
  {
    requirements =
    {
      {name = "iron-plate", count = 50},
      {name = "iron-gear-wheel", count = 30},
      {name = "electronic-circuit", count = 30},
      {name = "automation-science-pack", count = 20},
      {name = "logistic-science-pack", count = 20},
      {name = "steel-plate", count = 10}
    },
    time = 420
  },

  -- 13
  {
    requirements =
    {
      {name = "iron-gear-wheel", count = 30},
      {name = "electronic-circuit", count = 30},
      {name = "automation-science-pack", count = 20},
      {name = "logistic-science-pack", count = 20},
      {name = "steel-plate", count = 15},
      {name = "piercing-rounds-magazine", count = 50}
    },
    time = 300
  },

  -- 14
  {
    requirements =
    {
      {name = "iron-gear-wheel", count = 30},
      {name = "electronic-circuit", count = 30},
      {name = "automation-science-pack", count = 20},
      {name = "logistic-science-pack", count = 20},
      {name = "steel-plate", count = 15},
      {name = "grenade", count = 15},
      {name = "plastic-bar", count = 5}
    },
    time = 600
  },

  -- 15
  {
    requirements =
    {
      {name = "electronic-circuit", count = 30},
      {name = "automation-science-pack", count = 20},
      {name = "logistic-science-pack", count = 20},
      {name = "steel-plate", count = 15},
      {name = "advanced-circuit", count = 10}
    },
    time = 500
  },

  -- 16
  {
    requirements =
    {
      {name = "automation-science-pack", count = 20},
      {name = "logistic-science-pack", count = 20},
      {name = "steel-plate", count = 15},
      {name = "advanced-circuit", count = 10},
      {name = "sulfur", count = 10}
    },
    time = 500
  },

  -- 17
  {
    requirements =
    {
      {name = "automation-science-pack", count = 20},
      {name = "logistic-science-pack", count = 20},
      {name = "advanced-circuit", count = 10},
      {name = "engine-unit", count = 10},
      {name = "sulfur", count = 10}
    },
    time = 500
  },

  -- 18
  {
    requirements =
    {
      {name = "automation-science-pack", count = 20},
      {name = "logistic-science-pack", count = 20},
      {name = "chemical-science-pack", count = 20},
      {name = "grenade", count = 20}
    },
    time = 500
  },

  -- 19
  {
    requirements =
    {
      {name = "automation-science-pack", count = 30},
      {name = "logistic-science-pack", count = 30},
      {name = "chemical-science-pack", count = 30},
      {name = "stone-wall", count = 20}
    },
    time = 500
  },

  -- 20
  {
    requirements =
    {
      {name = "automation-science-pack", count = 40},
      {name = "logistic-science-pack", count = 40},
      {name = "chemical-science-pack", count = 40},
      {name = "stone-wall", count = 20},
      {name = "grenade", count = 20}
    },
    time = 600
  },

  -- 21
  {
    requirements =
    {
      {name = "automation-science-pack", count = 50},
      {name = "logistic-science-pack", count = 50},
      {name = "chemical-science-pack", count = 50},
      {name = "military-science-pack", count = 50}
    },
    time = 700
  }
}
local completed_label_color = {g = 1}

function get_time_left()
  return global.level_started_at + time_modifier * global.levels[global.level].time * 60 - game.tick
end

local accumulate_items = function()
  local accumulated = global.accumulated
  global.extra_items = {}
  local extra_items = global.extra_items
  for name, _ in pairs(global.all_items) do
    extra_items[name] = 0
  end

  for index, chest in pairs(global.chests) do
    if chest.valid then
      local inventory = chest.get_inventory(defines.inventory.chest)
      local contents = inventory.get_contents()
      for item_name, count in pairs(contents) do
        if accumulated[item_name] then
          local count_to_consume = math.min(global.required[item_name] - global.accumulated[item_name], count)
          if count_to_consume ~= 0 then
            inventory.remove{name = item_name, count = count_to_consume}
            accumulated[item_name] = accumulated[item_name] + count_to_consume
          end
          extra_items[item_name] = extra_items[item_name] + count - count_to_consume
        elseif extra_items[item_name] then
          extra_items[item_name] = extra_items[item_name] + count
        end
      end
    end
  end
end

local get_next_level_button = function(player)
  local flow = mod_gui.get_button_flow(player)
  return flow.next_level or flow.add{type = "button", name = "next_level", caption={"next-level"}, style = mod_gui.button_style}
end

local low_time_left_label_color = {r = 1}

local apply_bonus_points = function()
  if not global.would_have_lost then
    local seconds_left = math.floor(get_time_left() / 60)
    local points_addition = math.floor(seconds_left * (points_per_second_start - global.level * points_per_second_level_subtract))
    game.print({"time-bonus", util.format_number(points_addition), seconds_left, points_addition})
    global.points = global.points + points_addition
  end
end

story_table =
{
  {
    {
      action = function()
        if not game.is_multiplayer() then
          game.show_message_dialog{text = {"welcome"}}
          game.show_message_dialog{text = {"rules1"}}
          game.show_message_dialog{text = {"rules2"}}
          game.show_message_dialog{text = {"rules3"}}
          game.show_message_dialog{text = {"rules4"}}
          game.show_message_dialog{text = {"rules5"}}
        end
      end
    },
    {},
    {
      name = "level-start",
      init = function(event)
        local global_settings = settings.global
        local auto_advance = global_settings["scplus-auto-advance"].value

        global.accumulated = {}
        global.extra_items = {}
        global.required = {}
        global.future_required = {}
        global.labels = {}
        global.level_started_at = event.tick

        local future_items = global.future_required
        for level_num, level in pairs(global.levels) do
          if level_num == global.level then
            for index, item in pairs(level.requirements) do
              global.accumulated[item.name] = 0
              global.required[item.name] = item.count
            end
          elseif level_num > global.level then
            for index, item in pairs(level.requirements) do
              if future_items[item.name] then
                future_items[item.name].count = future_items[item.name].count + item.count
              else
                future_items[item.name] = { count = item.count, first_level = level_num }
              end
            end
          end
        end


        for k, player in pairs (game.players) do
          update_gui(player)
          if not auto_advance then
            get_next_level_button(player).enabled = false
          end
        end
      end
    },
    {
      name = "level-progress",
      update = function(event)
        if event.tick % 60 ~= 0 then return end
        accumulate_items()
        for k, player in pairs(game.players) do
          update_gui(player)
        end
      end,
      condition = function(event)

        if event.name == defines.events.on_gui_click and
        event.element.name == "next_level" then
          if not global.would_have_lost then
            apply_bonus_points()
          end
          return true
        end

        if event.tick % 60 ~= 0 then return end

        local global_settings = settings.global
        local lose_on_timeout = global_settings["scplus-lose-on-timeout"].value
        local auto_advance = global_settings["scplus-auto-advance"].value

        local result = true
        local level = global.levels[global.level]
        for index, item in pairs(level.requirements) do
          local accumulated = global.accumulated[item.name]
          if accumulated < item.count then
            result = false
          end
        end

        if result then
          if auto_advance then
            apply_bonus_points()
            return true
          else
            for k, player in pairs (game.players) do
              get_next_level_button(player).enabled = true
            end
          end
        end

        if get_time_left() <= 0 then
          if result == false then
            if lose_on_timeout then
              for k, player in pairs (game.players) do
                player.set_ending_screen_data({"points-achieved", util.format_number(global.points), global.points})
                player.gui.top.clear()
                player.gui.left.clear()
              end
              game.set_game_state{game_finished = true, player_won = false}
            elseif not global.would_have_lost then
              global.would_have_lost = { points = global.points, level = global.level, tick = game.tick }
            end
            return false
          else
            return true
          end
        end

        return false
      end,
      action = function(event, story)
        local global_settings = settings.global
        local auto_advance = global_settings["scplus-auto-advance"].value

        if not auto_advance then
          for k, player in pairs (game.players) do
            get_next_level_button(player).enabled = false
          end
        end
        global.level = global.level + 1
        if not global.would_have_lost then
          local points_addition = (global.level - 1) * 10
          game.print({"level-completed", global.level - 1, util.format_number(points_addition), points_addition})
          global.points = global.points + points_addition
        end

        if global.level < #global.levels + 1 then
          if not auto_advance then
            for k, player in pairs (game.players) do
              get_next_level_button(player).enabled = false
            end
          end
          story_jump_to(story, "level-start")
        end
      end
    },
    {
      action = function()
        if global.would_have_lost then
          -- TODO Display more info?
          local data = {"points-achieved", util.format_number(global.would_have_lost.points), global.would_have_lost.points}
          for k, player in pairs (game.players) do
            player.set_ending_screen_data(data)
          end
        else
          for k, player in pairs (game.players) do
            player.set_ending_screen_data({"points-achieved", util.format_number(global.points), global.points})
          end
        end
      end
    }
  }
}

story_init_helpers(story_table)

script.on_init(function()
  validate_prototypes()
  global.story = story_init()
  game.map_settings.pollution.enabled = false
  game.forces.enemy.evolution_factor = 0
  global.required = {}
  global.future_required = {}

  global.all_items = {}
  for _, level in pairs(global.levels) do
    for _, item in pairs(level.requirements) do
      if not global.all_items[item.name] then
        -- Mark items on the first level they appear on.
        item.first = true
        level.any_item_first = true
        global.all_items[item.name] = true
      end
    end
  end

  global.chests = {}
  for k, chest in pairs (game.surfaces[1].find_entities_filtered{name = "red-chest"}) do
    chest.minable = false
    chest.destructible = false
    global.chests[chest.unit_number] = chest
  end
  global.level = 1
  global.points = 0
end)

supply_events =
{
  defines.events.on_gui_click,
  defines.events.on_tick
}

script.on_event(supply_events, function(event)
  story_update(global.story, event, "")
end)

script.on_event(defines.events.on_player_created, function(event)
  game.get_player(event.player_index).insert{name = "iron-plate", count = 8}

  -- XXX DEBUG Extra starting items.
  game.get_player(event.player_index).insert{name = "stone", count = 100}
  game.get_player(event.player_index).insert{name = "iron-plate", count = 100}
end)

function update_gui(player)
  local global_settings = settings.global
  local display_level_timer = global_settings["scplus-display-level-timer"].value
  local display_later_requirements = global_settings["scplus-display-later-requirements"].value
  local display_future_levels = global_settings["scplus-display-future-levels"].value
  local display_future_timers = global_settings["scplus-display-future-level-timer"].value

  local flow = mod_gui.get_frame_flow(player)
  local frame = flow.supply_frame
  if not frame then
    frame = flow.add{type = "frame", name = "supply_frame", style = mod_gui.frame_style, direction = "vertical"}
  end
  frame.caption = {"level", global.level}
  frame.clear()

  local inner = frame.add{type = "frame", direction = "vertical", style = "inside_shallow_frame"}
  local info_table = inner.add{type = "table", column_count = 1, style = "bordered_table"}
  info_table.style.margin = 4
  local time_left = (display_level_timer or display_future_timers) and get_time_left() or nil
  if display_level_timer then
    local time_left_label = info_table.add{type = "label", name = "time_left", caption = {"time-left", util.formattime(global.would_have_lost and 0 or time_left)}}
    if time_left < 60 * 30 then
      time_left_label.style.font_color = low_time_left_label_color
    end
    info_table.add{type = "label", caption = {"points-per-second", points_per_second_start - global.level * points_per_second_level_subtract}}
    info_table.add{type = "label", caption = {"points", util.format_number(math.floor(global.points))}}
  end


  local required_items_flow = info_table.add{type = "flow", direction = "vertical"}

  required_items_flow.add{type = "label", caption = {"required-items"}, style = "caption_label"}

  local item_prototypes = game.item_prototypes
  local accumulated = global.accumulated
  local extra = global.extra_items
  local future = global.future_required

  local column_count = display_later_requirements and 4 or 3
  local table = required_items_flow.add{type = "table", column_count = column_count}
  table.style.column_alignments[3] = "right"
  if display_later_requirements then
    table.style.column_alignments[4] = "right"
  end
  local level = global.levels[global.level]
  for index, item in pairs(level.requirements) do
    local accumulated = accumulated[item.name]
    local sprite = table.add{type = "sprite", sprite = "item/"..item.name, style = "small_text_image"}
    table.add{type = "label", caption = {"", item_prototypes[item.name].localised_name, {"colon"}}}
    local label = table.add{type = "label", caption = accumulated .. "/" .. item.count}
    if accumulated == item.count then
      label.style.font_color = completed_label_color
    end

    if display_later_requirements then
      local extra = extra[item.name] or 0
      local future = future[item.name]
      if future then
        local label = table.add{type = "label", caption = "(+" .. extra .. "/" .. future.count .. ")"}
        if extra >= future.count then
          label.style.font_color = completed_label_color
        end
      else
        table.add{type = "label"}
      end
    end
  end

  local next_level = global.levels[global.level + 1]
  if next_level and display_future_levels ~= 0 then
    local next_level_flow = info_table.add{type = "flow", direction = "vertical"}
    next_level_flow.add{type= "label", caption = {"next-level"}, style = "caption_label"}
    local next_level_table = next_level_flow.add{type = "table", column_count = column_count}
    next_level_table.style.column_alignments[3] = "right"
    if display_later_requirements then
      next_level_table.style.column_alignments[4] = "right"
    end
    for index, item in pairs(next_level.requirements) do
      local sprite = next_level_table.add{type = "sprite", sprite = "item/"..item.name, style = "small_text_image"}
      next_level_table.add{type = "label", caption = {"", item_prototypes[item.name].localised_name, {"colon"}}}
      local extra = extra[item.name] or 0
      local label = next_level_table.add{type = "label", caption = math.min(extra, item.count) .. "/" .. item.count}
      if extra >= item.count then
        label.style.font_color = completed_label_color
      end

      if display_later_requirements then
        local future = future[item.name]
        if future and future.count > item.count then
          extra = math.max(0, extra - item.count)
          future = future.count - item.count
          local label = next_level_table.add{type = "label", caption = "(+" .. extra .. "/" .. future .. ")"}
          if extra >= future then
            label.style.font_color = completed_label_color
          end
        else
          next_level_table.add{type = "label"}
        end
      end
    end
  end

  if display_future_levels < 0 or display_future_levels > 1 then
    for level_num, level in pairs(global.levels) do
      if display_future_timers and level_num >= global.level then
        time_left = time_left + level.time * 60
      end
      if (not display_later_requirements or level.any_item_first) and level_num > global.level + 1 and (display_future_levels < 0 or level_num < global.level + display_future_levels) then

        local future_level_flow = info_table.add{type = "flow", direction = "vertical"}
        future_level_flow.add{type= "label", caption = {"level", level_num}, style = "caption_label"}
        local future_level_table = future_level_flow.add{type = "table", column_count = column_count}
        future_level_table.style.column_alignments[3] = "right"
        if display_later_requirements then
          future_level_table.style.column_alignments[4] = "right"
        end
        if display_future_timers then
          future_level_table.add{type = "label"}
          future_level_table.add{type = "label", caption = {"time-left", util.formattime(global.would_have_lost and 0 or time_left)}}
          future_level_table.add{type = "label"}
          if display_later_requirements then
            future_level_table.add{type = "label"}
          end
        end
        for index, item in pairs(level.requirements) do
          if item.first or not display_later_requirements then
            local sprite = future_level_table.add{type = "sprite", sprite = "item/"..item.name, style = "small_text_image"}
            future_level_table.add{type = "label", caption = {"", item_prototypes[item.name].localised_name, {"colon"}}}
            local extra = extra[item.name] or 0
            local label = future_level_table.add{type = "label", caption = math.min(extra, item.count) .. "/" .. item.count}
            if extra >= item.count then
              label.style.font_color = completed_label_color
            end

            if display_later_requirements then
              local future = future[item.name]
              if future and future.count > item.count then
                extra = math.max(0, extra - item.count)
                future = future.count - item.count
                local label = future_level_table.add{type = "label", caption = "(+" .. extra .. "/" .. future .. ")"}
                if extra >= future then
                  label.style.font_color = completed_label_color
                end
              else
                future_level_table.add{type = "label"}
              end
            end
          end
        end

      end
    end
  end
end

function validate_prototypes()
  local items = game.item_prototypes
  local is_error = false
  local bad_items = {}
  local discard_bad_items = settings.global["scplus-discard-missing-requirements"].value
  for k, level in pairs (global.levels) do
    for k, item in pairs (level.requirements) do
      if not items[item.name] or item.count <= 0 then
        is_error = true
        bad_items[item.name] = item.count
        if discard_bad_items then
          level.requirements[k] = nil
        end
      end
    end
  end
  if is_error then
    if discard_bad_items then
      local msg = "Bad prototypes in supply challenge, but omitting them and loading anyway:"..
        serpent.block(bad_items)
      log(msg)
      print(msg)
    else
      error("Bad prototypes in supply challenge:\n"..serpent.block(bad_items))
    end
  end
end

function test_fill_chest_requirements()
  assert(global.chests)
  local index, chest = next(global.chests)
  assert(chest.valid)
  local level = global.levels[global.level]
  assert(level)
  for k, item in pairs (level.requirements) do
    chest.insert(item)
  end
  global.level_started_at = (game.tick + 5) - (level.time * 60 * time_modifier)
end
