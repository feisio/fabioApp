//
//  ViewController.swift
//  DBS effects
//
//  Created by Fabio Laghi on 23.04.16.
//  Copyright © 2016 Fabio Laghi. All rights reserved.
//

import UIKit
import Foundation
import MessageUI

class ViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate, MFMailComposeViewControllerDelegate, UIPickerViewDataSource, UIPickerViewDelegate {
    
    // Patient ID and date.
    @IBOutlet weak var patientID: UITextField!
    @IBOutlet weak var date: UITextField!
    
    // Sliders.
    @IBOutlet weak var leftSlider: UISlider!
    @IBOutlet weak var rightSlider: UISlider!
    
    // Temp side effects label. Nascosto sotto textfield del PatientID.
    @IBOutlet weak var sideEffectsLabelTemp: UILabel!
    
    
    // Picker View
    @IBOutlet weak var effectsPicker: UIPickerView!
    let effectsPickerData = ["--","Rigor","Tremor","Bradykinesie","Sprache","Gangbild"]
    
    /*
    func updateLabel(){
        let sideEffect = effectsPickerData[effectsPicker.selectedRowInComponent(0)]
        sideEffectLabel.text = String(sideEffect)
    }
    */
    
    // Le 4 funzioni qui sotto servono per effectsPricker.
    //MARK: - Delegates and data sources
    //MARK: Data Sources
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return effectsPickerData.count
    }
    
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        sideEffectsLabelTemp.text = effectsPickerData[row]
    }
 
    
    //MARK: Delegates
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return effectsPickerData[row]
    }
    
    // Amplitude text field.
    @IBOutlet weak var amplitudeTextField: UITextField!
    
    // Anatomical direction labels.
    @IBOutlet weak var anatomicalDirection25: UILabel!
    @IBOutlet weak var anatomicalDirection36: UILabel!
    @IBOutlet weak var anatomicalDirection47: UILabel!
    @IBOutlet weak var anatomicalDirection1013: UILabel!
    @IBOutlet weak var anatomicalDirection1114: UILabel!
    @IBOutlet weak var anatomicalDirection1215: UILabel!
    
    // Side effects labels.
    @IBOutlet weak var sideEffectLabel1: UILabel!
    @IBOutlet weak var sideEffectLabel2: UILabel!
    @IBOutlet weak var sideEffectLabel3: UILabel!
    @IBOutlet weak var sideEffectLabel4: UILabel!
    @IBOutlet weak var sideEffectLabel5: UILabel!
    @IBOutlet weak var sideEffectLabel6: UILabel!
    @IBOutlet weak var sideEffectLabel7: UILabel!
    @IBOutlet weak var sideEffectLabel8: UILabel!
    @IBOutlet weak var sideEffectLabel9: UILabel!
    @IBOutlet weak var sideEffectLabel10: UILabel!
    @IBOutlet weak var sideEffectLabel11: UILabel!
    @IBOutlet weak var sideEffectLabel12: UILabel!
    @IBOutlet weak var sideEffectLabel13: UILabel!
    @IBOutlet weak var sideEffectLabel14: UILabel!
    @IBOutlet weak var sideEffectLabel15: UILabel!
    @IBOutlet weak var sideEffectLabel16: UILabel!
    
    // Amplitude of side effects labels.
    @IBOutlet weak var amplitudeLabel1: UILabel!
    @IBOutlet weak var amplitudeLabel2: UILabel!
    @IBOutlet weak var amplitudeLabel3: UILabel!
    @IBOutlet weak var amplitudeLabel4: UILabel!
    @IBOutlet weak var amplitudeLabel5: UILabel!
    @IBOutlet weak var amplitudeLabel6: UILabel!
    @IBOutlet weak var amplitudeLabel7: UILabel!
    @IBOutlet weak var amplitudeLabel8: UILabel!
    @IBOutlet weak var amplitudeLabel9: UILabel!
    @IBOutlet weak var amplitudeLabel10: UILabel!
    @IBOutlet weak var amplitudeLabel11: UILabel!
    @IBOutlet weak var amplitudeLabel12: UILabel!
    @IBOutlet weak var amplitudeLabel13: UILabel!
    @IBOutlet weak var amplitudeLabel14: UILabel!
    @IBOutlet weak var amplitudeLabel15: UILabel!
    @IBOutlet weak var amplitudeLabel16: UILabel!
    
    // Outlets dei bottoni direzionali. Servono per invocarli in un'altra funzione.
    @IBOutlet weak var buttonContact2: UIButton!
    @IBOutlet weak var buttonContact3: UIButton!
    @IBOutlet weak var buttonContact4: UIButton!
    @IBOutlet weak var buttonContact5: UIButton!
    @IBOutlet weak var buttonContact6: UIButton!
    @IBOutlet weak var buttonContact7: UIButton!
    @IBOutlet weak var buttonContact10: UIButton!
    @IBOutlet weak var buttonContact11: UIButton!
    @IBOutlet weak var buttonContact12: UIButton!
    @IBOutlet weak var buttonContact13: UIButton!
    @IBOutlet weak var buttonContact14: UIButton!
    @IBOutlet weak var buttonContact15: UIButton!
    
    // Variabili delle immagini degli effetti terapeutici.
    @IBOutlet weak var contact1: UIImageView!
    @IBOutlet weak var contact2: UIImageView!
    @IBOutlet weak var contact3: UIImageView!
    @IBOutlet weak var contact4: UIImageView!
    @IBOutlet weak var contact5: UIImageView!
    @IBOutlet weak var contact6: UIImageView!
    @IBOutlet weak var contact7: UIImageView!
    @IBOutlet weak var contact8: UIImageView!
    @IBOutlet weak var contact9: UIImageView!
    @IBOutlet weak var contact10: UIImageView!
    @IBOutlet weak var contact11: UIImageView!
    @IBOutlet weak var contact12: UIImageView!
    @IBOutlet weak var contact13: UIImageView!
    @IBOutlet weak var contact14: UIImageView!
    @IBOutlet weak var contact15: UIImageView!
    @IBOutlet weak var contact16: UIImageView!
    
    // Variabili delle immagini degli effetti collaterali.
    @IBOutlet weak var contact1b: UIImageView!
    @IBOutlet weak var contact2b: UIImageView!
    @IBOutlet weak var contact3b: UIImageView!
    @IBOutlet weak var contact4b: UIImageView!
    @IBOutlet weak var contact5b: UIImageView!
    @IBOutlet weak var contact6b: UIImageView!
    @IBOutlet weak var contact7b: UIImageView!
    @IBOutlet weak var contact8b: UIImageView!
    @IBOutlet weak var contact9b: UIImageView!
    @IBOutlet weak var contact10b: UIImageView!
    @IBOutlet weak var contact11b: UIImageView!
    @IBOutlet weak var contact12b: UIImageView!
    @IBOutlet weak var contact13b: UIImageView!
    @IBOutlet weak var contact14b: UIImageView!
    @IBOutlet weak var contact15b: UIImageView!
    @IBOutlet weak var contact16b: UIImageView!
    
    // Labels che non sono specifici di un contatto.
    var sumValuesTherEffectsLabel = UILabel(frame: CGRectMake(0,0,300,21))
    var sumValuesSideEffectsLabel = UILabel(frame: CGRectMake(0,0,300,21))
    var nameLabelContact = UILabel(frame: CGRectMake(0,0,200,21))
    
    // TextFields degli effetti terapeutici specifici di ogni contatto.
    var sumValuesTherEffectsContact1 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesTherEffectsContact2 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesTherEffectsContact3 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesTherEffectsContact4 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesTherEffectsContact5 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesTherEffectsContact6 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesTherEffectsContact7 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesTherEffectsContact8 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesTherEffectsContact9 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesTherEffectsContact10 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesTherEffectsContact11 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesTherEffectsContact12 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesTherEffectsContact13 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesTherEffectsContact14 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesTherEffectsContact15 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesTherEffectsContact16 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    
    // TextFields dei side effects specifici di ogni contatto.
    var sumValuesSideEffectsContact1 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesSideEffectsContact2 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesSideEffectsContact3 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesSideEffectsContact4 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesSideEffectsContact5 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesSideEffectsContact6 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesSideEffectsContact7 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesSideEffectsContact8 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesSideEffectsContact9 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesSideEffectsContact10 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesSideEffectsContact11 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesSideEffectsContact12 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesSideEffectsContact13 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesSideEffectsContact14 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesSideEffectsContact15 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    var sumValuesSideEffectsContact16 = UITextField(frame: CGRectMake(0, 0, 60, 25))
    
    // TextViews delle annotazioni specifiche di ogni contatto.
    var notesTextViewContact1 = UITextView(frame: CGRectMake(0,0,200,175))
    var notesTextViewContact2 = UITextView(frame: CGRectMake(0,0,200,175))
    var notesTextViewContact3 = UITextView(frame: CGRectMake(0,0,200,175))
    var notesTextViewContact4 = UITextView(frame: CGRectMake(0,0,200,175))
    var notesTextViewContact5 = UITextView(frame: CGRectMake(0,0,200,175))
    var notesTextViewContact6 = UITextView(frame: CGRectMake(0,0,200,175))
    var notesTextViewContact7 = UITextView(frame: CGRectMake(0,0,200,175))
    var notesTextViewContact8 = UITextView(frame: CGRectMake(0,0,200,175))
    var notesTextViewContact9 = UITextView(frame: CGRectMake(0,0,200,175))
    var notesTextViewContact10 = UITextView(frame: CGRectMake(0,0,200,175))
    var notesTextViewContact11 = UITextView(frame: CGRectMake(0,0,200,175))
    var notesTextViewContact12 = UITextView(frame: CGRectMake(0,0,200,175))
    var notesTextViewContact13 = UITextView(frame: CGRectMake(0,0,200,175))
    var notesTextViewContact14 = UITextView(frame: CGRectMake(0,0,200,175))
    var notesTextViewContact15 = UITextView(frame: CGRectMake(0,0,200,175))
    var notesTextViewContact16 = UITextView(frame: CGRectMake(0,0,200,175))
    
    // Inizializzare variabili.
    var sumTherValueContact1 = 0
    var sumTherValueContact2 = 0
    var sumTherValueContact3 = 0
    var sumTherValueContact4 = 0
    var sumTherValueContact5 = 0
    var sumTherValueContact6 = 0
    var sumTherValueContact7 = 0
    var sumTherValueContact8 = 0
    var sumTherValueContact9 = 0
    var sumTherValueContact10 = 0
    var sumTherValueContact11 = 0
    var sumTherValueContact12 = 0
    var sumTherValueContact13 = 0
    var sumTherValueContact14 = 0
    var sumTherValueContact15 = 0
    var sumTherValueContact16 = 0
    
    // Inizializzare variabili.
    var sumSideValueContact1 = 0
    var sumSideValueContact2 = 0
    var sumSideValueContact3 = 0
    var sumSideValueContact4 = 0
    var sumSideValueContact5 = 0
    var sumSideValueContact6 = 0
    var sumSideValueContact7 = 0
    var sumSideValueContact8 = 0
    var sumSideValueContact9 = 0
    var sumSideValueContact10 = 0
    var sumSideValueContact11 = 0
    var sumSideValueContact12 = 0
    var sumSideValueContact13 = 0
    var sumSideValueContact14 = 0
    var sumSideValueContact15 = 0
    var sumSideValueContact16 = 0
    
    // Costanti del nome nel label per i vari contatti.
    let labelContact1 = "Contact 1"
    let labelContact2 = "Contact 2"
    let labelContact3 = "Contact 3"
    let labelContact4 = "Contact 4"
    let labelContact5 = "Contact 5"
    let labelContact6 = "Contact 6"
    let labelContact7 = "Contact 7"
    let labelContact8 = "Contact 8"
    let labelContact9 = "Contact 9"
    let labelContact10 = "Contact 10"
    let labelContact11 = "Contact 11"
    let labelContact12 = "Contact 12"
    let labelContact13 = "Contact 13"
    let labelContact14 = "Contact 14"
    let labelContact15 = "Contact 15"
    let labelContact16 = "Contact 16"
    
    // Numero del contatto.
    let contactNumber1 = "1"
    let contactNumber2 = "2"
    let contactNumber3 = "3"
    let contactNumber4 = "4"
    let contactNumber5 = "5"
    let contactNumber6 = "6"
    let contactNumber7 = "7"
    let contactNumber8 = "8"
    let contactNumber9 = "9"
    let contactNumber10 = "10"
    let contactNumber11 = "11"
    let contactNumber12 = "12"
    let contactNumber13 = "13"
    let contactNumber14 = "14"
    let contactNumber15 = "15"
    let contactNumber16 = "16"
    
    // Costanti di numeri che sono invariati per tutti i contatti.
    let nameLabelContactCoordinateX = CGFloat(512)
    let nameLabelContactCoordinateY = CGFloat(40)
    let nameLabelContactFontSize = CGFloat(17)
    let sumValuesTherEffectsLabelCoordinateX = CGFloat(512)
    let sumValuesTherEffectsLabelCoordinateY = CGFloat(70)
    let sumValuesTherEffectsTextFieldCoordinateX = CGFloat(512)
    let sumValuesTherEffectsTextFieldCoordinateY = CGFloat(95)
    let sumValuesTherEffectsTextFieldFont = CGFloat(14)
    let sumValuesSideEffectsLabelCoordinateX = CGFloat(512)
    let sumValuesSideEffectsLabelCoordinateY = CGFloat(120)
    let sumValuesSideEffectsTextFieldCoordinateX = CGFloat(512)
    let sumValuesSideEffectsTextFieldCoordinateY = CGFloat(145)
    let sumValuesSideEffectsTextFieldFont = CGFloat(14)
    let notesTextViewCoordinateX = CGFloat(512)
    let notesTextViewCoordinateY = CGFloat(255)
    let notesTextViewFont = CGFloat(14)
    let valueGoodA = 1
    let valueGoodB = 2
    let valueGoodC = 3
    let valueGoodBigger = 300
    let valueBadA = 1
    let valueBadB = 2
    let valueBadC = 3
    let valueBadBigger = 300
    
    // Variabili con la direzione anatomica dei contatti direzionali.
    var directionContact2 = "medial"
    var directionContact3 = "antero-lateral"
    var directionContact4 = "postero-lateral"
    var directionContact5 = "medial"
    var directionContact6 = "antero-lateral"
    var directionContact7 = "postero-lateral"
    var directionContact10 = "medial"
    var directionContact11 = "postero-lateral"
    var directionContact12 = "antero-lateral"
    var directionContact13 = "medial"
    var directionContact14 = "postero-lateral"
    var directionContact15 = "antero-lateral"
    
    // Variabili per definire il colore UIColor usato per i textfields.
    let amountRed = CGFloat(0.8)
    let amountGreen = CGFloat(0.95)
    let amountBlue = CGFloat(1.0)
    let alphaChannel = CGFloat(1.0)
    
    // variabili per le funzioni di rotazione dei bottoni direzionali.
    // distanza fra centro del bottone direzionale e centro dell'immagine direzionale.
    var raggioRotazione = Float(30)
    let anteroLeftOffsetRotation = Float(M_PI/6)
    let anteroRightOffsetRotation = Float(-M_PI/6)
    let posteroLeftOffsetRotation = Float(5*M_PI/6)
    let posteroRightOffsetRotation = Float(-5*M_PI/6)
    
    // Funzioni che fanno ruotare e traslare un bottone seguendo un path circolare. Prendono come input il valore di uno slider e l'outlet di un bottone.
    func rotateButtonRight (sliderValueFloat: Float, buttonToRotateRight: UIButton){
        
        buttonToRotateRight.transform = CGAffineTransformRotate(CGAffineTransformMakeTranslation(CGFloat(raggioRotazione*cos(sliderValueFloat)-raggioRotazione), CGFloat(raggioRotazione*sin(sliderValueFloat))),CGFloat(sliderValueFloat))
    }
    
    func rotateButtonAnteroLeft (sliderValueFloat: Float, buttonToRotateAnteroLeft: UIButton){
        
        // Valori trovati con trial and error, non è matematica pura ma funziona. Non sono riuscito a trovare la formula.
        buttonToRotateAnteroLeft.transform = CGAffineTransformRotate(CGAffineTransformMakeTranslation(CGFloat(35*cos(sliderValueFloat-Float(2*M_PI/3))+15), CGFloat(35*sin(sliderValueFloat-Float(2*M_PI/3))+sqrt(3)*15)),CGFloat(sliderValueFloat-anteroLeftOffsetRotation))
    }
    
    func rotateButtonPosteroLeft (sliderValueFloat: Float, buttonToRotatePosteroLeft: UIButton){
        
        // Valori trovati con trial and error, non è matematica pura ma funziona. Non sono riuscito a trovare la formula.
        buttonToRotatePosteroLeft.transform = CGAffineTransformRotate(CGAffineTransformMakeTranslation(CGFloat(35*cos(sliderValueFloat-Float(4*M_PI/3))+15), CGFloat(35*sin(sliderValueFloat-Float(4*M_PI/3))-sqrt(3)*15)),CGFloat(sliderValueFloat-posteroLeftOffsetRotation))
    }
    
    func rotateButtonLeft (sliderValueFloat: Float, buttonToRotateLeft: UIButton){
        
        // Valori trovati con trial and error, non è matematica pura ma funziona. Non sono riuscito a trovare la formula.
        buttonToRotateLeft.transform = CGAffineTransformRotate(CGAffineTransformMakeTranslation(CGFloat(raggioRotazione*cos(sliderValueFloat-Float(M_PI))+raggioRotazione), CGFloat(raggioRotazione*sin(sliderValueFloat-Float(M_PI)))),CGFloat(sliderValueFloat))
    }
    
    func rotateButtonPosteroRight (sliderValueFloat: Float, buttonToRotatePosteroRight: UIButton){
        
        // Valori trovati con trial and error, non è matematica pura ma funziona. Non sono riuscito a trovare la formula.
        buttonToRotatePosteroRight.transform = CGAffineTransformRotate(CGAffineTransformMakeTranslation(CGFloat(35*cos(sliderValueFloat-Float(-M_PI/3))-15), CGFloat(35*sin(sliderValueFloat-Float(-M_PI/3))-sqrt(3)*15)),CGFloat(sliderValueFloat-posteroRightOffsetRotation))
    }
    
    func rotateButtonAnteroRight (sliderValueFloat: Float, buttonToRotateAnteroRight: UIButton){
        
        // Valori trovati con trial and error, non è matematica pura ma funziona. Non sono riuscito a trovare la formula.
        buttonToRotateAnteroRight.transform = CGAffineTransformRotate(CGAffineTransformMakeTranslation(CGFloat(35*cos(sliderValueFloat-Float(M_PI/3))-15), CGFloat(35*sin(sliderValueFloat-Float(M_PI/3))+sqrt(3)*15)),CGFloat(sliderValueFloat-anteroRightOffsetRotation))
    }
    
    // Azione che ruota i contatti direzionali del lead sinistro quando si tocca lo slider e assegna le direzioni anatomiche alle variabili per il file CSV.
    @IBAction func leftLeadRotation(sender: AnyObject) {
        
        // Ruota il bottone creato per un contatto direzionale, prende come input l'outlet del bottone creato in precedenza e il valore dello slider.
        rotateButtonRight(leftSlider.value, buttonToRotateRight: buttonContact2)
        rotateButtonAnteroLeft(leftSlider.value, buttonToRotateAnteroLeft: buttonContact3)
        rotateButtonPosteroLeft(leftSlider.value, buttonToRotatePosteroLeft: buttonContact4)
        rotateButtonRight(leftSlider.value, buttonToRotateRight: buttonContact5)
        rotateButtonAnteroLeft(leftSlider.value, buttonToRotateAnteroLeft: buttonContact6)
        rotateButtonPosteroLeft(leftSlider.value, buttonToRotatePosteroLeft: buttonContact7)
        
        let sliderLeftValue = CGFloat(leftSlider.value)
        contact2.transform = CGAffineTransformMakeRotation(sliderLeftValue)
        contact2b.transform = CGAffineTransformMakeRotation(sliderLeftValue)
        contact3.transform = CGAffineTransformMakeRotation(sliderLeftValue)
        contact3b.transform = CGAffineTransformMakeRotation(sliderLeftValue)
        contact4.transform = CGAffineTransformMakeRotation(sliderLeftValue)
        contact4b.transform = CGAffineTransformMakeRotation(sliderLeftValue)
        contact5.transform = CGAffineTransformMakeRotation(sliderLeftValue)
        contact5b.transform = CGAffineTransformMakeRotation(sliderLeftValue)
        contact6.transform = CGAffineTransformMakeRotation(sliderLeftValue)
        contact6b.transform = CGAffineTransformMakeRotation(sliderLeftValue)
        contact7.transform = CGAffineTransformMakeRotation(sliderLeftValue)
        contact7b.transform = CGAffineTransformMakeRotation(sliderLeftValue)
        
        if sliderLeftValue < 0.3925 && sliderLeftValue >= -0.3925{
            directionContact2 = "medial"
            directionContact5 = "medial"
            self.anatomicalDirection25.text = "Medial"
        }else if sliderLeftValue < 1.1775 && sliderLeftValue >= 0.3925{
            directionContact2 = "postero-medial"
            directionContact5 = "postero-medial"
            self.anatomicalDirection25.text = "Postero-medial"
        }else if sliderLeftValue < 1.9625 && sliderLeftValue >= 1.1775{
            directionContact2 = "posterior"
            directionContact5 = "posterior"
            self.anatomicalDirection25.text = "Posterior"
        }else if sliderLeftValue < 2.7475 && sliderLeftValue >= 1.9625{
            directionContact2 = "postero-lateral"
            directionContact5 = "postero-lateral"
            self.anatomicalDirection25.text = "Postero-lateral"
        }else if sliderLeftValue < 3.5325 && sliderLeftValue >= 2.7475{
            directionContact2 = "lateral"
            directionContact5 = "lateral"
            self.anatomicalDirection25.text = "Lateral"
        }else if sliderLeftValue > -1.1775 && sliderLeftValue <= -0.3925{
            directionContact2 = "antero-medial"
            directionContact5 = "antero-medial"
            self.anatomicalDirection25.text = "Antero-medial"
        }else if sliderLeftValue > -1.9625 && sliderLeftValue <= -1.1775{
            directionContact2 = "anterior"
            directionContact5 = "anterior"
            self.anatomicalDirection25.text = "Anterior"
        }else if sliderLeftValue > -2.7475 && sliderLeftValue <= -1.9625{
            directionContact2 = "antero-lateral"
            directionContact5 = "antero-lateral"
            self.anatomicalDirection25.text = "Antero-lateral"
        }else if sliderLeftValue > -3.5325 && sliderLeftValue <= -2.7475{
            directionContact2 = "lateral"
            directionContact5 = "lateral"
            self.anatomicalDirection25.text = "Lateral"
        }
        
        if sliderLeftValue < 0.1308 && sliderLeftValue >= -0.6542{
            directionContact3 = "antero-lateral"
            directionContact6 = "antero-lateral"
            self.anatomicalDirection36.text = "Antero-lateral"
        }else if sliderLeftValue < 0.9185 && sliderLeftValue >= 0.1308{
            directionContact3 = "anterior"
            directionContact6 = "anterior"
            self.anatomicalDirection36.text = "Anterior"
        }else if sliderLeftValue < 1.7008 && sliderLeftValue >= 0.9158{
            directionContact3 = "antero-medial"
            directionContact6 = "antero-medial"
            self.anatomicalDirection36.text = "Antero-medial"
        }else if sliderLeftValue < 2.4858 && sliderLeftValue >= 1.7008{
            directionContact3 = "medial"
            directionContact6 = "medial"
            self.anatomicalDirection36.text = "Medial"
        }else if sliderLeftValue < 3.2708 && sliderLeftValue >= 2.4858{
            directionContact3 = "postero-medial"
            directionContact6 = "postero-medial"
            self.anatomicalDirection36.text = "Postero-medial"
        }else if sliderLeftValue > -1.4392 && sliderLeftValue <= -0.6542{
            directionContact3 = "lateral"
            directionContact6 = "lateral"
            self.anatomicalDirection36.text = "Lateral"
        }else if sliderLeftValue > -2.2242 && sliderLeftValue <= -1.4392{
            directionContact3 = "postero-lateral"
            directionContact6 = "postero-lateral"
            self.anatomicalDirection36.text = "Postero-lateral"
        }else if sliderLeftValue > -3.0092 && sliderLeftValue <= -2.2242{
            directionContact3 = "posterior"
            directionContact6 = "posterior"
            self.anatomicalDirection36.text = "Posterior"
        }else if sliderLeftValue > -3.7942 && sliderLeftValue <= -3.0092{
            directionContact3 = "postero-medial"
            directionContact6 = "postero-medial"
            self.anatomicalDirection36.text = "Postero-medial"
        }
        
        if sliderLeftValue < 0.6542 && sliderLeftValue >= -0.1308{
            directionContact4 = "postero-lateral"
            directionContact7 = "postero-lateral"
            self.anatomicalDirection47.text = "Postero-lateral"
        }else if sliderLeftValue < -0.1308 && sliderLeftValue >= -0.9185{
            directionContact4 = "posterior"
            directionContact7 = "posterior"
            self.anatomicalDirection47.text = "Posterior"
        }else if sliderLeftValue < -0.9185 && sliderLeftValue >= -1.7008{
            directionContact4 = "postero-medial"
            directionContact7 = "postero-medial"
            self.anatomicalDirection47.text = "Postero-medial"
        }else if sliderLeftValue < -1.7008 && sliderLeftValue >= -2.4858{
            directionContact4 = "medial"
            directionContact7 = "medial"
            self.anatomicalDirection47.text = "Medial"
        }else if sliderLeftValue < -2.4858 && sliderLeftValue >= -3.2708{
            directionContact4 = "antero-medial"
            directionContact7 = "antero-medial"
            self.anatomicalDirection47.text = "Antero-medial"
        }else if sliderLeftValue > 0.6542 && sliderLeftValue <= 1.4392{
            directionContact4 = "lateral"
            directionContact7 = "lateral"
            self.anatomicalDirection47.text = "Lateral"
        }else if sliderLeftValue > 1.4392 && sliderLeftValue <= 2.2242{
            directionContact4 = "antero-lateral"
            directionContact7 = "antero-lateral"
            self.anatomicalDirection47.text = "Antero-lateral"
        }else if sliderLeftValue > 2.2242 && sliderLeftValue <= 3.0092{
            directionContact4 = "anterior"
            directionContact7 = "anterior"
            self.anatomicalDirection47.text = "Anterior"
        }else if sliderLeftValue > 3.0092 && sliderLeftValue <= 3.7942{
            directionContact4 = "antero-medial"
            directionContact7 = "antero-medial"
            self.anatomicalDirection47.text = "Antero-medial"
        }
    }
    
    // Azione che ruota i contatti direzionali del lead destro quando si tocca lo slider e assegna le direzioni anatomiche alle variabili per il file CSV.
    @IBAction func rightLeadRotation(sender: AnyObject) {
        
        rotateButtonLeft(rightSlider.value, buttonToRotateLeft: buttonContact10)
        rotateButtonPosteroRight(rightSlider.value, buttonToRotatePosteroRight: buttonContact11)
        rotateButtonAnteroRight(rightSlider.value, buttonToRotateAnteroRight: buttonContact12)
        rotateButtonLeft(rightSlider.value, buttonToRotateLeft: buttonContact13)
        rotateButtonPosteroRight(rightSlider.value, buttonToRotatePosteroRight: buttonContact14)
        rotateButtonAnteroRight(rightSlider.value, buttonToRotateAnteroRight: buttonContact15)
        
        let sliderRightValue = CGFloat(rightSlider.value)
        contact10.transform = CGAffineTransformMakeRotation(sliderRightValue)
        contact10b.transform = CGAffineTransformMakeRotation(sliderRightValue)
        contact11.transform = CGAffineTransformMakeRotation(sliderRightValue)
        contact11b.transform = CGAffineTransformMakeRotation(sliderRightValue)
        contact12.transform = CGAffineTransformMakeRotation(sliderRightValue)
        contact12b.transform = CGAffineTransformMakeRotation(sliderRightValue)
        contact13.transform = CGAffineTransformMakeRotation(sliderRightValue)
        contact13b.transform = CGAffineTransformMakeRotation(sliderRightValue)
        contact14.transform = CGAffineTransformMakeRotation(sliderRightValue)
        contact14b.transform = CGAffineTransformMakeRotation(sliderRightValue)
        contact15.transform = CGAffineTransformMakeRotation(sliderRightValue)
        contact15b.transform = CGAffineTransformMakeRotation(sliderRightValue)
        
        if sliderRightValue < 0.3925 && sliderRightValue > -0.3925{
            directionContact10 = "medial"
            directionContact13 = "medial"
            self.anatomicalDirection1013.text = "Medial"
        }else if sliderRightValue < 1.1775 && sliderRightValue >= 0.3925{
            directionContact10 = "antero-medial"
            directionContact13 = "antero-medial"
            self.anatomicalDirection1013.text = "Antero-medial"
        }else if sliderRightValue < 1.9625 && sliderRightValue >= 1.1775{
            directionContact10 = "anterior"
            directionContact13 = "anterior"
            self.anatomicalDirection1013.text = "Anterior"
        }else if sliderRightValue < 2.7475 && sliderRightValue >= 1.9625{
            directionContact10 = "antero-lateral"
            directionContact13 = "antero-lateral"
            self.anatomicalDirection1013.text = "Antero-lateral"
        }else if sliderRightValue < 3.5325 && sliderRightValue >= 2.7475{
            directionContact10 = "lateral"
            directionContact13 = "lateral"
            self.anatomicalDirection1013.text = "Lateral"
        }else if sliderRightValue > -1.1775 && sliderRightValue <= -0.3925{
            directionContact10 = "postero-medial"
            directionContact13 = "postero-medial"
            self.anatomicalDirection1013.text = "Postero-medial"
        }else if sliderRightValue > -1.9625 && sliderRightValue <= -1.1775{
            directionContact10 = "posterior"
            directionContact13 = "posterior"
            self.anatomicalDirection1013.text = "Posterior"
        }else if sliderRightValue > -2.7475 && sliderRightValue <= -1.9625{
            directionContact10 = "postero-lateral"
            directionContact13 = "postero-lateral"
            self.anatomicalDirection1013.text = "Postero-lateral"
        }else if sliderRightValue > -3.5325 && sliderRightValue <= -2.7475{
            directionContact10 = "lateral"
            directionContact13 = "lateral"
            self.anatomicalDirection1013.text = "Lateral"
        }
        
        if sliderRightValue < 0.1308 && sliderRightValue >= -0.6542{
            directionContact11 = "postero-lateral"
            directionContact14 = "postero-lateral"
            self.anatomicalDirection1114.text = "Postero-lateral"
        }else if sliderRightValue < 0.9185 && sliderRightValue >= 0.1308{
            directionContact11 = "posterior"
            directionContact14 = "posterior"
            self.anatomicalDirection1114.text = "Posterior"
        }else if sliderRightValue < 1.7008 && sliderRightValue >= 0.9158{
            directionContact11 = "postero-medial"
            directionContact14 = "postero-medial"
            self.anatomicalDirection1114.text = "Postero-medial"
        }else if sliderRightValue < 2.4858 && sliderRightValue >= 1.7008{
            directionContact11 = "medial"
            directionContact14 = "medial"
            self.anatomicalDirection1114.text = "Medial"
        }else if sliderRightValue < 3.2708 && sliderRightValue >= 2.4858{
            directionContact11 = "antero-medial"
            directionContact14 = "antero-medial"
            self.anatomicalDirection1114.text = "Antero-medial"
        }else if sliderRightValue > -1.4392 && sliderRightValue <= -0.6542{
            directionContact11 = "lateral"
            directionContact14 = "lateral"
            self.anatomicalDirection1114.text = "Lateral"
        }else if sliderRightValue > -2.2242 && sliderRightValue <= -1.4392{
            directionContact11 = "antero-lateral"
            directionContact14 = "antero-lateral"
            self.anatomicalDirection1114.text = "Antero-lateral"
        }else if sliderRightValue > -3.0092 && sliderRightValue <= -2.2242{
            directionContact11 = "anterior"
            directionContact14 = "anterior"
            self.anatomicalDirection1114.text = "Anterior"
        }else if sliderRightValue > -3.7942 && sliderRightValue <= -3.0092{
            directionContact11 = "antero-medial"
            directionContact14 = "antero-medial"
            self.anatomicalDirection1114.text = "Antero-medial"
        }
        
        if sliderRightValue < 0.6542 && sliderRightValue >= -0.1308{
            directionContact12 = "antero-lateral"
            directionContact15 = "antero-lateral"
            self.anatomicalDirection1215.text = "Antero-lateral"
        }else if sliderRightValue < -0.1308 && sliderRightValue >= -0.9185{
            directionContact12 = "anterior"
            directionContact15 = "anterior"
            self.anatomicalDirection1215.text = "Anterior"
        }else if sliderRightValue < -0.9185 && sliderRightValue >= -1.7008{
            directionContact12 = "antero-medial"
            directionContact15 = "antero-medial"
            self.anatomicalDirection1215.text = "Antero-medial"
        }else if sliderRightValue < -1.7008 && sliderRightValue >= -2.4858{
            directionContact12 = "medial"
            directionContact15 = "medial"
            self.anatomicalDirection1215.text = "Medial"
        }else if sliderRightValue < -2.4858 && sliderRightValue >= -3.2708{
            directionContact12 = "postero-medial"
            directionContact15 = "postero-medial"
            self.anatomicalDirection1215.text = "Postero-medial"
        }else if sliderRightValue > 0.6542 && sliderRightValue <= 1.4392{
            directionContact12 = "lateral"
            directionContact15 = "lateral"
            self.anatomicalDirection1215.text = "Lateral"
        }else if sliderRightValue > 1.4392 && sliderRightValue <= 2.2242{
            directionContact12 = "postero-lateral"
            directionContact15 = "postero-lateral"
            self.anatomicalDirection1215.text = "Postero-lateral"
        }else if sliderRightValue > 2.2242 && sliderRightValue <= 3.0092{
            directionContact12 = "posterior"
            directionContact15 = "posterior"
            self.anatomicalDirection1215.text = "Posterior"
        }else if sliderRightValue > 3.0092 && sliderRightValue <= 3.7942{
            directionContact12 = "postero-medial"
            directionContact15 = "postero-medial"
            self.anatomicalDirection1215.text = "Postero-medial"
        }
    }
    
    // Azione per creare un file .csv e mandarlo per email.
    @IBAction func buttonSave(sender: AnyObject) {
        
        // Definire il contenuto del file CSV.
        let fileContent = NSString(string:"\(patientID.text!),\(date.text!)\nContact,Lost points in UPDRS III,Gained points in UPDRS III,Side Effect,Amplitude [mA],Notes,Anatomical Direction\nContact 1,\(sumValuesTherEffectsContact1.text!),\(sumValuesSideEffectsContact1.text!),\(sideEffectLabel1.text!),\(amplitudeLabel1.text!),\(notesTextViewContact1.text!)\nContact 2,\(sumValuesTherEffectsContact2.text!),\(sumValuesSideEffectsContact2.text!),\(sideEffectLabel2.text!),\(amplitudeLabel2.text!),\(notesTextViewContact2.text!),\(directionContact2)\nContact 3,\(sumValuesTherEffectsContact3.text!),\(sumValuesSideEffectsContact3.text!),\(sideEffectLabel3.text!),\(amplitudeLabel3.text!),\(notesTextViewContact3.text!),\(directionContact3)\nContact 4,\(sumValuesTherEffectsContact4.text!),\(sumValuesSideEffectsContact4.text!),\(sideEffectLabel4.text!),\(amplitudeLabel4.text!),\(notesTextViewContact4.text!),\(directionContact4)\nContact 5,\(sumValuesTherEffectsContact5.text!),\(sumValuesSideEffectsContact5.text!),\(sideEffectLabel5.text!),\(amplitudeLabel5.text!),\(notesTextViewContact5.text!),\(directionContact5)\nContact 6,\(sumValuesTherEffectsContact6.text!),\(sumValuesSideEffectsContact6.text!),\(sideEffectLabel6.text!),\(amplitudeLabel6.text!),\(notesTextViewContact6.text!),\(directionContact6)\nContact 7,\(sumValuesTherEffectsContact7.text!),\(sumValuesSideEffectsContact7.text!),\(sideEffectLabel7.text!),\(amplitudeLabel7.text!),\(notesTextViewContact7.text!),\(directionContact7)\nContact 8,\(sumValuesTherEffectsContact8.text!),\(sumValuesSideEffectsContact8.text!),\(sideEffectLabel8.text!),\(amplitudeLabel8.text!),\(notesTextViewContact8.text!)\nContact 9,\(sumValuesTherEffectsContact9.text!),\(sumValuesSideEffectsContact9.text!),\(sideEffectLabel9.text!),\(amplitudeLabel9.text!),\(notesTextViewContact9.text!)\nContact 10,\(sumValuesTherEffectsContact10.text!),\(sumValuesSideEffectsContact10.text!),\(sideEffectLabel10.text!),\(amplitudeLabel10.text!),\(notesTextViewContact10.text!),\(directionContact10)\nContact 11,\(sumValuesTherEffectsContact11.text!),\(sumValuesSideEffectsContact11.text!),\(sideEffectLabel11.text!),\(amplitudeLabel11.text!),\(notesTextViewContact11.text!),\(directionContact11)\nContact 12,\(sumValuesTherEffectsContact12.text!),\(sumValuesSideEffectsContact12.text!),\(sideEffectLabel12.text!),\(amplitudeLabel12.text!),\(notesTextViewContact12.text!),\(directionContact12)\nContact 13,\(sumValuesTherEffectsContact13.text!),\(sumValuesSideEffectsContact13.text!),\(sideEffectLabel13.text!),\(amplitudeLabel13.text!),\(notesTextViewContact13.text!),\(directionContact13)\nContact 14,\(sumValuesTherEffectsContact14.text!),\(sumValuesSideEffectsContact14.text!),\(sideEffectLabel14.text!),\(amplitudeLabel14.text!),\(notesTextViewContact14.text!),\(directionContact14)\nContact 15,\(sumValuesTherEffectsContact15.text!),\(sumValuesSideEffectsContact15.text!),\(sideEffectLabel15.text!),\(amplitudeLabel15.text!),\(notesTextViewContact15.text!),\(directionContact15)\nContact 16,\(sumValuesTherEffectsContact16.text!),\(sumValuesSideEffectsContact16.text!),\(sideEffectLabel16.text!),\(amplitudeLabel16.text!),\(notesTextViewContact16.text!)")
        
        // Salvare il file CSV in una cartella locale. Codice commentato qui sotto.
        
        /*
        let pathRoot = "/Users/Fabio/Desktop/patients/"
        let patientName = "Cognome_Nome"
        let patientPath = NSURL.fileURLWithPath("\(pathRoot)\(patientName)")
        let fileName = "Cognome_Nome_1.csv"
        
        do {
            try NSFileManager.defaultManager().createDirectoryAtPath(patientPath.path!, withIntermediateDirectories: true, attributes: nil)
        } catch let error as NSError {
            NSLog("Unable to create directory \(error.debugDescription)")
        }
        
        let filemgr = NSFileManager.defaultManager()
        if filemgr.fileExistsAtPath(String(patientPath)) {
            print("File exists")
            do {
                let readFile = try String(contentsOfFile: String(patientPath), encoding: NSUTF8StringEncoding)
                print("\(readFile)")
                // the above prints "some text"
            } catch let error as NSError {
                print("Error: \(error)")
            }
        } else {
            print("File does not exist")
            do {
                try fileContent.writeToFile(String("\(pathRoot)\(patientName)/\(fileName)"), atomically: true, encoding: NSUTF8StringEncoding)
            } catch let error as NSError {
                print("Error: \(error)")
            }
        }
        */
        
        // Creare lo screenshot.
        UIGraphicsBeginImageContextWithOptions(UIScreen.mainScreen().bounds.size, false, 0)
        view.layer.renderInContext(UIGraphicsGetCurrentContext()!)
        let screenShot = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        // Inviare il file .csv e lo screenshot per email.
        
        // Generating the email controller.
        
        if !MFMailComposeViewController.canSendMail() {
            print("Mail services are not available")
            return
        }
        
        let composeVC = MFMailComposeViewController()
        composeVC.mailComposeDelegate = self
        
        // Configure the fields of the interface.
        //composeVC.setToRecipients(["address@example.com"])
        composeVC.setSubject("DBS stimulation report")
        composeVC.setMessageBody("Attached you can find a CSV file containing details about the effects of the stimulation.\nPatient: \(patientID.text!)\nDate: \(date.text!)", isHTML: false)
        
        // Allega il file CSV.
        // Convertire da NSString a NSData per poter allegare.
        let fileContentData = fileContent.dataUsingEncoding(NSUTF8StringEncoding)
        
        composeVC.addAttachmentData(fileContentData!, mimeType: "text/csv", fileName: "\(patientID.text!) \(date.text!).csv")
        
        // Allega screenshot. Compressione 1 è la qualità massima.
        // Nuova variabile nel formato NSData al posto di UIImage!.
        let screenShotData = UIImageJPEGRepresentation(screenShot!, 1)
        
        composeVC.addAttachmentData(screenShotData!, mimeType: "image/jpeg", fileName: "\(patientID.text!) \(date.text!).jpeg")
        
        // Present the view controller modally. Fa apparire il pop-up della mail.
        self.presentViewController(composeVC, animated: true, completion: nil)
        
    }
    
    // Chiude il pop-up della mail quando si invia o si vuole chiudere.
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    // Funzione generale di quello che deve succedere quando premi un contatto.
    func contactPressed (contact: UIImageView, contactB: UIImageView, labelContact: String, contactNumber: String, sumTherValueContact: Int, sumSideValueContact: Int, sumValuesTherEffectsContact: UITextField, sumValuesSideEffectsContact: UITextField, notesTextViewContact: UITextView, sideEffectLabel: UILabel, amplitude: UILabel) {
        
        // Crea il textfield per la somma dei valori persi.
        sumValuesTherEffectsContact.center = CGPointMake(sumValuesTherEffectsTextFieldCoordinateX,sumValuesTherEffectsTextFieldCoordinateY)
        sumValuesTherEffectsContact.placeholder = "Total"
        sumValuesTherEffectsContact.font = UIFont.systemFontOfSize(sumValuesTherEffectsTextFieldFont)
        sumValuesTherEffectsContact.borderStyle = UITextBorderStyle.RoundedRect
        sumValuesTherEffectsContact.backgroundColor = UIColor(red:amountRed, green:amountGreen, blue:amountBlue, alpha:alphaChannel)
        sumValuesTherEffectsContact.autocorrectionType = UITextAutocorrectionType.No
        sumValuesTherEffectsContact.keyboardType = UIKeyboardType.Default
        sumValuesTherEffectsContact.returnKeyType = UIReturnKeyType.Done
        sumValuesTherEffectsContact.clearButtonMode = UITextFieldViewMode.WhileEditing;
        sumValuesTherEffectsContact.contentVerticalAlignment = UIControlContentVerticalAlignment.Center
        sumValuesTherEffectsContact.delegate = self
        self.view.addSubview(sumValuesTherEffectsContact)
        
        // Crea il textfield della somma dei valori aumentati.
        sumValuesSideEffectsContact.center = CGPointMake(sumValuesSideEffectsTextFieldCoordinateX,sumValuesSideEffectsTextFieldCoordinateY)
        sumValuesSideEffectsContact.placeholder = "Total"
        sumValuesSideEffectsContact.font = UIFont.systemFontOfSize(sumValuesSideEffectsTextFieldFont)
        sumValuesSideEffectsContact.borderStyle = UITextBorderStyle.RoundedRect
        sumValuesSideEffectsContact.backgroundColor = UIColor(red:amountRed, green:amountGreen, blue:amountBlue, alpha:alphaChannel)
        sumValuesSideEffectsContact.autocorrectionType = UITextAutocorrectionType.No
        sumValuesSideEffectsContact.keyboardType = UIKeyboardType.Default
        sumValuesSideEffectsContact.returnKeyType = UIReturnKeyType.Done
        sumValuesSideEffectsContact.clearButtonMode = UITextFieldViewMode.WhileEditing;
        sumValuesSideEffectsContact.contentVerticalAlignment = UIControlContentVerticalAlignment.Center
        sumValuesSideEffectsContact.delegate = self
        self.view.addSubview(sumValuesSideEffectsContact)
        
        // Prende il valore nel primo textfield e cambia l'immagine terapeutica.
        let sumTherValueContact = Int(sumValuesTherEffectsContact.text!)
        
        if sumTherValueContact == valueGoodA {
            contact.image = UIImage(named:"contact\(contactNumber)_good1")
        }else if sumTherValueContact == valueGoodB {
            contact.image = UIImage(named:"contact\(contactNumber)_good2")
        }else if sumTherValueContact == valueGoodC {
            contact.image = UIImage(named:"contact\(contactNumber)_good3")
        }else if sumTherValueContact > valueGoodC && sumTherValueContact < valueGoodBigger {
            contact.image = UIImage(named:"contact\(contactNumber)_good4")
        }else{
            contact.image = UIImage(named:"contact\(contactNumber)_good0")
        }
        
        // Prende il valore nel secondo textfield e cambia l'immagine side effect.
        let sumSideValueContact = Int(sumValuesSideEffectsContact.text!)
        
        if sumSideValueContact == valueBadA {
            contactB.image = UIImage(named:"contact\(contactNumber)_bad1")
        }else if sumSideValueContact == valueBadB {
            contactB.image = UIImage(named:"contact\(contactNumber)_bad2")
        }else if sumSideValueContact == valueBadC {
            contactB.image = UIImage(named:"contact\(contactNumber)_bad3")
        }else if sumSideValueContact > valueBadC && sumSideValueContact < valueBadBigger {
            contactB.image = UIImage(named:"contact\(contactNumber)_bad4")
        }else{
            contactB.image = UIImage(named:"contact\(contactNumber)_bad0")
        }
        
        // Cambia il nome dell'elettrodo selezionato in alto.
        nameLabelContact.center = CGPointMake(nameLabelContactCoordinateX,nameLabelContactCoordinateY)
        nameLabelContact.textAlignment = NSTextAlignment.Center
        nameLabelContact.text = labelContact
        nameLabelContact.font = UIFont.boldSystemFontOfSize(nameLabelContactFontSize)
        self.view.addSubview(nameLabelContact)
        
        // Crea il label della somma dei valori persi (benefits).
        sumValuesTherEffectsLabel.center = CGPointMake(sumValuesTherEffectsLabelCoordinateX,sumValuesTherEffectsLabelCoordinateY)
        sumValuesTherEffectsLabel.textAlignment = NSTextAlignment.Center
        sumValuesTherEffectsLabel.text = "Points lost in UPDRS III"
        self.view.addSubview(sumValuesTherEffectsLabel)
        
        // Crea il label della somma dei valori guadagnati (side effects).
        sumValuesSideEffectsLabel.center = CGPointMake(sumValuesSideEffectsLabelCoordinateX,sumValuesSideEffectsLabelCoordinateY)
        sumValuesSideEffectsLabel.textAlignment = NSTextAlignment.Center
        sumValuesSideEffectsLabel.text = "Points gained in UPDRS III"
        self.view.addSubview(sumValuesSideEffectsLabel)
        
        // Crea la textview per prendere note, descrivere il range di intensità e altro.
        notesTextViewContact.center = CGPointMake(notesTextViewCoordinateX,notesTextViewCoordinateY)
        notesTextViewContact.font = UIFont.systemFontOfSize(notesTextViewFont)
        notesTextViewContact.backgroundColor = UIColor(red:amountRed, green:amountGreen, blue:amountBlue, alpha:alphaChannel)
        notesTextViewContact.autocorrectionType = UITextAutocorrectionType.No
        notesTextViewContact.keyboardType = UIKeyboardType.Default
        notesTextViewContact.returnKeyType = UIReturnKeyType.Done
        notesTextViewContact.delegate = self
        self.view.addSubview(notesTextViewContact)
        
        // Assegno i valori del PickerView e della amplitude.
        
        
        
        sideEffectLabel.text = sideEffectsLabelTemp.text

        
        
        amplitude.text = amplitudeTextField.text
    }

    // Azione chiamata quando schiacci sul contatto 1.
    @IBAction func buttonContact1(sender: AnyObject) {
        
        contactPressed(contact1, contactB: contact1b, labelContact: labelContact1, contactNumber: contactNumber1, sumTherValueContact: sumTherValueContact1, sumSideValueContact: sumSideValueContact1, sumValuesTherEffectsContact: sumValuesTherEffectsContact1, sumValuesSideEffectsContact: sumValuesSideEffectsContact1, notesTextViewContact: notesTextViewContact1, sideEffectLabel: sideEffectLabel1, amplitude: amplitudeLabel1)
    }
    
    // Azione chiamata quando schiacci sul contatto 2.
    @IBAction func buttonContact2(sender: AnyObject) {
        
        contactPressed(contact2, contactB: contact2b, labelContact: labelContact2, contactNumber: contactNumber2, sumTherValueContact: sumTherValueContact2, sumSideValueContact: sumSideValueContact2, sumValuesTherEffectsContact: sumValuesTherEffectsContact2, sumValuesSideEffectsContact: sumValuesSideEffectsContact2, notesTextViewContact: notesTextViewContact2, sideEffectLabel: sideEffectLabel2, amplitude: amplitudeLabel2)
    }
    
    // Azione chiamata quando schiacci sul contatto 3.
    @IBAction func buttonContact3(sender: AnyObject) {
        
        contactPressed(contact3, contactB: contact3b, labelContact: labelContact3, contactNumber: contactNumber3, sumTherValueContact: sumTherValueContact3, sumSideValueContact: sumSideValueContact3, sumValuesTherEffectsContact: sumValuesTherEffectsContact3, sumValuesSideEffectsContact: sumValuesSideEffectsContact3, notesTextViewContact: notesTextViewContact3, sideEffectLabel: sideEffectLabel3, amplitude: amplitudeLabel3)
    }
    
    // Azione chiamata quando schiacci sul contatto 4.
    @IBAction func buttonContact4(sender: AnyObject) {
        
        contactPressed(contact4, contactB: contact4b, labelContact: labelContact4, contactNumber: contactNumber4, sumTherValueContact: sumTherValueContact4, sumSideValueContact: sumSideValueContact4, sumValuesTherEffectsContact: sumValuesTherEffectsContact4, sumValuesSideEffectsContact: sumValuesSideEffectsContact4, notesTextViewContact: notesTextViewContact4, sideEffectLabel: sideEffectLabel4, amplitude: amplitudeLabel4)
    }
    
    // Azione chiamata quando schiacci sul contatto 5.
    @IBAction func buttonContact5(sender: AnyObject) {
        
        contactPressed(contact5, contactB: contact5b, labelContact: labelContact5, contactNumber: contactNumber5, sumTherValueContact: sumTherValueContact5, sumSideValueContact: sumSideValueContact5, sumValuesTherEffectsContact: sumValuesTherEffectsContact5, sumValuesSideEffectsContact: sumValuesSideEffectsContact5, notesTextViewContact: notesTextViewContact5, sideEffectLabel: sideEffectLabel5, amplitude: amplitudeLabel5)
    }
    
    // Azione chiamata quando schiacci sul contatto 6.
    @IBAction func buttonContact6(sender: AnyObject) {
        
        contactPressed(contact6, contactB: contact6b, labelContact: labelContact6, contactNumber: contactNumber6, sumTherValueContact: sumTherValueContact6, sumSideValueContact: sumSideValueContact6, sumValuesTherEffectsContact: sumValuesTherEffectsContact6, sumValuesSideEffectsContact: sumValuesSideEffectsContact6, notesTextViewContact: notesTextViewContact6, sideEffectLabel: sideEffectLabel6, amplitude: amplitudeLabel6)
    }
    
    // Azione chiamata quando schiacci sul contatto 7.
    @IBAction func buttonContact7(sender: AnyObject) {
        
        contactPressed(contact7, contactB: contact7b, labelContact: labelContact7, contactNumber: contactNumber7, sumTherValueContact: sumTherValueContact7, sumSideValueContact: sumSideValueContact7, sumValuesTherEffectsContact: sumValuesTherEffectsContact7, sumValuesSideEffectsContact: sumValuesSideEffectsContact7, notesTextViewContact: notesTextViewContact7, sideEffectLabel: sideEffectLabel7, amplitude: amplitudeLabel7)
    }
    
    // Azione chiamata quando schiacci sul contatto 8.
    @IBAction func buttonContact8(sender: AnyObject) {
        
        contactPressed(contact8, contactB: contact8b, labelContact: labelContact8, contactNumber: contactNumber8, sumTherValueContact: sumTherValueContact8, sumSideValueContact: sumSideValueContact8, sumValuesTherEffectsContact: sumValuesTherEffectsContact8, sumValuesSideEffectsContact: sumValuesSideEffectsContact8, notesTextViewContact: notesTextViewContact8, sideEffectLabel: sideEffectLabel8, amplitude: amplitudeLabel8)
    }
    
    // Azione chiamata quando schiacci sul contatto 9.
    @IBAction func buttonContact9(sender: AnyObject) {
        
        contactPressed(contact9, contactB: contact9b, labelContact: labelContact9, contactNumber: contactNumber9, sumTherValueContact: sumTherValueContact9, sumSideValueContact: sumSideValueContact9, sumValuesTherEffectsContact: sumValuesTherEffectsContact9, sumValuesSideEffectsContact: sumValuesSideEffectsContact9, notesTextViewContact: notesTextViewContact9, sideEffectLabel: sideEffectLabel9, amplitude: amplitudeLabel9)
    }
    
    // Azione chiamata quando schiacci sul contatto 10.
    @IBAction func buttonContact10(sender: AnyObject) {
        
       contactPressed(contact10, contactB: contact10b, labelContact: labelContact10, contactNumber: contactNumber10, sumTherValueContact: sumTherValueContact10, sumSideValueContact: sumSideValueContact10, sumValuesTherEffectsContact: sumValuesTherEffectsContact10, sumValuesSideEffectsContact: sumValuesSideEffectsContact10, notesTextViewContact: notesTextViewContact10, sideEffectLabel: sideEffectLabel10, amplitude: amplitudeLabel10)
    }
    
    // Azione chiamata quando schiacci sul contatto 11.
    @IBAction func buttonContact11(sender: AnyObject) {
        
        contactPressed(contact11, contactB: contact11b, labelContact: labelContact11, contactNumber: contactNumber11, sumTherValueContact: sumTherValueContact11, sumSideValueContact: sumSideValueContact9, sumValuesTherEffectsContact: sumValuesTherEffectsContact11, sumValuesSideEffectsContact: sumValuesSideEffectsContact11, notesTextViewContact: notesTextViewContact11, sideEffectLabel: sideEffectLabel11, amplitude: amplitudeLabel11)
    }
    
    // Azione chiamata quando schiacci sul contatto 12.
    @IBAction func buttonContact12(sender: AnyObject) {
        
        contactPressed(contact12, contactB: contact12b, labelContact: labelContact12, contactNumber: contactNumber12, sumTherValueContact: sumTherValueContact12, sumSideValueContact: sumSideValueContact12, sumValuesTherEffectsContact: sumValuesTherEffectsContact12, sumValuesSideEffectsContact: sumValuesSideEffectsContact12, notesTextViewContact: notesTextViewContact12, sideEffectLabel: sideEffectLabel12, amplitude: amplitudeLabel12)
    }
    
    // Azione chiamata quando schiacci sul contatto 13.
    @IBAction func buttonContact13(sender: AnyObject) {
        
        contactPressed(contact13, contactB: contact13b, labelContact: labelContact13, contactNumber: contactNumber13, sumTherValueContact: sumTherValueContact13, sumSideValueContact: sumSideValueContact13, sumValuesTherEffectsContact: sumValuesTherEffectsContact13, sumValuesSideEffectsContact: sumValuesSideEffectsContact13, notesTextViewContact: notesTextViewContact13, sideEffectLabel: sideEffectLabel13, amplitude: amplitudeLabel13)
    }
    
    // Azione chiamata quando schiacci sul contatto 14.
    @IBAction func buttonContact14(sender: AnyObject) {
        
        contactPressed(contact14, contactB: contact14b, labelContact: labelContact14, contactNumber: contactNumber14, sumTherValueContact: sumTherValueContact14, sumSideValueContact: sumSideValueContact14, sumValuesTherEffectsContact: sumValuesTherEffectsContact14, sumValuesSideEffectsContact: sumValuesSideEffectsContact14, notesTextViewContact: notesTextViewContact14, sideEffectLabel: sideEffectLabel14, amplitude: amplitudeLabel14)
    }
    
    // Azione chiamata quando schiacci sul contatto 15.
    @IBAction func buttonContact15(sender: AnyObject) {
        
       contactPressed(contact15, contactB: contact15b, labelContact: labelContact15, contactNumber: contactNumber15, sumTherValueContact: sumTherValueContact15, sumSideValueContact: sumSideValueContact15, sumValuesTherEffectsContact: sumValuesTherEffectsContact15, sumValuesSideEffectsContact: sumValuesSideEffectsContact15, notesTextViewContact: notesTextViewContact15, sideEffectLabel: sideEffectLabel15, amplitude: amplitudeLabel15)
    }
    
    // Azione chiamata quando schiacci sul contatto 16.
    @IBAction func buttonContact16(sender: AnyObject) {
        
        contactPressed(contact16, contactB: contact16b, labelContact: labelContact16, contactNumber: contactNumber16, sumTherValueContact: sumTherValueContact16, sumSideValueContact: sumSideValueContact16, sumValuesTherEffectsContact: sumValuesTherEffectsContact16, sumValuesSideEffectsContact: sumValuesSideEffectsContact16, notesTextViewContact: notesTextViewContact16, sideEffectLabel: sideEffectLabel16, amplitude: amplitudeLabel16)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        effectsPicker.dataSource = self
        effectsPicker.delegate = self

        // Fa sparire la tastiera dal TextField quando premi "finish".
        
        self.patientID.delegate = self;
        self.date.delegate = self;
        
        self.amplitudeTextField.delegate = self;
        
        self.sumValuesTherEffectsContact1.delegate = self;
        self.sumValuesTherEffectsContact2.delegate = self;
        self.sumValuesTherEffectsContact3.delegate = self;
        self.sumValuesTherEffectsContact4.delegate = self;
        self.sumValuesTherEffectsContact5.delegate = self;
        self.sumValuesTherEffectsContact6.delegate = self;
        self.sumValuesTherEffectsContact7.delegate = self;
        self.sumValuesTherEffectsContact8.delegate = self;
        self.sumValuesTherEffectsContact9.delegate = self;
        self.sumValuesTherEffectsContact10.delegate = self;
        self.sumValuesTherEffectsContact11.delegate = self;
        self.sumValuesTherEffectsContact12.delegate = self;
        self.sumValuesTherEffectsContact13.delegate = self;
        self.sumValuesTherEffectsContact14.delegate = self;
        self.sumValuesTherEffectsContact15.delegate = self;
        self.sumValuesTherEffectsContact16.delegate = self;
        
        self.sumValuesSideEffectsContact1.delegate = self;
        self.sumValuesSideEffectsContact2.delegate = self;
        self.sumValuesSideEffectsContact3.delegate = self;
        self.sumValuesSideEffectsContact4.delegate = self;
        self.sumValuesSideEffectsContact5.delegate = self;
        self.sumValuesSideEffectsContact6.delegate = self;
        self.sumValuesSideEffectsContact7.delegate = self;
        self.sumValuesSideEffectsContact8.delegate = self;
        self.sumValuesSideEffectsContact9.delegate = self;
        self.sumValuesSideEffectsContact10.delegate = self;
        self.sumValuesSideEffectsContact11.delegate = self;
        self.sumValuesSideEffectsContact12.delegate = self;
        self.sumValuesSideEffectsContact13.delegate = self;
        self.sumValuesSideEffectsContact14.delegate = self;
        self.sumValuesSideEffectsContact15.delegate = self;
        self.sumValuesSideEffectsContact16.delegate = self;
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //dismiss keyboard after typing in text field.
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
}

