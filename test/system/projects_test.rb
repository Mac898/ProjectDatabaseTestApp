require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  setup do
    @project = projects(:one)
  end

  test "visiting the index" do
    visit projects_url
    assert_selector "h1", text: "Projects"
  end

  test "creating a Project" do
    visit projects_url
    click_on "New Project"

    fill_in "Comment", with: @project.comment
    fill_in "Date", with: @project.date
    fill_in "Job", with: @project.job
    fill_in "Job description", with: @project.job_description
    fill_in "Manager", with: @project.manager
    fill_in "Po number", with: @project.po_number
    fill_in "Status", with: @project.status
    fill_in "Total", with: @project.total
    click_on "Create Project"

    assert_text "Project was successfully created"
    click_on "Back"
  end

  test "updating a Project" do
    visit projects_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @project.comment
    fill_in "Date", with: @project.date
    fill_in "Job", with: @project.job
    fill_in "Job description", with: @project.job_description
    fill_in "Manager", with: @project.manager
    fill_in "Po number", with: @project.po_number
    fill_in "Status", with: @project.status
    fill_in "Total", with: @project.total
    click_on "Update Project"

    assert_text "Project was successfully updated"
    click_on "Back"
  end

  test "destroying a Project" do
    visit projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project was successfully destroyed"
  end
end
