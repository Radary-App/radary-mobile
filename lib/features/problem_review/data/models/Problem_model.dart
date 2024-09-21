class ProblemModel {
  final String imageUrl;  
  final String title;     
  final String? description; 
  final DateTime? date;     
  final String? status;      

  ProblemModel({
    required this.imageUrl,    
    required this.title,       
    this.description,          
    this.date,                 
    this.status,               
  });
}