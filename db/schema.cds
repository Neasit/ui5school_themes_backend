using { Currency, managed, sap } from '@sap/cds/common';
namespace sapui5school.themes;

entity Themes : managed {
    key ID : Integer;
    title: localized String(80);
    owner: localized String(50);
    description: localized String(100);
    status: localized String(20);
    creation_date: DateTime;
    event: Association to one Events;
}

entity Events : managed {
    key ID : Integer;
    title : localized String(100);
    description : localized String(255);
    status : localized String(20);
    date : DateTime;
    themes : Association to many Themes on themes.event = $self;
    participants : Association to many Participants on participants.event = $self;
}

entity Participants : managed {
    key ID : Integer;
    name : localized String(100);
    role : localized String(50);
    event : Association to one Events;
}
