Gem::Specification.new do |spec|
  spec.name = 'shaper'
  spec.version = '0.1.0'

  spec.author = "Manfred Stienstra"
  spec.email = "manfred@fngtps.com"

  spec.description = <<-EOF
  Shaper is a really little little form builder for Rails. If is supposed to
  be faster and better (;
  EOF
  spec.summary = <<-EOF
  Shaper is a really little little form builder for Rails.
  EOF

  spec.files = ['lib/shaper.rb']

  spec.has_rdoc = true
  spec.extra_rdoc_files = ['README.md', 'LICENSE']
  spec.rdoc_options << "--charset=utf-8"

  spec.add_development_dependency('rake')
  spec.add_development_dependency('activesupport')
  spec.add_development_dependency('actionpack')
end