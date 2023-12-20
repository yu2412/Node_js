'use strict'


let todo = document.querySelector('#todo');

const push=document.querySelector('#push');
push.addEventListener('click', funClick,false);


function funClick(event){
    
    event.preventDefault();

    console.log(this.id);

    let yotei = document.querySelector('#yotei');
    let date = document.querySelector('#date');

// ----------------------------
// 追加する要素を作成します
// ----------------------------
    const newElement = document.createElement("span"); // 要素作成
    $(newElement).addClass('btn');

    const ol = document.querySelector('ol');
    const btn = document.createElement('button');


    $(btn).on('click',(event) => {
   
        event.preventDefault();
        const $this = $(event.currentTarget);

        console.log($this.closest());//);
        $(event.currentTarget).parent().remove();

    });



    const hr = document.createElement('hr');
    console.log(typeof(date.value));
    const dtim=date.value.toString('MMMM dS, yyyy');
    console.log(dtim);

    let newtxt1 = document.createTextNode('[予定]：'+yotei.value+' [日付]：'+dtim); // テキストノードを作成
    newElement.appendChild(newtxt1); // span要素にテキストノードを追加
    newElement.appendChild(btn);
    newElement.appendChild(hr);

    let newtext2 = document.createTextNode('完了'); // テキストノードを作成
    btn.appendChild(newtext2); // span要素にテキストノードを追加


    ol.appendChild(newElement);


}


