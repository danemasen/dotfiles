require('neorg').setup({
 load = {
  ['core.defaults'] = {},
  ['core.concealer'] = {},
  ['core.dirman'] = {
   config = {
    workspaces = {
     notes = '~/Documents/notes',
    },
    index = "INDEX.norg",
   },
  },
 }
})
