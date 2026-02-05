//
//  NotificationsDelegate.swift
//  StudyNotes
//
//  Created by Thomas  Bauer on 01.01.26.
//

import Foundation
import UserNotifications

// Diese Klasse fungiert als Delegate für das Notification-System
// und wird benötigt, um Benachrichtigungen auch im Vordergrund
// der App anzuzeigen. Zusätzlich verarbeitet sie Benutzerinteraktionen
// mit Notifications, wie das Auswählen von Aktionen (z. B. Akzeptieren oder Ablehnen).

class NotificationsDelegate: NSObject, UNUserNotificationCenterDelegate {

    func userNotificationCenter(
        _ center: UNUserNotificationCenter,
        willPresent notification: UNNotification,
        withCompletionHandler completionHandler:
            @escaping (UNNotificationPresentationOptions) -> Void
    ) {
        completionHandler([.badge, .alert, .sound])
    }

    func userNotificationCenter(
        _ center: UNUserNotificationCenter,
        didReceive response: UNNotificationResponse,
        withCompletionHandler completionHandler: @escaping () -> Void
    ) {

        switch response.actionIdentifier {
        case "ACCEPT_ACTION":
            print("Accepted")
        case "DECLINE_ACTION":
            print("Declined")
        default:
            break
        }
        completionHandler()
    }
}
