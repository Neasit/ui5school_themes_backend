using { sapui5school.themes as my } from '../db/schema';

service ThemesService @(path:'/themes') {

  entity Themes as projection on my.Themes;
  entity Events as projection on my.Events;
  entity Participants as projection on my.Participants;
}