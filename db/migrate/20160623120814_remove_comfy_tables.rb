class RemoveComfyTables < ActiveRecord::Migration[5.0]
  def change
    drop_table :comfy_cms_blocks
    drop_table :comfy_cms_categories
    drop_table :comfy_cms_categorizations
    drop_table :comfy_cms_files
    drop_table :comfy_cms_layouts
    drop_table :comfy_cms_pages
    drop_table :comfy_cms_revisions
    drop_table :comfy_cms_sites
    drop_table :comfy_cms_snippets
  end
end
