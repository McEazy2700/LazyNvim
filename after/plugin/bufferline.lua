-- Bufferline
    require('bufferline').setup {
        options = {
            mode = "buffers", -- set to "tabs" to only show tabpages instead
            themable = true , -- allows highlight groups to be overriden i.e. sets highlights as default
            -- numbers = "buffer_id",-- | "both",
            indicator = {
                icon = "|",
                style = 'icon',
            },
            diagnostics = "nvim_lsp",
            diagnostics_update_in_insert = false,
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "File Explorer",
                    text_align = "center",
                    separator = true
                }
            },
            color_icons = true, -- whether or not to add the filetype icon highlights
            show_buffer_icons = true, -- disable filetype icons for buffers
            show_buffer_close_icons = true,
            show_buffer_default_icon = true, -- whether or not an unrecognised filetype should show a default icon
            show_close_icon = true,
            show_tab_indicators = true,
            show_duplicate_prefix = true, -- whether to show duplicate buffer prefix
            persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
            -- can also be a table containing 2 custom separators
            -- [focused and unfocused]. eg: { '|', '|' }
            separator_style = "slant",--| "slope" | "thick" | "thin" | { 'any', 'any' },
            enforce_regular_tabs = false,-- | true,
            always_show_bufferline = true,-- | false,
            hover = {
                enabled = true,
                delay = 200,
                reveal = {'close'}
            },
            sort_by = "id",--'insert_after_current' |'insert_at_end' | 'id' | 'extension' | 'relative_directory' | 'directory' | 'tabs' | function(buffer_a, buffer_b)
        }
    }
