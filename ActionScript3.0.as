/// Example of a ActionScript program Syntax Highlighting.

package {
   import flash.text.TextField;
   import flash.display.MovieClip;
   import flash.filters.DropShadowFilter;
   public class HelloWorld extends MovieClip {
      public function HelloWorld() {
         var shad:DropShadowFilter = new DropShadowFilter(2, 45, 0x000000, 25, 3, 3, 2, 2);
         var txt:TextField = new TextField();
         txt.textColor = 0xFFFFFF;
         txt.filters = [shad];
         txt.width = 120;
         txt.x = Math.random()*300;
         txt.y = Math.random()*300;
         txt.selectable = false;
         txt.text = "Hello World! ["+Math.round(txt.x)+","+Math.round(txt.y)+"]";
         addChild(txt);
      }
   }
}
//-----ActionScript3.0-----------------
//as3.0最重要的概念就是在效能方面的增進，平時所加入的任何事件都可以被監聽或從記憶體中移除
//以下例子就是監聽與移除記憶體占用，這是as3.0最重要的基礎概念

bt1.addEventListener(MouseEvent.CLICK,bt1_click);

function bt1_click(e:MouseEvent):void{
//觸發的事件內容;
}

//該按紐監聽不需要時則remove掉，增加效能
bt1.removeEventListener(MouseEvent.CLICK,bt1_click);
