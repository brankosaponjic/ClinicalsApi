package brankosaponjic.clinicalsapi.controllers;

import brankosaponjic.clinicalsapi.model.ClinicalData;
import brankosaponjic.clinicalsapi.model.Patient;
import brankosaponjic.clinicalsapi.repositories.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/v1")
public class PatientController {

    private final PatientRepository patientRepository;

    @Autowired
    public PatientController(PatientRepository patientRepository) {
        this.patientRepository = patientRepository;
    }

    @RequestMapping(value = "/patients", method = RequestMethod.GET)
    public List<Patient> getPatients() {
        return patientRepository.findAll();
    }

    @RequestMapping(value = "/patients/{id}", method = RequestMethod.GET)
    public Patient getPatient(@PathVariable("id") int id) {
        return patientRepository.findById(id).get();
    }

    @RequestMapping(value = "/patients", method = RequestMethod.POST)
    public Patient savePatient(@RequestBody Patient patient) {
        return patientRepository.save(patient);
    }

    @RequestMapping(value = "/patients/analyze/{id}", method = RequestMethod.GET)
    public Patient analyze(@PathVariable("id") int id) {
        Patient patient = patientRepository.findById(id).get();
        List<ClinicalData> clinicalData = patient.getClinicalData();
        ArrayList<ClinicalData> duplicateClinicalData = new ArrayList<>();
        for (ClinicalData eachEntry : duplicateClinicalData) {
            if (eachEntry.getComponentName().equals("hw")) {
                String[] heightAndWeight = eachEntry.getComponentValue().split("/");
                if (heightAndWeight != null && heightAndWeight.length>1) {
                    float heightInMeters = Float.parseFloat(heightAndWeight[0])*0.4356F;
                    float bmi = Float.parseFloat(heightAndWeight[1])/(heightInMeters*heightInMeters);
                    ClinicalData bmiData = new ClinicalData();
                    bmiData.setComponentName("bmi");
                    bmiData.setComponentValue(Float.toString(bmi));
                    clinicalData.add(bmiData);
                }
            }
        }
        return patient;
    }
}
