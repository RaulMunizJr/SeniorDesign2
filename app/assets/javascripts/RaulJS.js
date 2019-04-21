/*My Custom JS file*/
var mydragg = function(){
                return {
                    move : function(divid,xpos,ypos){
                        divid.style.left = xpos + 'px';
                        divid.style.top = ypos + 'px';
                    },
                    startMoving : function(divid,linezone,evt){
                        evt = evt || window.event;
                        var posX = evt.clientX,
                            posY = evt.clientY,
                        divTop = divid.style.top,
                        divLeft = divid.style.left,
                        eWi = parseInt(divid.style.width),
                        eHe = parseInt(divid.style.height),
                        cWi = parseInt(document.getElementById(linezone).style.width),
                        cHe = parseInt(document.getElementById(linezone).style.height);
                        document.getElementById(linezone).style.cursor='move';
                        divTop = divTop.replace('px','');
                        divLeft = divLeft.replace('px','');
                        var diffX = posX - divLeft,
                            diffY = posY - divTop;
                        document.onmousemove = function(evt){
                            evt = evt || window.event;
                            var posX = evt.clientX,
                                posY = evt.clientY,
                                aX = posX - diffX,
                                aY = posY - diffY;
                                if (aX < 0) aX = 0;
                                if (aY < 0) aY = 0;
                                if (aX + eWi > cWi) aX = cWi - eWi;
                                if (aY + eHe > cHe) aY = cHe -eHe;
                            mydragg.move(divid,aX,aY);
                        }
                    },
                    stopMoving : function(linezone){
                        var a = document.createElement('script');
                        document.getElementById(linezone).style.cursor='default';
                        document.onmousemove = function(){}
                    },
                }
            }();
