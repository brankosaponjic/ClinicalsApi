package brankosaponjic.clinicalsapi.repositories;

import brankosaponjic.clinicalsapi.model.ClinicalData;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ClinicalDataRepository extends JpaRepository<ClinicalData, Integer> {
}
