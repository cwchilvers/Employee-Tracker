const app = require('express').Router();  

// Handlers
const viewEmployees_handler = require('../handlers/viewEmployees_handler');
const addEmployee_handler = require('../handlers/addEmployee_handler');
const updateEmployee_handler = require('../handlers/updateEmployee_handler');

// View all employees
app.get('/employees', (req, res) => {
    viewEmployees_handler(req, res);
});

// Add employee
app.post('/add-employee', (req, res) => {
    addEmployee_handler(req, res);
});

// Update employee role
app.post('/update-employee', (req, res) => {
    updateEmployee_handler(req, res);
});

// View all roles
app.get('/roles', (req, res) => {
    viewAllRoles(req, res);
});

// Add role
app.post('/add-role', (req, res) => {
    addRole(req, res);
});

// View all departments
app.get('/departments', (req, res) => {
    viewAllDepartments(req, res);
});

// Add department
app.post('/add-department', (req, res) => {
    addDepartment(req, res);
});

module.exports = app;