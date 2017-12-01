import React, {Component} from 'react'
import Indexlisting from '../components/indexlisting'

export default class ApartmentIndex extends Component{
  constructor(props) {
    super(props)
    this.state = {
      listings: this.props.listings
    }
  }


  render(){
    var listings = this.state.listings.map(function(el) {
      return(
        <tr key={el.id}>
          <td>{el.address}</td>
          <td> {el.city}</td>
          <td>{el.state}</td>
          <td>{el.contact_info}</td>
          <td><a href={"/listings/" + el.id} className={"tablelink"}>Show</a></td>
          <td><a href={"/listings/" + el.id + "/edit"} className={"tablelink"}>Edit</a></td>
          <td><a data-confirm="Are you sure you want to permanently destory this item?" href={"/listings/" + el.id} className={"tablelink"} data-method="delete">Destroy</a></td>
        </tr>
      )
    })
    return(
      <div id={"index"}>

        <h1>Apartment Listings</h1>
        <table>
          <thead>
            <tr>
              <th>Address</th>
              <th>City</th>
              <th>State</th>
              <th>Contact Info</th>
              <th colSpan="3"></th>
            </tr>
          </thead>
          <tbody>
              {listings}
          </tbody>
        </table>
        <br />
          <div id = "new">
        <a href="/listings/new" id={"mainlink"}>New Listing</a>
          </div>
      </div>
    )
  }
}
