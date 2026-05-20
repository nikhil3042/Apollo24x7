*** Variables ***
${Find_Doctors}  //a[text()='Find Doctors']
${doctor_by_speciality}  (//a[@class='Jl_ '])[2]
${doctors}  (//div[@class="DoctorCard_doctorInfo__i_vt5"])[1]
${book_appointment}  //button[@value="bookPhysicalConsult"]