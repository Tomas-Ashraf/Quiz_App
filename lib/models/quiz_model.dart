import 'package:flutter/material.dart';

List<dynamic> questions = [
  'Which of these U.S. states does NOT border Canada ?',
  'Which of these countries was Not a part of the Soviet Union ?',
  'Which of these cities is NOT a national capital',
  'Which of these cities DOESN\'T border the Mediterranean Sea ?',
  'Which of these countries was NEVER part of the British Empire ?',
  'Which one of these cities is NOT in the Southern Hemisphere ?',
  'Which one of these countries is NOT in Central America ?',
  'Which of these cities does NOT border the Great Lakes ?',
  'Which of these countries is NOT majority-Muslim ?',
  'Which of these countries is NOT recognized by the United Nations ?',
];
List<DropdownMenuEntry<String>> answersQuestion1 = [
  const DropdownMenuEntry(value: 'Alaska', label: 'Alaska'),
  const DropdownMenuEntry(value: 'Indiana', label: 'Indiana'),
  const DropdownMenuEntry(value: 'Maine', label: 'Maine'),
];
List<DropdownMenuEntry<String>> answersQuestion2 = [
  const DropdownMenuEntry(value: 'Belarus', label: 'Belarus'),
  const DropdownMenuEntry(value: 'Georgia', label: 'Georgia'),
  const DropdownMenuEntry(value: 'Poland', label: 'Poland'),
];
List<DropdownMenuEntry<String>> answersQuestion3 = [
  const DropdownMenuEntry(value: 'Cairo', label: 'Cairo'),
  const DropdownMenuEntry(value: 'Prague', label: 'Prague'),
  const DropdownMenuEntry(value: 'Sydney', label: 'Sydney'),
];
List<DropdownMenuEntry<String>> answersQuestion4 = [
  const DropdownMenuEntry(value: 'Alexandria', label: 'Alexandria'),
  const DropdownMenuEntry(value: 'Barcelona', label: 'Barcelona'),
  const DropdownMenuEntry(value: 'Lisbon', label: 'Lisbon'),
];
List<DropdownMenuEntry<String>> answersQuestion5 = [
  const DropdownMenuEntry(value: 'Ireland', label: 'Ireland'),
  const DropdownMenuEntry(value: 'Kenya', label: 'Kenya'),
  const DropdownMenuEntry(value: 'Thailand', label: 'Thailand'),
];
List<DropdownMenuEntry<String>> answersQuestion6 = [
  const DropdownMenuEntry(value: 'Brasilia', label: 'Brasilia'),
  const DropdownMenuEntry(value: 'Brisbane', label: 'Brisbane'),
  const DropdownMenuEntry(value: 'Colombo', label: 'Colombo'),
];
List<DropdownMenuEntry<String>> answersQuestion7 = [
  const DropdownMenuEntry(value: 'Honduras', label: 'Honduras'),
  const DropdownMenuEntry(value: 'Panama', label: 'Panama'),
  const DropdownMenuEntry(value: 'Suriname', label: 'Suriname'),
];
List<DropdownMenuEntry<String>> answersQuestion8 = [
  const DropdownMenuEntry(value: 'Pittsburgh', label: 'Pittsburgh'),
  const DropdownMenuEntry(value: 'Chicago', label: 'Chicago'),
  const DropdownMenuEntry(value: 'Cleveland', label: 'Cleveland'),
];
List<DropdownMenuEntry<String>> answersQuestion9 = [
  const DropdownMenuEntry(value: 'Albania', label: 'Albania'),
  const DropdownMenuEntry(value: 'Ethiopia', label: 'Ethiopia'),
  const DropdownMenuEntry(value: 'Indonesia', label: 'Indonesia'),
];
List<DropdownMenuEntry<String>> answersQuestion10 = [
  const DropdownMenuEntry(value: 'Cyprus', label: 'Cyprus'),
  const DropdownMenuEntry(value: 'Iran', label: 'Iran'),
  const DropdownMenuEntry(value: 'Taiwan', label: 'Taiwan'),
];

Map<dynamic, dynamic> rightAnswers = {
  1: 'Indiana',
  2: 'Poland',
  3: 'Sydney',
  4: 'Lisbon',
  5: 'Thailand',
  6: 'Colombo',
  7: 'Suriname',
  8: 'Pittsburgh',
  9: 'Ethiopia',
  10: 'Taiwan',
};

Map<dynamic, dynamic> currentAnswers = {
  1: '',
  2: '',
  3: '',
  4: '',
  5: '',
  6: '',
  7: '',
  8: '',
  9: '',
  10: ''
};

Map<dynamic, List> answersToQuestions = {
  1: answersQuestion1,
  2: answersQuestion2,
  3: answersQuestion3,
  4: answersQuestion4,
  5: answersQuestion5,
  6: answersQuestion6,
  7: answersQuestion7,
  8: answersQuestion8,
  9: answersQuestion9,
  10: answersQuestion10,
};
