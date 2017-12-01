import React, { Component } from 'react'

class Indexlisting extends Component {
  constructor(props){
    super(props)
    this.state = {
      apartment: {
        address: this.props.address,
        city: this.props.city,
        state: this.props.state,
        contact_info: this.props.contact_info
      }
    }
  }
  render() {
    return (
      <div>
        <td>{this.state.apartment.address}</td>
        <td>{this.state.apartment.city}</td>
        <td>{this.state.apartment.state}</td>
        <td>{this.state.apartment.contact_info}</td>
      </div>
    )
  }
}
export default Indexlisting
