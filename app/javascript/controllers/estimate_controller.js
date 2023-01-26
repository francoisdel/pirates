import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "start_date", "end_date", "estimated_price" ]

  connect() {
    this.start_dateTarget.addEventListener("change", () => this.updatePrice())
    this.end_dateTarget.addEventListener("change", () => this.updatePrice())
  }

  updatePrice() {
    let start_date = this.start_dateTarget.value
    let end_date = this.end_dateTarget.value
    let price = calculate_price(start_date, end_date, this.data.get("price"))
    this.estimated_priceTarget.innerHTML = `Estimated Price: ${price}`
  }
}
