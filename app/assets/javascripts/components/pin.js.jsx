var Pin = React.createClass({

  ajaxMain: function(){
    console.log("Hello World!");
  },
  
  render: function(){
    return (
      <button onClick={this.ajaxMain}>ぴん!</button>
    );
  }
});