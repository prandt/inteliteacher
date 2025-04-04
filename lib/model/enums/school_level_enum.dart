enum SchoolLevelEnum {
  primary('Ensino fundamental'),
  highSchool('Ensino médio'),
  university('Ensino superior'),
  alternativeEducation('Educação alternativa'),;

  final String description;

  const SchoolLevelEnum(this.description);
}