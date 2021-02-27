package brankosaponjic.clinicalsapi.controllers;

import brankosaponjic.clinicalsapi.dto.ClinicalDataRequest;
import brankosaponjic.clinicalsapi.model.ClinicalData;
import brankosaponjic.clinicalsapi.model.Patient;
import brankosaponjic.clinicalsapi.repositories.ClinicalDataRepository;
import brankosaponjic.clinicalsapi.repositories.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1")
public class ClinicalDataController {

    private final ClinicalDataRepository clinicalDataRepository;
    private final PatientRepository patientRepository;

    @Autowired
    public ClinicalDataController(ClinicalDataRepository clinicalDataRepository, PatientRepository patientRepository) {
        this.clinicalDataRepository = clinicalDataRepository;
        this.patientRepository = patientRepository;
    }

    @RequestMapping(value = "/clinicaldata", method = RequestMethod.POST)
    public ClinicalData saveClinicalData(@RequestBody ClinicalDataRequest request) {
        Patient patient = patientRepository.findById(request.getPatientId()).get();
        ClinicalData clinicalData = new ClinicalData();
        clinicalData.setComponentName(request.getComponentName());
        clinicalData.setComponentValue(request.getComponentValue());
        clinicalData.setPatient(patient);
        return clinicalDataRepository.save(clinicalData);
    }
}
