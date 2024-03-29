import { Controller } from "@hotwired/stimulus"
import Chart from 'chart.js/auto'

// Connects to data-controller="chart"
export default class extends Controller {
  static values = {
    date: Array,
    total: Array
  }
  connect() {
    let months = [];
    console.log(this.dateValue)
    console.log(this.totalValue)

    const data = [];
    this.dateValue.forEach((date, index) => {
      data.push({ date: date, value: this.totalValue[index]})
    });
    const chartContainer = this.element;

    (async function() {
      new Chart(
        chartContainer,
        {
          type: 'bar',
          data: {
            labels: data.map(row => row.date),
            datasets: [
              {
                label: 'Acquisitions by Month',
                data: data.map(row => row.value)
              }
            ]
          }
        }
      );
    })();
  }
}
