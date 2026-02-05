//
//  Note+CoreDataProperties.swift
//  StudyNotes
//
//  Created by Thomas  Bauer on 18.12.25.
//
//

public import Foundation
public import CoreData


public typealias NoteCoreDataPropertiesSet = NSSet

extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var createdAt: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var imagesData: NSArray?
    @NSManaged public var reminderDate: Date?
    @NSManaged public var text: String?
    @NSManaged public var title: String?
    @NSManaged public var isDone: Bool
    @NSManaged public var learnStatus: String?

}

extension Note : Identifiable {

}
