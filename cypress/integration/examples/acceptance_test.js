describe('Acceptance Test', function () {
  beforeEach(function () {
    
  })

  it('Visits the main page', function () {
    cy.visit('http://localhost:5000')
  })

  it('Make a payment', function () {
    cy.get('input#payment_name').type('Lonestar Elixir')
    cy.get('input#payment_account').type('4111111111111111')
    cy.get('input#payment_postal').type('78704')
    cy.get('input#payment_cvv').type('123')
    cy.get('input#payment_amount').type('1111')
    cy.get('select#payment_exp_year').select('2025')
    cy.get('select#payment_exp_month').select('10')
    cy.get('[type=submit]').click()
    cy.contains('Payment Successful')
  })
})