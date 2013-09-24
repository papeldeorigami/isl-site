hostname = ENV['ISL_SITE_HOSTNAME']
isl_site = Cms::Site.create!(
  identifier: "isl-site",
  label: "Instituto Sarah Lins",
  hostname: hostname,
  path: "",
  locale: "pt-BR",
  is_mirrored: false,
)
