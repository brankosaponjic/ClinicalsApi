package brankosaponjic.clinicalsapi.repositories;

import brankosaponjic.clinicalsapi.model.Patient;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PatientRepository extends JpaRepository<Patient, Integer> {
}
