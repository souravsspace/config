-- lua/plugins/coding/auto-tag.lua
return {
  {
    'L3MON4D3/LuaSnip',
    dependencies = {
      'rafamadriz/friendly-snippets',
    },
    config = function()
      local ls = require 'luasnip'
      local s = ls.snippet
      local t = ls.text_node
      local i = ls.insert_node
      local fmt = require('luasnip.extras.fmt').fmt

      -- List of HTML tags
      local html_tags = {
        'div',
        'a',
        'section',
        'p',
        'h1',
        'h2',
        'h3',
        'h4',
        'h5',
        'h6',
        'span',
        'header',
        'footer',
        'nav',
        'main',
        'article',
        'aside',
        'ul',
        'ol',
        'li',
        'table',
        'tr',
        'td',
        'th',
        'form',
        'input',
        'button',
        'img',
        'link',
        'meta',
        'script',
        'style',
        'iframe',
        'strong',
        'em',
        'code',
        'pre',
        'blockquote',
        'hr',
        'br',
        'label',
        'textarea',
        'select',
        'option',
        'figure',
        'figcaption',
        'video',
        'audio',
        'canvas',
        'details',
        'summary',
        'time',
        'progress',
        'meter',
        'fieldset',
        'legend',
        'datalist',
        'output',
        'small',
        'sub',
        'sup',
        'abbr',
        'cite',
        'del',
        'ins',
        'kbd',
        'mark',
        'q',
        's',
        'samp',
        'var',
        'wbr',
        'area',
        'map',
        'object',
        'param',
        'source',
        'track',
        'embed',
      }

      -- Generate snippets for all HTML tags
      local snippets = {}
      for _, tag in ipairs(html_tags) do
        if tag == 'input' or tag == 'textarea' or tag == 'br' then
          -- Self-closing tags: <input />, <textarea />, <br />
          table.insert(
            snippets,
            s(
              {
                trig = '<' .. tag, -- Trigger is "<input", "<textarea", "<br"
                name = tag:upper(), -- Name of the snippet (e.g., "INPUT")
                dscr = 'HTML <' .. tag .. '> tag', -- Description
              },
              fmt(
                [[<{} />]], -- Format for self-closing tags
                {
                  t(tag), -- The tag name
                }
              )
            )
          )
        else
          -- Regular tags: <tag></tag>
          table.insert(
            snippets,
            s(
              {
                trig = '<' .. tag, -- Trigger is "<tag", e.g., "<div"
                name = tag:upper(), -- Name of the snippet (e.g., "DIV")
                dscr = 'HTML <' .. tag .. '> tag', -- Description
              },
              fmt(
                [[
              <{}>{}</{}>]], -- Format for regular tags
                {
                  t(tag), -- The opening tag
                  i(1), -- Placeholder for the content inside the tag
                  t(tag), -- The closing tag
                }
              )
            )
          )
        end
      end

      -- Add the snippets for specific filetypes
      ls.add_snippets(
        { 'html', 'javascriptreact', 'typescriptreact' },
        snippets
      )
    end,
  },
}
