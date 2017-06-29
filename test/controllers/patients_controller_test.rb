require 'test_helper'

class PatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get patients_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_url
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post patients_url, params: { patient: { dob: @patient.dob, firstName: @patient.firstName, gender: @patient.gender, hospital: @patient.hospital, opDate: @patient.opDate, q10: @patient.q10, q11: @patient.q11, q12: @patient.q12, q13: @patient.q13, q14: @patient.q14, q15: @patient.q15, q16: @patient.q16, q17: @patient.q17, q18: @patient.q18, q19: @patient.q19, q1: @patient.q1, q20: @patient.q20, q21: @patient.q21, q22: @patient.q22, q2: @patient.q2, q3: @patient.q3, q4: @patient.q4, q5: @patient.q5, q6: @patient.q6, q7: @patient.q7, q8: @patient.q8, q9: @patient.q9, surName: @patient.surName } }
    end

    assert_redirected_to patient_url(Patient.last)
  end

  test "should show patient" do
    get patient_url(@patient)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_url(@patient)
    assert_response :success
  end

  test "should update patient" do
    patch patient_url(@patient), params: { patient: { dob: @patient.dob, firstName: @patient.firstName, gender: @patient.gender, hospital: @patient.hospital, opDate: @patient.opDate, q10: @patient.q10, q11: @patient.q11, q12: @patient.q12, q13: @patient.q13, q14: @patient.q14, q15: @patient.q15, q16: @patient.q16, q17: @patient.q17, q18: @patient.q18, q19: @patient.q19, q1: @patient.q1, q20: @patient.q20, q21: @patient.q21, q22: @patient.q22, q2: @patient.q2, q3: @patient.q3, q4: @patient.q4, q5: @patient.q5, q6: @patient.q6, q7: @patient.q7, q8: @patient.q8, q9: @patient.q9, surName: @patient.surName } }
    assert_redirected_to patient_url(@patient)
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete patient_url(@patient)
    end

    assert_redirected_to patients_url
  end
end
