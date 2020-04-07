class RenameSschoolClassesToSchoolClasses < ActiveRecord::Migration
    def change
      rename_table :sschool_classes, :school_classes
    end 
  end