package brankosaponjic.clinicalsapi.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class ClinicalData {
    @Id
    private int id;
    private String componentName;
    private String componentValue;
    private Timestamp measuredDateTime;
}
