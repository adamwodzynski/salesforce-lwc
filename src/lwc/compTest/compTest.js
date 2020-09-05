import { LightningElement, track } from 'lwc';

export default class CompTest extends LightningElement {
    
   @track number = 0;
    @track input = '';
    @track visibility;
    handleClick(){
        this.number += 1;
        console.log('button is clicked');
        if (this.number > 5){
            this.visibility = true;
        }
        else {
            this.visibility = false;
        }
    }
    handleInputChange(event){
        console.log('## event', event);
    console.log(' input ' , event.target.value);
    }

}