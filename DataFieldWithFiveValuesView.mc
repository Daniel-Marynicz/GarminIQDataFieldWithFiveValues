using Toybox.WatchUi;
using Toybox.Graphics;

class DataFieldWithFiveValuesView extends WatchUi.DataField {

    protected var labelValue;
    protected var mainValue;
    protected var topLeftValue;
    protected var topRightValue;
    protected var bottomLeftValue;
    protected var bottomRightValue;

    function initialize() {
        DataField.initialize();
        labelValue = "";
    	mainValue = "";
    	topLeftValue = "";
    	topRightValue = "";
    	bottomLeftValue = "";
    	bottomRightValue = "";
    }

    // Set your layout here. Anytime the size of obscurity of
    // the draw context is changed this will be called.
    function onLayout(dc) {
		var width = dc.getWidth();
		var height = dc.getHeight();

		switch (true) {
			// edge 1030  1 Field Layout
			// edge 1030 plus 1 Field Layout
			// edge 1030 bontrager 1 Field Layout
			case (width >= 282 && height >= 470):
				View.setLayout(Rez.Layouts.HugeLayout1Field(dc));
				View.findDrawableById("debug").setText("HugeLayout1Field" + " "  + width + "x" + height);
			// edge 830 1 Field Layout
			// edge 530 1 Field Layout
			// edge explore 240x400 1 Field Layout
			case (width >= 240 && height >= 322):
				View.setLayout(Rez.Layouts.LargeLayout1Field(dc));
				View.findDrawableById("debug").setText("LargeLayout1Field" + " "  + width + "x" + height);
			break;
			// edge 820 explore 200x264 1 Field Layout
			case (width >= 200 && height >= 264):
				View.setLayout(Rez.Layouts.MediumLayout1Field(dc));
				View.findDrawableById("debug").setText("MediumLayout1Field" + " "  + width + "x" + height);
				break;
				
			// edge 1030 2 Field Layout
			// edge 1030 plus 2 Field Layout
			// edge 1030 bontrager 2 Field Layout
			// 282x234
			case (width >= 282 && height >= 234):
				View.setLayout(Rez.Layouts.HugeLayout2Field(dc));
				View.findDrawableById("debug").setText("HugeLayout2Field" + " "  + width + "x" + height);
				break;
			
			// edge explore 240x199 2 Field Layout
			case (width >= 240 && height >= 199):
				View.setLayout(Rez.Layouts.LargeLayout2Field(dc));
				View.findDrawableById("debug").setText("LargeLayout2Field" + " "  + width + "x" + height);
				break;
			// edge 830 2 Field Layout 246x160
			// edge 530 2 Field Layout 246x160
			case (width >= 240 && height >= 160):
				View.setLayout(Rez.Layouts.MediumLayout2Field(dc));
				View.findDrawableById("debug").setText("MediumLayout2Field" + " "  + width + "x" + height);
				break;
			// edge 1030 3 Field Layout
			// edge 1030 plus 3 Field Layout
			// edge 1030 bontrager 3 Field Wide Layout
			// 282x155
			case (width >=282 && height >= 154):
				View.setLayout(Rez.Layouts.HugeWideLayout3Field(dc));
				View.findDrawableById("debug").setText("HugeWideLayout3Field" + " "  + width + "x" + height);
				break;
			
			// edge explore 240x132 3 Field Wide Layout
			case (width >=240 && height >= 132):
				View.setLayout(Rez.Layouts.MediumWideLayout3Field(dc));
				View.findDrawableById("debug").setText("MediumWideLayout3Field" + " "  + width + "x" + height);
				break;
			
			// edge 830 240x105 3 Field Layout 
			// edge 530 240x105 3 Field Layout 
			case (width >=240 && height >= 104):
				View.setLayout(Rez.Layouts.SmallWideLayout3Field(dc));
				View.findDrawableById("debug").setText("SmallWideLayout3Field" + " "  + width + "x" + height);
				break;
			// edge 1030  5 Field Layout
			// edge 1030 plus 5 Field Layout
			// edge 1030 bontrager 5 Field Layout
			case (width >= 282 && height >= 92):
				View.setLayout(Rez.Layouts.HugeWideLayout5Field(dc));
				View.findDrawableById("debug").setText("HugeWideLayout5Field" + " "  + width + "x" + height);
				break;
			// edge explore 78 5 Field Wide Layout
			case (width >=240 && height >= 78):
				View.setLayout(Rez.Layouts.MediumWideLayout5Field(dc));
				View.findDrawableById("debug").setText("MediumWideLayout5Field" + " "  + width + "x" + height);
				break;
			// edge 830 240x52 5 Field Layout 
			// edge 530 240x52 5 Field Layout
			case (width >=240 && height >= 52):
				View.setLayout(Rez.Layouts.SmallWideLayout5Field(dc));
				View.findDrawableById("debug").setText("SmallWideLayout5Field" + " "  + width + "x" + height);
				break;
			// egdge 1030 10 Field Layout
			// edge 1030 plus 10 Field Layout
			// edge 1030 bontrager 10 Field Layout
			case (width >=140 && height >= 92):
				View.setLayout(Rez.Layouts.HugeLayout10Field(dc));
				View.findDrawableById("debug").setText("HugeLayout10Field" + " "  + width + "x" + height);
				break; 
			// edge explore 119x78 10 Field Layout
			case (width >=119 && height >= 78):
				View.setLayout(Rez.Layouts.MediumLayout10Field(dc));
				View.findDrawableById("debug").setText("MediumLayout10Field" + " "  + width + "x" + height);
				break; 
			// edge 830 122x62 10 Field Layout 
			// edge 530 122x62 10 Field Layout
			case (width >=122 && height >= 62):
				View.setLayout(Rez.Layouts.SmallLayout10Field(dc));
				View.findDrawableById("debug").setText("SmallLayout10Field" + " "  + width + "x" + height);
				break; 
			default:
				View.setLayout(Rez.Layouts.SmallLayout10Field(dc));
				View.findDrawableById("debug").setText("SmallLayout10Field " + " "  + width + "x" + height);
			break;
			
		}
        
        View.findDrawableById("label").setText(self.labelValue);
        return true;
    }

    // The given info object contains all the current workout information.
    // Calculate a value and save it locally in this method.
    // Note that compute() and onUpdate() are asynchronous, and there is no
    // guarantee that compute() will be called before onUpdate().
    function compute(info) {
        // See Activity.Info in the documentation for available information.
//        if(info has :currentHeartRate){
//            if(info.currentHeartRate != null){
//                mValue = info.currentHeartRate;
//            } else {
//                mValue = 0.0f;
//            }
//        }
//        var labelView = View.findDrawableById("label");
        //mValue = labelView.locY; 
    }
    

    function onUpdate(dc) {
    	setColors();
    	setValues();

	    View.onUpdate(dc);
    }
    
    function setValues()
	{
		View.findDrawableById("left_top_value").setText(topLeftValue);
		View.findDrawableById("right_top_value").setText(topRightValue);
		View.findDrawableById("left_bottom_value").setText(bottomLeftValue);
		View.findDrawableById("right_bottom_value").setText(bottomRightValue);
		View.findDrawableById("value").setText(mainValue);
	}

    function setColors()
    {
    	View.findDrawableById("Background").setColor(getBackgroundColor());
    	View.findDrawableById("debug").setColor(getBackgroundColor());
        if (getBackgroundColor() == Graphics.COLOR_BLACK) {
            View.findDrawableById("value").setColor(Graphics.COLOR_WHITE);
            View.findDrawableById("label").setColor(Graphics.COLOR_WHITE);
            View.findDrawableById("left_top_value").setColor(Graphics.COLOR_WHITE);
			View.findDrawableById("right_top_value").setColor(Graphics.COLOR_WHITE);
			View.findDrawableById("left_bottom_value").setColor(Graphics.COLOR_WHITE);
			View.findDrawableById("right_bottom_value").setColor(Graphics.COLOR_WHITE);
            
            
        } else {
    		View.findDrawableById("value").setColor(Graphics.COLOR_BLACK);
        	View.findDrawableById("label").setColor(Graphics.COLOR_BLACK);
        	View.findDrawableById("left_top_value").setColor(Graphics.COLOR_BLACK);
			View.findDrawableById("right_top_value").setColor(Graphics.COLOR_BLACK);
			View.findDrawableById("left_bottom_value").setColor(Graphics.COLOR_BLACK);
			View.findDrawableById("right_bottom_value").setColor(Graphics.COLOR_BLACK);
        }
    }
}

