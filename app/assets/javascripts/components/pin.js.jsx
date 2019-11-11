Pin = React.createClass({

  getInitialState: function(){
    return {
        is_pined: false
    };
  },

  ajaxMain: function(){
    console.log("Hello World!");
  },
  
  render: function(){
    return (
      <button onClick={this.ajaxMain}>ぴん!</button>
    );
  }
});