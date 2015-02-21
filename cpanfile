requires "CPAN::Meta" => "0";
requires "Data::Section::Simple" => "0";
requires "Dist::Zilla" => "4.3";
requires "Dist::Zilla::App::Command::cover" => "0";
requires "Dist::Zilla::Plugin::AutoVersion" => "0";
requires "Dist::Zilla::Plugin::Bugtracker" => "1.102670";
requires "Dist::Zilla::Plugin::CheckChangesHasContent" => "0";
requires "Dist::Zilla::Plugin::CheckExtraTests" => "0";
requires "Dist::Zilla::Plugin::CheckPrereqsIndexed" => "0.002";
requires "Dist::Zilla::Plugin::CopyFilesFromBuild" => "0";
requires "Dist::Zilla::Plugin::GithubMeta" => "0.10";
requires "Dist::Zilla::Plugin::InsertCopyright" => "0.001";
requires "Dist::Zilla::Plugin::MetaNoIndex" => "0";
requires "Dist::Zilla::Plugin::MetaProvides::Package" => "1.11044404";
requires "Dist::Zilla::Plugin::MinimumPerl" => "0";
requires "Dist::Zilla::Plugin::OurPkgVersion" => "0.001008";
requires "Dist::Zilla::Plugin::PodWeaver" => "0";
requires "Dist::Zilla::Plugin::ReadmeAnyFromPod" => "0.120051";
requires "Dist::Zilla::Plugin::ReadmeFromPod" => "0";
requires "Dist::Zilla::Plugin::StaticVersion" => "0";
requires "Dist::Zilla::Plugin::TaskWeaver" => "0.101620";
requires "Dist::Zilla::Plugin::Test::Compile" => "0";
requires "Dist::Zilla::Plugin::Test::Perl::Critic" => "0";
requires "Dist::Zilla::Plugin::Test::PodSpelling" => "2.001002";
requires "Dist::Zilla::Plugin::Test::Portability" => "0";
requires "Dist::Zilla::Plugin::Test::Version" => "0";
requires "Dist::Zilla::PluginBundle::Filter" => "0";
requires "Dist::Zilla::PluginBundle::Git" => "0";
requires "Dist::Zilla::Role::PluginBundle::Easy" => "0";
requires "Dist::Zilla::Util::FileGenerator" => "0";
requires "Moose" => "0.99";
requires "Moose::Autobox" => "0";
requires "Pod::Elemental::Transformer::List" => "0.101620";
requires "Pod::Weaver::Config::Assembler" => "0";
requires "Pod::Weaver::Plugin::WikiDoc" => "0";
requires "Pod::Weaver::Section::Support" => "1.001";
requires "Try::Tiny" => "0";
requires "autodie" => "2.00";
requires "namespace::autoclean" => "0.09";
requires "perl" => "5.006";
requires "strict" => "0";
requires "strictures" => "0";
requires "warnings" => "0";

on 'test' => sub {
  requires "File::Spec" => "0";
  requires "File::Temp" => "0";
  requires "IO::Handle" => "0";
  requires "IPC::Open3" => "0";
  requires "Test::Exception" => "0.29";
  requires "Test::More" => "0.88";
  requires "perl" => "5.006";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "0";
  requires "perl" => "5.006";
};

on 'develop' => sub {
  requires "Pod::Coverage::TrustPod" => "0";
  requires "Test::CPAN::Meta" => "0";
  requires "Test::More" => "0";
  requires "Test::Pod" => "1.41";
  requires "Test::Pod::Coverage" => "1.08";
  requires "Test::Spelling" => "0.12";
  requires "Test::Version" => "1";
};
