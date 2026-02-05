//
//  AddNoteDelegate.swift
//  StudyNotes
//
//  Created by Thomas  Bauer on 28.12.25.
//

import Foundation

// Dieses Protokoll definiert eine Delegate-Schnittstelle, über die
// eine neu erstellte Lern-Notiz an eine übergeordnete View gemeldet wird.
// Es wird verwendet, um nach dem Hinzufügen einer neuen Notiz
// abhängige Logik (z. B. Aktualisieren von Remindern oder UI-Elementen)
// auszulösen.

protocol AddNoteDelegate {
    func didAddNote(withReminder date: Date?)
}
