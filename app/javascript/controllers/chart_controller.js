import { Controller } from "@hotwired/stimulus"
import Chart from 'chart.js/auto'

// Connects to data-controller="chart"
export default class extends Controller {
  static values = {
    sales: Object
  }
  connect() {
    const chartContainer = this.element;
    console.log("sales Value",this.salesValue)
    const data = this.salesValue;

    (async function() {
      new Chart(
        chartContainer,
        {
          type: 'bar',
          data: {
            labels: Object.keys(data),
            datasets: [
              {
                label: 'Sales by product',
                data: Object.values(data)
              }
            ]
          }
        }
      );
    })();
  }
}
