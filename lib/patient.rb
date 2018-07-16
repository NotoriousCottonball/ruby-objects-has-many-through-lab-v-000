class Patient 
  attr_accessor :name 
  @@all = []
  
  def initialize(name) 
    @name = name 
    @@all << self 
  end 
  
  def new_appointment(date, doctor)
    Appointment.new(date, doctor, self) 
  end 
  
  def appointments 
    Appointments.all.select {|appointment| appointment.patient == self}
  end 
  
  def doctors 
    self.appointments.collect {|appointment| appointment.doctor} 
  end
  
  def self.all 
    @@all 
  end 
end