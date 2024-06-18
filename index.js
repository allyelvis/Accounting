document.addEventListener('DOMContentLoaded', () => {
    const transactions = [
        { date: '2024-05-28', description: 'Sale #1', amount: '$100', status: 'Completed' },
        { date: '2024-05-27', description: 'Sale #2', amount: '$150', status: 'Pending' },
        // More transactions...
    ];

    const transactionTable = document.querySelector('#transactions tbody');
    transactions.forEach(transaction => {
        const row = document.createElement('tr');
        Object.values(transaction).forEach(text => {
            const cell = document.createElement('td');
            cell.textContent = text;
            row.appendChild(cell);
        });
        transactionTable.appendChild(row);
    });
});