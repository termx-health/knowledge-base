workspace {

    model {
        customer = person "TermX user" "Use and create terminology, data models and transformations." "Customer"
        
        group "Database" {
            postgres = softwaresystem "PostgreSQL" "Object-relational database system." "Existing System"
        } 
        group "Object storage" {
            minio = softwaresystem "Minio" "Object storage." "Existing System"
        } 
        group "Git repository" {
            github = softwaresystem "GitHub" "Git storage." "Existing System"
        } 
        group "PlantUML" {
            plantuml = softwaresystem "PlantUML" "Server for diagram creation" "Existing System"
        } 
        group "Single Sign-On" {
            keycloak = softwaresystem "Keycloak" "Identity and Access Management." "Existing System"
        } 

        group "TermX web" {
            web = softwaresystem "Single Page Application" "View and manage terminology, data models, transformations." "Existing System"
        }  
        customer -> web "View, edit and manage"
        web -> keycloak "Uses for authentication"
        
        group "TermX server" {
            rest = softwaresystem "TermX internal API" "Layer to access TermX resources." "API"
            fhir = softwaresystem "TermX FHIR API" "Layer to enable FHIR specifications." "API"
            terminology = element "Terminology" "Code systems, value sets, concept maps." "Module"
            modeller = element "Modeller" "Code systems, value sets, concept maps." "Module"
            transformer = element "FML transformer" "Code systems, value sets, concept maps." "Module"
            wiki = element "Wiki" "Code systems, value sets, concept maps." "Module"
            task = element "Taskflow" "Code systems, value sets, concept maps." "Module"
            publisher = element "Publisher" "Code systems, value sets, concept maps." "Module"
        }  
        customer -> fhir "Uses for automation"
        web -> rest "Uses for presentation"
        rest -> terminology "Uses"
        fhir -> terminology "Uses"
        terminology -> postgres "Store data"
        modeller -> postgres "Store data"
        transformer -> postgres "Store data"
        wiki -> postgres "Store data"
        task -> postgres "Store data"
        publisher -> postgres "Store data"
        rest -> wiki "Uses"
        rest -> modeller "Uses"
        rest -> transformer "Uses"
        rest -> task "Uses"
        rest -> publisher "Uses"
        wiki -> plantuml "Generate diagramms"
        wiki -> minio "Store attachments"
        rest -> keycloak "Token management"
        fhir -> keycloak "Token management"
        terminology -> task "Create task"
        wiki -> task "Create task"
        publisher -> github "Synchronise resources"
        publisher -> terminology "Uses"
        publisher -> wiki "Uses"
        publisher -> modeller "Uses"
        publisher -> transformer "Uses"
        wiki -> rest "Communicate"
        modeller -> rest "Communicate"
        transformer -> rest "Communicate"
        task -> rest "Communicate"
        publisher -> rest "Communicate"
        
        
        group "Chef" {
            chefrest = softwaresystem "Chef REST API" "Layer to enable Sushi and GoFSH functionality." "API"
            sushi = element "Sushi" "Transform FSH to JSON." "NPM module"
            gofsh = element "GoFsh" "Transform JSON to FSH." "NPM module"
        }  
        chefrest -> sushi "Uses"
        chefrest -> gofsh "Uses"
        terminology -> chefrest "Uses"
        modeller -> chefrest "Uses"
        
        group "Snomed IHTSDO" {
            elastic = softwaresystem "Elastic" "Stores SNOMED editions and concepts." "Existing System"
            snowstorm = softwaresystem "Snowstorm" "SNOMED managing server." "Existing System"
            snowbrowser = softwaresystem "SNOMED browser" "Allow to browse SNOMED concepts." "Existing System"

        }     
        customer -> snowbrowser "View concepts"
        snowstorm -> elastic "Uses"
        snowbrowser -> snowstorm "Uses"
        terminology -> snowstorm "Uses"

    }

}
