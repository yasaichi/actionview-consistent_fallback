# frozen_string_literal: true

require "rails_helper"

RSpec.describe ActionView::ConsistentFallback::TemplateRendering, type: :controller do
  render_views

  controller(ApplicationController) do
    prepend_view_path File.expand_path("../../../../fixtures/views", __FILE__)

    before_action do
      request.variant = params[:variant].to_sym if params[:variant].present?
    end

    def index
      # This action has one variant template (.html+phone.erb) defined in the file system.
    end
  end

  subject { response.body.split }

  before do
    case Rails::VERSION::MAJOR
    when 4
      get :index, variant: variant
    when 5
      get :index, params: { variant: variant }
    end
  end

  context "when a variant isn't specified" do
    let(:variant) { nil }
    it { is_expected.to eq %w(default_layout default_template default_partial) }
  end

  context "when there is a variant template corresponding to each request variant" do
    let(:variant) { :phone }
    it { is_expected.to eq %w(phone_layout phone_template phone_partial) }
  end

  context "when there is no variant template corresponding to each request variant" do
    let(:variant) { :tablet }
    it { is_expected.to eq %w(default_layout default_template default_partial) }
  end
end
