#> inv_ui:load
#   load
#

# load asset
    function inv_ui:asset/ui
    function inv_ui:asset/menu
    function inv_ui:asset/storage/menu
    function inv_ui:asset/com/menu

# scores
    scoreboard objectives add ui_storage_page dummy
    scoreboard objectives add ui_storage_hotbar_count dummy
    scoreboard objectives add ui_storage_length dummy
    scoreboard objectives add ui_storage_value dummy

    scoreboard objectives add ui_storage_slot dummy

# ohMyDad
    execute as @a run function oh_my_dat:please

# text
    tellraw @a {"text":"inventory UI loaded"}