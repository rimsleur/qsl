#! /bin/bash

EXEC_PWD=$PWD
cd ../../database
./clear_user_space.sh
cd $EXEC_PWD
cd `cat ../path`

./qconcept -c 2 'TestProcedure1'
./qconcept -c 2 'P1'
./qconcept -c 2 'P2'
./qconcept -c 2 'P3'
./qconcept -c 2 'XL'
./qconcept -c 2 'X'
./qconcept -c 2 'Y'
./qconcept -c 5
CONCEPT1=`./qconcept -m`
./qsl2qsl -c "#$CONCEPT1 ?что быть ?чем процедура"
./qsl2qsl -c "#$CONCEPT1 ?что иметь ?что имя ?какой TestProcedure1"
./qconcept -c 7
CONCEPT2=`./qconcept -m`
./qsl2qsl -c "#$CONCEPT1 ?что быть ?чем #$CONCEPT2"
./qconcept -a $CONCEPT2 0 'создавать ?что (=поле ?что иметь ?что имя ?какой XL).'
./qconcept -a $CONCEPT2 1 'создавать ?что (=поле ?что иметь ?что имя ?какой X).'
./qconcept -a $CONCEPT2 2 'регистрировать ?что событие (?на-что изменение, ?для-чего поле).'
./qconcept -a $CONCEPT2 3 'устанавливать ?что обработчик (?чего событие, ?какой \"выполнять ?что (=процедура ?что иметь ?что имя ?какой P3).\").'
./qconcept -a $CONCEPT2 4 'регистрировать ?что событие (?на-что значение ?какой 1, ?для-чего поле).'
./qconcept -a $CONCEPT2 5 'устанавливать ?что обработчик (?чего событие, ?какой \"устанавливать ?что значение (?чего (=поле ?что иметь ?что имя ?какой XL), ?какой \\"A\\").\").'
./qconcept -a $CONCEPT2 6 'регистрировать ?что событие (?на-что значение ?какой 2, ?для-чего поле).'
./qconcept -a $CONCEPT2 7 'устанавливать ?что обработчик (?чего событие, ?какой \"устанавливать ?что значение (?чего (=поле ?что иметь ?что имя ?какой XL), ?какой \\"B\\").\").'
./qconcept -a $CONCEPT2 8 'регистрировать ?что событие (?на-что значение ?какой 3, ?для-чего поле).'
./qconcept -a $CONCEPT2 9 'устанавливать ?что обработчик (?чего событие, ?какой \"устанавливать ?что значение (?чего (=поле ?что иметь ?что имя ?какой XL), ?какой \\"C\\").\").'
./qconcept -a $CONCEPT2 10 'регистрировать ?что событие (?на-что значение ?какой 4, ?для-чего поле).'
./qconcept -a $CONCEPT2 11 'устанавливать ?что обработчик (?чего событие, ?какой \"устанавливать ?что значение (?чего (=поле ?что иметь ?что имя ?какой XL), ?какой \\"D\\").\").'
./qconcept -a $CONCEPT2 12 'регистрировать ?что событие (?на-что значение ?какой 5, ?для-чего поле).'
./qconcept -a $CONCEPT2 13 'устанавливать ?что обработчик (?чего событие, ?какой \"устанавливать ?что значение (?чего (=поле ?что иметь ?что имя ?какой XL), ?какой \\"E\\").\").'
./qconcept -a $CONCEPT2 14 'регистрировать ?что событие (?на-что значение ?какой 6, ?для-чего поле).'
./qconcept -a $CONCEPT2 15 'устанавливать ?что обработчик (?чего событие, ?какой \"выполнять ?что (=процедура ?что иметь ?что имя ?какой P1).\").'
./qconcept -a $CONCEPT2 16 'создавать ?что (=поле ?что иметь ?что имя ?какой Y).'
./qconcept -a $CONCEPT2 17 'регистрировать ?что событие (?на-что значение ?какой 6, ?для-чего поле).'
./qconcept -a $CONCEPT2 18 'устанавливать ?что обработчик (?чего событие, ?какой \"выполнять ?что (=процедура ?что иметь ?что имя ?какой P2).\").'
./qconcept -a $CONCEPT2 19 'устанавливать ?что значение (?чего (=поле ?что иметь ?что имя ?какой X), ?какой 1).'
./qconcept -a $CONCEPT2 20 'устанавливать ?что значение (?чего (=поле ?что иметь ?что имя ?какой Y), ?какой 1).'
./qconcept -a $CONCEPT2 21 'устанавливать ?что значение (?чего (=поле ?что иметь ?что имя ?какой XL), ?какой "A").'
./qconcept -a $CONCEPT2 22 'печатать ?что значение ?какой "INIT[5:5]\n".'
./qconcept -a $CONCEPT2 23 'печатать ?что значение ?какой "REFR[]\n".'
./qconcept -c 5
CONCEPT1=`./qconcept -m`
./qsl2qsl -c "#$CONCEPT1 ?что быть ?чем процедура"
./qsl2qsl -c "#$CONCEPT1 ?что иметь ?что имя ?какой P1"
./qconcept -c 7
CONCEPT2=`./qconcept -m`
./qsl2qsl -c "#$CONCEPT1 ?что быть ?чем #$CONCEPT2"
./qconcept -a $CONCEPT2 0 'увеличивать (?что значение ?чего (=поле ?что иметь ?что имя ?какой Y), ?на-сколько 1).'
./qconcept -a $CONCEPT2 25 'устанавливать ?что значение (?чего (=поле ?что иметь ?что имя ?какой X), ?какой 1).'
./qconcept -c 5
CONCEPT1=`./qconcept -m`
./qsl2qsl -c "#$CONCEPT1 ?что быть ?чем процедура"
./qsl2qsl -c "#$CONCEPT1 ?что иметь ?что имя ?какой P2"
./qconcept -c 7
CONCEPT2=`./qconcept -m`
./qsl2qsl -c "#$CONCEPT1 ?что быть ?чем #$CONCEPT2"
./qconcept -a $CONCEPT2 0 'устанавливать ?что значение (?чего (=поле ?что иметь ?что имя ?какой X), ?какой 1).'
./qconcept -a $CONCEPT2 27 'устанавливать ?что значение (?чего (=поле ?что иметь ?что имя ?какой Y), ?какой 1).'
./qconcept -a $CONCEPT2 28 'удалять ?что событие (?на-что изменение, ?для-чего (=поле ?что иметь ?что имя ?какой X)).'
./qconcept -c 5
CONCEPT1=`./qconcept -m`
./qsl2qsl -c "#$CONCEPT1 ?что быть ?чем процедура"
./qsl2qsl -c "#$CONCEPT1 ?что иметь ?что имя ?какой P3"
./qconcept -c 7
CONCEPT2=`./qconcept -m`
./qsl2qsl -c "#$CONCEPT1 ?что быть ?чем #$CONCEPT2"
./qconcept -a $CONCEPT2 0 'печатать ?что значение ?какой "SET[".'
./qconcept -a $CONCEPT2 30 'печатать ?что значение ?чего (=поле ?что иметь ?что имя ?какой XL).'
./qconcept -a $CONCEPT2 31 'печатать ?что значение ?чего (=поле ?что иметь ?что имя ?какой Y).'
./qconcept -a $CONCEPT2 32 'печатать ?что значение ?какой "]\n".'
./qconcept -a $CONCEPT2 33 'печатать ?что значение ?какой "REFR[]\n".'
./qconcept -a $CONCEPT2 34 'увеличивать (?что значение ?чего (=поле ?что иметь ?что имя ?какой X), ?на-сколько 1).'