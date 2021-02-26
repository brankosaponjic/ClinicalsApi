package brankosaponjic.clinicalsapi.controllers;

import brankosaponjic.clinicalsapi.model.Patient;
import brankosaponjic.clinicalsapi.repositories.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/v1/api")
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
}
